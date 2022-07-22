
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

CREATE TABLE BankBranch(
    BranchCode INT PRIMARY KEY,
    BranchName VARCHAR(20),
    PhoneNumber VARCHAR(12),
    Email VARCHAR(20),
    Address VARCHAR(50),
    City VARCHAR(10),
    State VARCHAR(15),
    ZipCode VARCHAR(10)
);

CREATE TABLE EmployeeType(
    EmployeeTypeID INT PRIMARY KEY,
    Type VARCHAR(10)
);

-- CREATE TABLE Employee(
--     EmployeeID INT PRIMARY KEY,
--     EmployeeType INT FOREIGN KEY REFERENCES EmployeeType(EmployeeTypeID),
--     BranchCode INT FOREIGN KEY REFERENCES BankBranch(BranchCode),
--     FirstName VARCHAR(20),
--     LastName VARCHAR(20),
--     DateOfBirth DATE
-- )

CREATE TABLE InsuranceType(
    InsuranceTypeID INT PRIMARY KEY,
    InsuranceType VARCHAR(20),
    InsuranceDescription VARCHAR(20)
);

CREATE TABLE LoanType(
    LoanTypeID INT PRIMARY KEY,
    LoanType VARCHAR(20),
    LoanDescription VARCHAR(50)
);


