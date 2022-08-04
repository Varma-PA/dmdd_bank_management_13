GO
CREATE PROCEDURE 
MakeTransactionFromAccountToAccount(@SourceAccountID INT, @BeneficiaryAccountID INT, @Amount MONEY, @TransactionType INT,@ServiceID INT)
AS
BEGIN

    DECLARE @AccountBalance MONEY;
    DECLARE @SourceAccountExists INT;
    DECLARE @DestinationAccountExists INT;
    DECLARE @ExistingAmount MONEY;

    SELECT @SourceAccountExists = COUNT(AccountID) FROM Account WHERE AccountID = @SourceAccountID;

    SELECT @DestinationAccountExists = COUNT(AccountID) FROM Account WHERE AccountID = @BeneficiaryAccountID;

    IF @SourceAccountExists = 1 AND @DestinationAccountExists = 1

        BEGIN

        SELECT @AccountBalance = Balance FROM Account WHERE AccountID = @SourceAccountID;

        PRINT @Amount
        PRINT @AccountBalance
        
        IF @TransactionType = 3 OR 
        @TransactionType = 4 OR 
        @TransactionType = 6 OR 
        @AccountBalance >= @Amount 
            BEGIN

            BEGIN TRY;

            BEGIN TRANSACTION;

            IF @TransactionType=1      
                
                INSERT INTO dbo.TransactionTable 
                (AccountID, BeneficiaryAccountID, PaymentDate, TransactionAmount,TransactionTypeID) 
                VALUES (@SourceAccountID, @BeneficiaryAccountID, getDate(), @Amount,@TransactionType);

       
            ELSE IF @TransactionType=2 
                BEGIN
                    INSERT INTO dbo.TransactionTable 
                    (AccountID, BeneficiaryAccountID, InsuranceID, PaymentDate, TransactionAmount,TransactionTypeID) 
                    VALUES (@SourceAccountID,@BeneficiaryAccountID,@ServiceID, getDate(), @Amount,@TransactionType);

                    SELECT @ExistingAmount = InsurancePayment FROM Insurance WHERE InsuranceID = @ServiceID

                    UPDATE dbo.Insurance SET InsurancePayment = @ExistingAmount + @Amount, RecentInsurancePaymentDate=getDate()
                    WHERE InsuranceID = @ServiceID
                END
            ELSE IF @TransactionType=3
                BEGIN
                    INSERT INTO dbo.TransactionTable 
                    (AccountID,BeneficiaryAccountID, InsuranceID, PaymentDate, TransactionAmount,TransactionTypeID) 
                    VALUES (@SourceAccountID, @BeneficiaryAccountID,@ServiceID, getDate(), @Amount,@TransactionType);

                    SELECT @ExistingAmount = InsurancePayment FROM Insurance WHERE InsuranceID = @ServiceID

                    UPDATE dbo.Insurance SET RecentClaimDate = getDate(), InsuranceClaimed = @ExistingAmount + @Amount
                    WHERE InsuranceID = @ServiceID
                END
            ELSE IF @TransactionType=4 
                BEGIN
                    INSERT INTO dbo.TransactionTable 
                    (AccountID,BeneficiaryAccountID, LoanID, PaymentDate, TransactionAmount,TransactionTypeID) 
                    VALUES (@SourceAccountID, @BeneficiaryAccountID, @ServiceID, getDate(), @Amount,@TransactionType);

                    SELECT @ExistingAmount = LoanDisbursed FROM Loan WHERE LoanID = @ServiceID

                    UPDATE dbo.Loan SET LoanDisbursed = @ExistingAmount + @Amount, RecentDisbursementDate=getDate()
                    WHERE LoanID = @ServiceID
                END

            ELSE IF @TransactionType=5
                BEGIN

                    INSERT INTO dbo.TransactionTable 
                    (AccountID,BeneficiaryAccountID, LoanID, PaymentDate, TransactionAmount,TransactionTypeID) 
                    VALUES (@SourceAccountID,@BeneficiaryAccountID, @ServiceID, getDate(), @Amount,@TransactionType);


                    SELECT @ExistingAmount = LoanPaid FROM Loan WHERE LoanID = @ServiceID

                    UPDATE dbo.Loan SET LoanPaid = @ExistingAmount + @Amount, RecentPaymentDate = getDate()
                    WHERE LoanID = @ServiceID
                END


            ELSE IF @TransactionType=6

                BEGIN
                    INSERT INTO dbo.TransactionTable (AccountID, BeneficiaryAccountID, CardID, PaymentDate, TransactionAmount,TransactionTypeID) 
                    VALUES (@SourceAccountID,@BeneficiaryAccountID, @ServiceID, getDate(), @Amount,@TransactionType);

                    SELECT @ExistingAmount = Balance FROM Card WHERE CardID = @ServiceID

                    IF @ExistingAmount >= @Amount
                        BEGIN 
                            Update dbo.Card SET BALANCE = @ExistingAmount - @Amount WHERE CardID = @ServiceID
                        END

                    ELSE 
                        BEGIN
                            PRINT 'Insufficient Funds in the card'
                        END


                END



            ELSE IF @TransactionType=7

                BEGIN

                    INSERT INTO dbo.TransactionTable (AccountID, BeneficiaryAccountID, CardID, PaymentDate, TransactionAmount,TransactionTypeID) 
                    VALUES (@SourceAccountID, @BeneficiaryAccountID, @ServiceID, getDate(), @Amount,@TransactionType);


                    SELECT @ExistingAmount = Balance FROM Card WHERE CardID = @ServiceID

                    Update dbo.Card SET Balance = @ExistingAmount + @Amount WHERE CardID = @ServiceID 

                END

            ELSE 
                PRINT 'Invalid Transaction Attempt';

            PRINT 'Completed Account Transfer';

            COMMIT TRANSACTION;

            END TRY
            BEGIN CATCH
                PRINT 'Account transfer failed, please try again later'

   
                IF XACT_STATE() <> 0
                BEGIN
                ROLLBACK TRANSACTION;
                END;

            END CATCH

            END

        ELSE
            BEGIN
                PRINT 'Insufficient Funds';
            END
    -- PRINT "Successfully completed the transaction to Beneficiary Account";
        END
    ELSE
        PRINT 'Invalid Account ID'

