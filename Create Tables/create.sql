
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

-- Created Person class for redundancy
CREATE TABLE Person(
    PersonID INT PRIMARY KEY,
    FirstName VARCHAR(20),
    LastName VARCHAR(20),
    DateOfBirth DATE,
    SSN VARCHAR(50),
    Email VARCHAR(20),
    PhoneNumber VARCHAR(12),
    Address VARCHAR(MAX),
    City VARCHAR(20),
    State VARCHAR(20),
    ZipCode VARCHAR(10)
);

CREATE TABLE CustomerData(
    CustomerID INT PRIMARY KEY,
    PersonID INT FOREIGN KEY REFERENCES Person(PersonID)
);

CREATE TABLE Employee(
    EmployeeID INT PRIMARY KEY,
    EmployeeTypeID INT FOREIGN KEY REFERENCES EmployeeType(EmployeeTypeID),
    BranchCode INT FOREIGN KEY REFERENCES BankBranch(BranchCode),
    PersonID INT FOREIGN KEY REFERENCES Person(PersonID)
);

CREATE TABLE Account(
    AccountID INT PRIMARY KEY,
    BranchCode INT FOREIGN KEY REFERENCES BankBranch(BranchCode),
    CustomerID INT FOREIGN KEY REFERENCES CustomerData(CustomerID),
    CREATEDBYEmployee INT FOREIGN KEY REFERENCES Employee(EmployeeID),
    AccountType VARCHAR(10),
    Balance MONEY DEFAULT 0.0
);

-- CREATE TABLE InsuranceType(
--     InsuranceTypeID INT PRIMARY KEY,
--     InsuranceName VARCHAR(10),
--     InsuranceDescription VARCHAR(50)
-- );


CREATE TABLE Insurance(
    InsuranceID INT PRIMARY KEY,
    AccountID INT FOREIGN KEY REFERENCES Account(AccountID),
    InsuranceTypeID INT FOREIGN KEY REFERENCES InsuranceType(InsuranceTypeID),
    ApprovedByEmployee INT FOREIGN KEY REFERENCES Employee(EmployeeID),
    InsuranceName VARCHAR(20),
    InsuranceAmount MONEY,
    Status VARCHAR(20)
);


-- CREATE TABLE LoanType(
--     LoanTypeID INT PRIMARY KEY,
--     LoanType VARCHAR(10),
--     LoanDescription VARCHAR(50)
-- );

CREATE TABLE Loan(
    LoanID INT PRIMARY KEY,
    AccountID INT FOREIGN KEY REFERENCES Account(AccountID),
    LoanTypeID INT FOREIGN KEY REFERENCES LoanType(LoanTypeID),
    LoanName VARCHAR(20),
    LoanAmount MONEY,
    LoanPaid MONEY,
    RecentPaymentDate DATE,
    LoanDisbursed MONEY,
    RecentDisbursementDate DATE
);

-- This table stores the different credit card providers such as Visa, Mastercard and so on
CREATE TABLE CreditCardProvider(
    CreditCardProviderID INT PRIMARY KEY,
    Name VARCHAR(20)
);

CREATE TABLE Card(
    CardID INT PRIMARY KEY,
    AccountID INT FOREIGN KEY REFERENCES Account(AccountID),
    CardTypeID INT FOREIGN KEY REFERENCES CardType(CardTypeID),
    ApprovedBY INT FOREIGN KEY REFERENCES Employee(EmployeeID),
    CreditCardName VARCHAR(20),
    CreditCardProviderID INT FOREIGN KEY REFERENCES CreditCardProvider(CreditCardProviderID),
    Balance MONEY,
    Status VARCHAR(10),
    InterestRate FLOAT
);


-- Is it if I put the Beneficiary ID as Foreign key? 
-- Remove loan id from the table in the erd
CREATE TABLE TransactionTable(
    TransactionID INT PRIMARY KEY,
    AccountID INT FOREIGN KEY REFERENCES Account(AccountID),
    CardID INT FOREIGN KEY REFERENCES Card(CardID),
    InsuranceID INT FOREIGN KEY REFERENCES Insurance(InsuranceID),
    LoanID INT FOREIGN KEY REFERENCES Loan(LoanID),
    BeneficiaryAccountID INT FOREIGN KEY REFERENCES Account(AccountID),
    PaymentDate DATE,
    TransactionAmount MONEY
)

