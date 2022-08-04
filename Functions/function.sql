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
GO
SELECT * FROM CustomerFinancialHistory;


--TABLE-LEVEL CONSTRAINT FUNCTION 

--Added a Constraint to not allow a person with the same Name and SSN to register
GO
CREATE FUNCTION isPersonRegistered(@firstName VARCHAR(20), @lastName VARCHAR(20), @SSN CHAR(50))
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
GO
--checks if the same name is previously registered with same SSN 
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [DateOfBirth], [SSN], [Email], [PhoneNumber], [Address], [City], [State], [ZipCode]) VALUES
(180, 'Liam', 'Ira', CAST('1960-01-20' AS Date), '8776598', 'liamiran@gmail.com', '4133211531', 'Mcgreevey Way', 'Bosto', 'MA', '02120');