
CREATE FUNCTION MakeTransactionFromAccountToAccount(@SourceAccountID INT, @BeneficiaryAccountID INT, @Amount MONEY)
RETURNS VARCHAR
AS
BEGIN

    INSERT INTO dbo.TransactionTable (AccountID, BeneficiaryAccountID, PaymentDate, TransactionAmount) 
    VALUES (@SourceAccountID, @BeneficiaryAccountID, getDate(), @Amount);

    RETURN "Successfully completed the transaction"

END
