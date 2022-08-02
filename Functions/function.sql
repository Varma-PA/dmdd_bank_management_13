--COMPUTE COLUMN BASED ON A FUNCTION

--Calculate Age Column from PersonID and DateOfBirth
GO
CREATE FUNCTION calculateAgeFromDOB(@PersonID INT)
RETURNS INT
AS
   BEGIN

   DECLARE @Age AS INT

   SELECT @Age = DATEDIFF(hour,P.DateOfBirth,GETDATE())/8766 FROM Person P
   WHERE P.PersonID = @PersonID

   RETURN @Age
   END
GO   

ALTER TABLE dbo.Person
ADD Age AS (dbo.calculateAgeFromDOB(PersonID));

SELECT * FROM Person;


-- Function used to add Money
GO
CREATE FUNCTION AddMoney(@ValueOne MONEY, @ValueTwo MONEY)
RETURNS MONEY
AS
BEGIN

    DECLARE @Output MONEY;

    SET @Output = 0.0;

    SET @Output = @ValueOne + @ValueTwo;

    RETURN @Output;
END
GO

-- Function used to Subtract Money
GO
CREATE FUNCTION SubtractMoney(@ValueOne MONEY, @ValueTwo MONEY)
RETURNS MONEY
AS
BEGIN

    DECLARE @Output MONEY;

    SET @Output = 0.0;

    SET @Output = ABS(@ValueOne - @ValueTwo);

    RETURN @Output;
END
GO

