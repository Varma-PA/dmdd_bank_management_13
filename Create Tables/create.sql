/* Group 13
INFO 6210 Database Management and Database Design
P4
Submitted by 
Sree Achyutha Penmetcha           NUID : 
Ankita Kumari                     NUID : 
Hazel Lobo						  NUID : 001001740
Sanjana Chatti                    NUID : 
Vachana Belgai                    NUID : 
*/

-- Creation of Tables for our Database Implementation

--Create database
CREATE DATABASE BankManagementGroup13;

USE BankManagementGroup13;

--Table Branch

CREATE TABLE BankBranch(
    BranchCode INT NOT NULL PRIMARY KEY,
    BranchName VARCHAR(20) NOT NULL,
	PhoneNumber CHAR(10) NOT NULL CHECK (PhoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    Email VARCHAR(20) NOT NULL,
    [Address] VARCHAR(50) NOT NULL,
    City VARCHAR(10) NOT NULL,
    [State] VARCHAR(15) NOT NULL,
	ZipCode CHAR(5) NOT NULL CHECK (ZipCode like '[0-9][0-9][0-9][0-9][0-9]')
);

-- Table Person
CREATE TABLE Person(
    PersonID INT NOT NULL PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20),
    DateOfBirth DATE NOT NULL,
    SSN VARCHAR(50),
    Email VARCHAR(20),
	PhoneNumber CHAR(10) NOT NULL CHECK (PhoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    [Address] VARCHAR(MAX) NOT NULL,
    City VARCHAR(20) NOT NULL,
	[State] VARCHAR(15) NOT NULL,
	ZipCode CHAR(5) NOT NULL CHECK (ZipCode like '[0-9][0-9][0-9][0-9][0-9]')
);

--Table Employee Type
CREATE TABLE EmployeeType(
    EmployeeTypeID INT NOT NULL PRIMARY KEY,
    [Type] VARCHAR(10) NOT NULL
);

--Table Employee
CREATE TABLE Employee(
    EmployeeID INT NOT NULL PRIMARY KEY,
    EmployeeTypeID INT NOT NULL FOREIGN KEY REFERENCES EmployeeType(EmployeeTypeID),
    BranchCode INT NOT NULL FOREIGN KEY REFERENCES BankBranch(BranchCode),
    PersonID INT NOT NULL FOREIGN KEY REFERENCES Person(PersonID)
);

--Table Customer Data
CREATE TABLE CustomerData(
    CustomerID INT NOT NULL PRIMARY KEY,
    PersonID INT NOT NULL FOREIGN KEY REFERENCES Person(PersonID)
);

--Table Customer Financial History
CREATE TABLE CustomerFinancialHistory(
    FinancialHistoryID INT NOT NULL PRIMARY KEY,
    CustomerID INT NOT NULL FOREIGN KEY REFERENCES CustomerData(CustomerID),
    CreditScore INT,
    [Status] VARCHAR(10),
    LastUpdatedTime DATE
);

--Table Account
CREATE TABLE Account(
    AccountID INT NOT NULL PRIMARY KEY,
    BranchCode INT NOT NULL FOREIGN KEY REFERENCES BankBranch(BranchCode),
    CustomerID INT NOT NULL FOREIGN KEY REFERENCES CustomerData(CustomerID),
    CreatedByEmployee INT NOT NULL FOREIGN KEY REFERENCES Employee(EmployeeID),
    AccountType VARCHAR(10) NOT NULL,
    Balance MONEY DEFAULT 0.0
);

-- CREATE TABLE InsuranceType(
--     InsuranceTypeID INT PRIMARY KEY,
--     InsuranceName VARCHAR(10),
--     InsuranceDescription VARCHAR(50)
-- );

--Table Insurance
CREATE TABLE Insurance(
    InsuranceID INT NOT NULL PRIMARY KEY,
    AccountID INT NOT NULL FOREIGN KEY REFERENCES Account(AccountID),
    InsuranceTypeID INT NOT NULL FOREIGN KEY REFERENCES InsuranceType(InsuranceTypeID),
    ApprovedByEmployee INT NOT NULL FOREIGN KEY REFERENCES Employee(EmployeeID),
    InsuranceAmount MONEY,
    [Status] VARCHAR(20)
);


-- CREATE TABLE LoanType(
--     LoanTypeID INT PRIMARY KEY,
--     LoanType VARCHAR(10),
--     LoanDescription VARCHAR(50)
-- );

--Table Loan
CREATE TABLE Loan(
    LoanID INT NOT NULL PRIMARY KEY,
    AccountID INT NOT NULL FOREIGN KEY REFERENCES Account(AccountID),
    LoanTypeID INT NOT NULL FOREIGN KEY REFERENCES LoanType(LoanTypeID),
	ApprovedByEmployee INT NOT NULL FOREIGN KEY REFERENCES Employee(EmployeeID),
    LoanAmount MONEY DEFAULT 0.0,
    LoanPaid MONEY DEFAULT 0.0,
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

