GO
CREATE PROCEDURE MakeTransactionFromAccountToAccount(@SourceAccountID INT, @BeneficiaryAccountID INT, @Amount MONEY)
AS
BEGIN

    DECLARE @AccountBalance MONEY;

    DECLARE @SourceAccountExists INT;

    DECLARE @DestinationAccountExists INT;

    SELECT @SourceAccountExists = COUNT(AccountID) FROM Account WHERE AccountID = @SourceAccountID;

    SELECT @DestinationAccountExists = COUNT(AccountID) FROM Account WHERE AccountID = @BeneficiaryAccountID;

    IF @SourceAccountExists = 1 AND @DestinationAccountExists = 1

        BEGIN

        SELECT @AccountBalance = Balance FROM Account WHERE AccountID = @SourceAccountID;
        
        IF @AccountBalance >= @Amount
            BEGIN

            BEGIN TRY;

            BEGIN TRANSACTION;
        
            INSERT INTO dbo.TransactionTable (AccountID, BeneficiaryAccountID, PaymentDate, TransactionAmount) 
            VALUES (@SourceAccountID, @BeneficiaryAccountID, getDate(), @Amount);

            PRINT 'Completed Account Transfer 🎉';

            COMMIT TRANSACTION;

            END TRY
            BEGIN CATCH
                PRINT 'Account transfer failed, please try again later 😀'

   
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

DROP PROC MakeTransactionFromAccountToAccount;

EXEC MakeTransactionFromAccountToAccount @SourceAccountID=1001001243, @BeneficiaryAccountID=1001001241, @Amount=431.00

GO
CREATE FUNCTION MakeTransactionFromAccountToInsurance(@SourceAccountID INT, @InsuranceID INT, @Amount MONEY)
RETURNS VARCHAR
AS
BEGIN

    INSERT INTO dbo.TransactionTable (AccountID, InsuranceID, PaymentDate, TransactionAmount) 
    VALUES (@SourceAccountID, @InsuranceID, getDate(), @Amount);

    RETURN "Successfully completed the transaction towards Insurance"

END
GO

GO
CREATE FUNCTION MakeTransactionFromAccountToLoan(@SourceAccountID INT, @LoanID INT, @Amount MONEY)
RETURNS VARCHAR
AS
BEGIN

    INSERT INTO dbo.TransactionTable (AccountID, LoanID, PaymentDate, TransactionAmount) 
    VALUES (@SourceAccountID, @LoanID, getDate(), @Amount);

    RETURN "Successfully completed the transaction to Loan"

END
GO

GO
CREATE FUNCTION MakeTransactionFromAccountToCard(@SourceAccountID INT, @CardID INT, @Amount MONEY)
RETURNS VARCHAR
AS
BEGIN

    INSERT INTO dbo.TransactionTable (AccountID, CardID, PaymentDate, TransactionAmount) 
    VALUES (@SourceAccountID, @CardID, getDate(), @Amount);

    RETURN "Successfully completed the transaction to CARD"

END
GO