END
GO

--DROP PROC MakeTransactionFromAccountToAccount;


CREATE PROCEDURE 
PerformTransactions(@SrcAccount INT, @BeneAccount INT, @ServiceID INT ,@Amount MONEY, @TransactionType INT)
AS
BEGIN
    IF @TransactionType=1
        EXEC MakeTransactionFromAccountToAccount @SourceAccountID=@SrcAccount,@BeneficiaryAccountID=@BeneAccount,@ServiceID=0, @Amount=@Amount, @TransactionType=@TransactionType
    ELSE IF @TransactionType=2
        EXEC MakeTransactionFromAccountToAccount @SourceAccountID=@SrcAccount, @BeneficiaryAccountID=0000000001, @ServiceID=@ServiceID, @Amount=@Amount, @TransactionType=@TransactionType;
    ELSE IF @TransactionType=3
        EXEC MakeTransactionFromAccountToAccount @SourceAccountID=0000000001, @BeneficiaryAccountID=@SrcAccount, @ServiceID=@ServiceID, @Amount=@Amount, @TransactionType=@TransactionType;
    ELSE IF @TransactionType=4
        EXEC MakeTransactionFromAccountToAccount @SourceAccountID=0000000001, @BeneficiaryAccountID=@SrcAccount, @ServiceID=@ServiceID, @Amount=@Amount, @TransactionType=@TransactionType;
    ELSE IF @TransactionType=5
        EXEC MakeTransactionFromAccountToAccount @SourceAccountID=@SrcAccount, @BeneficiaryAccountID=0000000001, @ServiceID=@ServiceID, @Amount=@Amount, @TransactionType=@TransactionType;
    ELSE IF @TransactionType=6
        EXEC MakeTransactionFromAccountToAccount @SourceAccountID=@SrcAccount, @BeneficiaryAccountID=0000000001, @ServiceID=@ServiceID, @Amount=@Amount, @TransactionType=@TransactionType;
    ELSE IF @TransactionType=7
        EXEC MakeTransactionFromAccountToAccount @SourceAccountID=@SrcAccount, @BeneficiaryAccountID=0000000001, @ServiceID=@ServiceID, @Amount=@Amount, @TransactionType=@TransactionType;
    ELSE 
        PRINT 'Invalid Transaction attempt';

END
GO

--ACCOUNT TRANSFER TEST CASE
--Insufficient Funds
EXEC PerformTransactions @SrcAccount = 1001001235, @BeneAccount = 1001001237, @ServiceID = 0, @Amount = 1000, @TransactionType = 1;
--Invalid Account
EXEC PerformTransactions @SrcAccount = 1001001235, @BeneAccount = 1001001200, @ServiceID = 0, @Amount = 1000, @TransactionType = 1;
--Valid Scenario
EXEC PerformTransactions @SrcAccount = 1001001235, @BeneAccount = 1001001237, @ServiceID = 0, @Amount = 100, @TransactionType = 1;
--Invalid Attempt
EXEC PerformTransactions @SrcAccount = 1001001235, @BeneAccount = 1001001237, @ServiceID = 0, @Amount = 100, @TransactionType = -1;



--INSURANCE INSTALLMENTS
-- on successful transaction amount is credited to bank account
EXEC PerformTransactions @SrcAccount = 1001001234, @BeneAccount = 1, @ServiceID = 101, @Amount = 1000, @TransactionType = 2;
select * from TransactionTable;
select * from Account;
select * from insurance;

--Insurance Claim
EXEC PerformTransactions @SrcAccount = 1001001244, @BeneAccount = 1, @ServiceID = 103, @Amount = 1000, @TransactionType = 3;
select * from TransactionTable;
select * from Account;
select * from insurance;

--Loan disbursement
EXEC PerformTransactions @SrcAccount = 1001001235, @BeneAccount = 1, @ServiceID = 101, @Amount = 1000, @TransactionType = 4;
select * from TransactionTable;
select * from Account;
select * from loan;

--Loan Repayment
EXEC PerformTransactions @SrcAccount = 1001001237, @BeneAccount = 1001001237, @ServiceID = 102, @Amount = 2, @TransactionType = 5;
select * from TransactionTable;
select * from Account;
select * from loan;

--Card Transaction
--Insufficient funds in card
EXEC PerformTransactions @SrcAccount = 1001001234, @BeneAccount = 1001001237, @ServiceID = 1, @Amount = 1000, @TransactionType = 6;
--Valid Case
EXEC PerformTransactions @SrcAccount = 1001001234, @BeneAccount = 1001001237, @ServiceID = 1, @Amount = 100, @TransactionType = 6;
select * from TransactionTable;
select * from Card;

--Card Refill
EXEC PerformTransactions @SrcAccount = 1001001244, @BeneAccount = 1001001237, @ServiceID = 8, @Amount = 1000, @TransactionType = 7;
select * from TransactionTable;
select * from Card;
