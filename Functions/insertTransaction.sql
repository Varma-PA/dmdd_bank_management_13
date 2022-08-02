GO
CREATE FUNCTION MakeTransactionFromAccountToAccount(@SourceAccountID INT, @BeneficiaryAccountID INT, @Amount MONEY)
RETURNS VARCHAR
AS
BEGIN

    INSERT INTO dbo.TransactionTable (AccountID, BeneficiaryAccountID, PaymentDate, TransactionAmount) 
    VALUES (@SourceAccountID, @BeneficiaryAccountID, getDate(), @Amount);

    RETURN "Successfully completed the transaction to Beneficiary Account"

END
GO

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
