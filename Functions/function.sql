--COMPUTE COLUMN BASED ON A FUNCTION

--Calculate Age Column from PersonID and DateOfBirth
CREATE FUNCTION calculateAgeFromDOB(@PersonID INT)
RETURNS INT
AS
   BEGIN

   DECLARE @Age AS INT

   SELECT @Age = DATEDIFF(hour,P.DateOfBirth,GETDATE())/8766 FROM Person P
   WHERE P.PersonID = @PersonID

   RETURN @Age
   END

ALTER TABLE dbo.Person
ADD Age AS (dbo.calculateAgeFromDOB(PersonID));

SELECT * FROM Person;