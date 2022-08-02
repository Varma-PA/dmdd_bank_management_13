

-- Trigger to update the amount of both source account and destination account when transaction is made
GO
CREATE TRIGGER UpdateAccountAmount
ON dbo.TransactionTable
AFTER INSERT, UPDATE
AS
BEGIN

    DECLARE @SourceAccountID INT;
    DECLARE @DestAccountID INT;
    DECLARE @TheAmount MONEY;
    DECLARE @SourceAccountMoneyAmount MONEY;
    DECLARE @DestinationAccountMoneyAmount MONEY;

    DECLARE @ResultantFromSubtraction MONEY;
    DECLARE @ResultantFromAddition MONEY;


    Select @SourceAccountID = AccountID, @DestAccountID = BeneficiaryAccountID, @TheAmount = TransactionAmount FROM inserted;

    SELECT @SourceAccountMoneyAmount = Balance FROM Account WHERE AccountID = @SourceAccountID;

    SELECT @DestinationAccountMoneyAmount = Balance FROM Account WHERE AccountID = @DestAccountID;

    -- Subtracting from the source account
    UPDATE Account SET Balance = @SourceAccountMoneyAmount - @TheAmount WHERE AccountID = @SourceAccountID;

    UPDATE Account SET Balance = @DestinationAccountMoneyAmount + @TheAmount WHERE AccountID = @DestAccountID;

END
GO