--COMPUTE COLUMN BASED ON A FUNCTION

--Calculate Credit Score Status Column from CustomerID
GO
CREATE FUNCTION calculateCreditScoreStatus(@CustomerID INT)
RETURNS varchar(12)
AS
   BEGIN

   DECLARE @CreditScore as INT
   DECLARE @Status as VARCHAR(12)

   SELECT @CreditScore = CreditScore FROM CustomerFinancialHistory C
   WHERE C.CustomerID = @CustomerID

   IF @CreditScore BETWEEN 300 AND 579
		SET @Status = 'Poor'
   ELSE IF @CreditScore BETWEEN 580 AND 669
		SET @Status = 'Fair'
   ELSE IF @CreditScore BETWEEN 670 AND 739
		SET @Status = 'Good'
   ELSE IF @CreditScore BETWEEN 740 AND 799
		SET @Status = 'Very Good'
   ELSE IF @CreditScore BETWEEN 800 AND 850
		SET @Status = 'Exceptional'
   
   RETURN @Status
   END
GO   

ALTER TABLE dbo.CustomerFinancialHistory
ADD [Status] AS (dbo.calculateCreditScoreStatus(CustomerID));

SELECT * FROM CustomerFinancialHistory;




--COMPUTE COLUMN BASED ON A FUNCTION
--Calculating the status using ApprovedByEmployee and Insurance Issued Date

GO
CREATE FUNCTION CalculateInsuranceStatus(@InsuranceID INT)
RETURNS varchar(20)
AS
   BEGIN

        DECLARE @ApproverID INT;
        DECLARE @Status VARCHAR(20);
        DECLARE @InsuranceIssuedDate DATE;

        Select @ApproverID = ApprovedByEmployee, @InsuranceIssuedDate = InsuranceIssuedDate FROM dbo.Insurance WHERE InsuranceID = @InsuranceID;
   
        IF @ApproverID IS NOT NULL AND getDate() <= @InsuranceIssuedDate

            SET @Status = 'Active';

        ELSE 

            SET @Status = 'Pending';    

        RETURN @Status;

   END
GO   

ALTER TABLE dbo.Insurance
ADD [Status] AS (dbo.CalculateInsuranceStatus(InsuranceId));

select * from dbo.Insurance;


--TABLE-LEVEL CONSTRAINT FUNCTION 

--Added a Constraint to not allow a person with the same Name and SSN to register
GO
CREATE OR ALTER FUNCTION isPersonRegistered(@firstName VARCHAR(20), @lastName VARCHAR(20), @SSN CHAR(50))
RETURNS INT
AS

BEGIN

   DECLARE @COUNT AS INT;

   SELECT @COUNT = COUNT(PersonID) FROM Person
   WHERE FirstName = @firstName AND LastName = @lastName AND SSN = @SSN;

   RETURN @COUNT;

END
GO

ALTER TABLE Person WITH NOCHECK ADD CONSTRAINT checkRegisteredPerson
CHECK (dbo.isPersonRegistered(FirstName, LastName, SSN) = 0);