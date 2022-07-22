
CREATE TABLE CustomerData(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    SSN VARCHAR(20),
    Email VARCHAR(20),
    PhoneNumber VARCHAR(15),
    HomeAddress VARCHAR(15),
    City VARCHAR(10),
    State VARCHAR(20),
    ZipCode VARCHAR(10)
);

CREATE TABLE CustomerFinancialHistory(
    FinancialHistoryID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES CustomerData(CustomerID),
    CreditScore INT,
    Status VARCHAR(10),
    LastUpdatedTime DATE
);

CREATE TABLE CardType(
    CardTypeID INT PRIMARY KEY,
    TYPE VARCHAR(10),
    CardDescription VARCHAR(10)
);

