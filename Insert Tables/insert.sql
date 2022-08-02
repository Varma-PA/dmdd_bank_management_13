-- Insurance Type
INSERT INTO dbo.InsuranceType VALUES (1, 'Life Insurance', 'This is a Life Insurance');
INSERT INTO dbo.InsuranceType VALUES (2, 'Health Insurance', 'This is a Health Insurance');
INSERT INTO dbo.InsuranceType VALUES (3, 'Renters Insurance', 'This is a Renters Insurance');
INSERT INTO dbo.InsuranceType VALUES (4, 'Disability Insurance', 'This is a Disability Insurance');
INSERT INTO dbo.InsuranceType VALUES (5, 'Long Term Care Insurance', 'This is a Long term Insurance');
INSERT INTO dbo.InsuranceType VALUES (6, 'Auto Insurance', 'This is a Auto Insurance');
INSERT INTO dbo.InsuranceType VALUES (7, 'Travel Insurance', 'This is a Travel Insurance');
INSERT INTO dbo.InsuranceType VALUES (8, 'Homeowner Insurance', 'This is a Homeowner Insurance');
INSERT INTO dbo.InsuranceType VALUES (9, 'Funeral Insurance', 'This is Funeral Insurance');
INSERT INTO dbo.InsuranceType VALUES (10, 'Pet Health Insurance', 'This is Pet Health Insurance');


-- Loan Type
INSERT INTO dbo.LoanType VALUES (1, 'Personal Loan', 'This is Personal Loan');
INSERT INTO dbo.LoanType VALUES (2, 'Gold Loan', 'This is Gold Loan');
INSERT INTO dbo.LoanType VALUES (3, 'Education Loan', 'This is Education Loan');
INSERT INTO dbo.LoanType VALUES (4, 'Mortgage Loan', 'This is Mortgage Loan');
INSERT INTO dbo.LoanType VALUES (5, 'Home Equity Loan', 'This is Home Equity Loan');
INSERT INTO dbo.LoanType VALUES (6, 'Credit-builder Loan', 'This is Credit-builder Loan');
INSERT INTO dbo.LoanType VALUES (7, 'Small Business Loan', 'This is Small Business Loan');
INSERT INTO dbo.LoanType VALUES (8, 'Car Loan', 'This is Car Loan');
INSERT INTO dbo.LoanType VALUES (9, 'Land Loan', 'This is Credit-builder Loan');
INSERT INTO dbo.LoanType VALUES (10, 'Small Quick Loan', 'This is Small Quick Loan');


-- Card Type
INSERT INTO dbo.CardType VALUES (1, 'Credit Card', 'A credit card allows you to make purchases and pay for them later');
INSERT INTO dbo.CardType VALUES (2, 'Debit Card', 'A payment card that can be used in place of cash to make purchases');
INSERT INTO dbo.CardType VALUES (3, 'ATM Card', 'An ATM card allows a customer only to withdraw money from an ATM');
INSERT INTO dbo.CardType VALUES (4, 'Prepaid Card', 'A card you can use to pay for things that is placed in the prepaid card account in advance');
INSERT INTO dbo.CardType VALUES (5, 'Gift Card', 'A prepaid debit card that is loaded with a specific amount, which can then be used to make purchases and other financial transactions');
INSERT INTO dbo.CardType VALUES (6, 'Virtual Card', 'A card is stored on phone and can be used to pay contactless in stores or online')


-- Inserting into BankBranch
INSERT INTO dbo.BankBranch VALUES (111, 'Newbury Street', '9876543210','newburystreet@gmail.com', '11th Newbury Street','Boston','Massachusetts', '02115');
INSERT INTO dbo.BankBranch VALUES (112, 'Roxbury','8765432109' ,'roxbury@gmail.com', '12th Roxbury Street','Boston','Massachusetts', '02116');
INSERT INTO dbo.BankBranch VALUES (113, 'Mission Hill','7654321098','missionhill@gmail.com','13th Mission Main Road','Boston','Massachusetts', '02117');
INSERT INTO dbo.BankBranch VALUES (114, 'Calumet Street','6543210987','calumetstreet@gmail.com','14th Calumet Street','Boston','Massachusetts', '02118');
INSERT INTO dbo.BankBranch VALUES (115, 'Down Town','5432109876', 'downtown@gmail.com','15th Down Town Road','Boston','Massachusetts', '02114');
INSERT INTO dbo.BankBranch VALUES (116, 'Massachusetts Avenue', '4321098765','massavenue@gmail.com','16th Maasachusettes Avenue','Boston','Massachusetts', '02113');
INSERT INTO dbo.BankBranch VALUES (117, 'Back Bay','3210987654','backbay@gmail.com','17th Back Bay Avenue','Boston','Massachusetts', '02112');
INSERT INTO dbo.BankBranch VALUES (118, 'Commonwealth','2109876543','commonwealth@gmail.com','18th Commonwealth Road','Boston','Massachusetts', '02111' );
INSERT INTO dbo.BankBranch VALUES (119, 'Oak Grove','1098765432','oakgrove@gmail.com', '19th Oak Grove Station','Boston','Massachusetts', '02111' );
INSERT INTO dbo.BankBranch VALUES (120, 'Forest Hill','1234567890', 'foresthill@gmail.com','20th Forest Hill Crossing','Boston','Massachusetts', '02109');


-- Person
INSERT [dbo].[Person] ([PersonID], [FirstName], [LastName], [DateOfBirth], [SSN], [Email], [PhoneNumber], [Address], [City], [State], [ZipCode]) VALUES
(101, 'Liam', 'Ira', CAST('1960-01-20' AS Date), '8776598', 'liamiran@gmail.com', '4133211531', 'Mcgreevey Way', 'Bosto', 'MA', '02120'),
(102, 'Cassia', 'Smith', CAST('1960-09-28' AS Date), '6552187', 'smith.c@gmail.com', '4133211542', 'Smith', 'Housto', 'TX', '04128'),
(103, 'Jim', 'Kelly', CAST('1960-05-19' AS Date), '8741987', 'kelly.jim@gmail.com', '4133211553', 'Ponce', 'Natick', 'MA', '02128'),
(104, 'Da', 'Rock', CAST('1999-11-22' AS Date), '5813981', 'rocky22@yahoo.com', '4133215144', 'Horado', 'Waltham', 'MA', '02116'),
(105, 'Kelly', 'Smith', CAST('1995-02-21' AS Date), '4719832', 'smith.kelly@gmail.com', '4133211568', 'Park Street', 'Allston', 'TX', '12021'),
(106, 'Pharell', 'Ira', CAST('1970-01-29' AS Date), '2087615', 'iranpharell@gmail.com', '4133211519', 'Norway', 'Portland', 'OR', '74074'),
(107, 'Joel', 'Dough', CAST('1992-02-22' AS Date), '3498109', 'doughjoe1992@gmail.com', '4133115011', 'Tremont', 'Stillwater', 'OK', '88123'),
(108, 'Louis', 'Smith', CAST('1990-08-22' AS Date), '8761230', 'smith.louis@gmail.com', '4133215300', 'Ward', 'Manhatta', 'NY', '03412'),
(109, 'Kare', 'Lee', CAST('1980-02-23' AS Date), '7812450', 'karen.lee@gmail.com', '4133211506', 'Fenway', 'Michiga', 'MI', '44210'),
(110, 'Larry', 'Dennis', CAST('1991-02-22' AS Date), '9812091', 'dennis1991@yahoo.com', '4133315807', 'Roxburry', 'San Jose', 'CA', '02120'),
(111, 'Zara', 'Larso', CAST('1964-12-12' AS Date), '9812121', 'wittyzara@hotmail.com', '4133211513', 'Mcgreevey Way', 'Bosto', 'MA', '04128'),
(112, 'Edward', 'Pattinso', CAST('1998-12-01' AS Date), '8232091', 'edward98@gmail.com', '4133215244', 'Smith', 'Housto', 'TX', '02128'),
(113, 'Mary', 'Louis', CAST('1966-01-01' AS Date), '7812440', 'louis.mary66@gmail.com', '4133111538', 'Ponce', 'Natick', 'MA', '02116'),
(114, 'Hazel', 'Lobo', CAST('1967-12-20' AS Date), '8741287', 'lobohazel20@gmail.com', '4133911519', 'Horado', 'Waltham', 'MA', '12021'),
(115, 'Ankita', 'Kumari', CAST('1998-12-25' AS Date), '5123481', 'kumari.a@yahoo.com', '4133515011', 'Park Street', 'Allston', 'TX', '74074'),
(116, 'Achyth', 'Varma', CAST('1969-01-12' AS Date), '4719812', 'varma.achyuth@gmail.com', '4133715300', 'Norway', 'Portland', 'OR', '74074'),
(117, 'Vachana', 'Belgavi', CAST('1962-02-12' AS Date), '2032615', 'belgavi.v@gmail.com', '4133311553', 'Tremont', 'Stillwater', 'OK', '88123'),
(118, 'Shraddha', 'Baheti', CAST('1994-04-12' AS Date), '3231109', 'baheti.shraddha@gmail.com', '4133315144', 'Ward', 'Manhatta', 'NY', '44210'),
(119, 'Sanjana', 'Chatti', CAST('1950-12-12' AS Date), '8451230', 'chatti.s@gmail.com', '4133311568', 'Fenway', 'Michiga', 'MI', '02120'),
(120, 'Mak', 'Weins', CAST('1998-01-06' AS Date), '8147230', 'weins.mark@yahoo.com', '4133311519', 'Roxburry', 'San Jose', 'CA', '74074');


-- Employee Type
INSERT [dbo].[EmployeeType] ([EmployeeTypeID], [Type]) VALUES (201, 'Branch Manager');
INSERT [dbo].[EmployeeType] ([EmployeeTypeID], [Type]) VALUES (202, 'Account Creator');
INSERT [dbo].[EmployeeType] ([EmployeeTypeID], [Type]) VALUES (203, 'Loan Approver');
INSERT [dbo].[EmployeeType] ([EmployeeTypeID], [Type]) VALUES (204, 'Insurance Approver');
INSERT [dbo].[EmployeeType] ([EmployeeTypeID], [Type]) VALUES (205, 'Card Approver');


-- Employee
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeTypeID], [BranchCode], [PersonID]) VALUES (900, 201, 111, 111);
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeTypeID], [BranchCode], [PersonID]) VALUES (901, 202, 111, 112);
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeTypeID], [BranchCode], [PersonID]) VALUES (902, 203, 111, 113);
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeTypeID], [BranchCode], [PersonID]) VALUES (903, 204, 111, 114);
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeTypeID], [BranchCode], [PersonID]) VALUES (904, 205, 111, 115);
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeTypeID], [BranchCode], [PersonID]) VALUES (905, 201, 112, 116);
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeTypeID], [BranchCode], [PersonID]) VALUES (906, 202, 112, 117);
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeTypeID], [BranchCode], [PersonID]) VALUES (907, 203, 112, 118);
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeTypeID], [BranchCode], [PersonID]) VALUES (908, 204, 112, 119);
INSERT [dbo].[Employee] ([EmployeeID], [EmployeeTypeID], [BranchCode], [PersonID]) VALUES (909, 205, 112, 120);


-- Customer Data
INSERT INTO dbo.CustomerData VALUES (301, 101);
INSERT INTO dbo.CustomerData VALUES (302, 102);
INSERT INTO dbo.CustomerData VALUES (303, 103);
INSERT INTO dbo.CustomerData VALUES (304, 104);
INSERT INTO dbo.CustomerData VALUES (305, 105);
INSERT INTO dbo.CustomerData VALUES (306, 106);
INSERT INTO dbo.CustomerData VALUES (307, 107);
INSERT INTO dbo.CustomerData VALUES (308, 108);
INSERT INTO dbo.CustomerData VALUES (309, 109);
INSERT INTO dbo.CustomerData VALUES (310, 110);


-- Customer Financial History
INSERT INTO dbo.CustomerFinancialHistory VALUES (401, 301, 365, 'Poor', '2022-01-23');
INSERT INTO dbo.CustomerFinancialHistory VALUES (402, 302, 593, 'Fair', '2021-11-16');
INSERT INTO dbo.CustomerFinancialHistory VALUES (403, 303, 715, 'Good', '2022-07-31');
INSERT INTO dbo.CustomerFinancialHistory VALUES (404, 304, 778, 'Very Good', '2022-03-17');
INSERT INTO dbo.CustomerFinancialHistory VALUES (405, 305, 825, 'Excellent', '2021-09-05');
INSERT INTO dbo.CustomerFinancialHistory VALUES (406, 306, 570, 'Poor', '2021-12-09');
INSERT INTO dbo.CustomerFinancialHistory VALUES (407, 307, 590, 'Fair', '2022-02-14');
INSERT INTO dbo.CustomerFinancialHistory VALUES (408, 308, 671, 'Good', '2022-03-19');
INSERT INTO dbo.CustomerFinancialHistory VALUES (409, 309, 741, 'Very Good', '2022-04-18');
INSERT INTO dbo.CustomerFinancialHistory VALUES (410, 310, 804, 'Excellent', '2022-05-02');


-- Account
INSERT INTO dbo.Account VALUES (1001001234, 111, 301, 900, 'Savings', 12452);
INSERT INTO dbo.Account VALUES (1001001235, 111, 301, 900, 'Checking', 731);
INSERT INTO dbo.Account VALUES (1001001236, 112, 302, 901, 'Savings', 298);
INSERT INTO dbo.Account VALUES (1001001237, 112, 302, 901, 'Checking', 13);
INSERT INTO dbo.Account VALUES (1001001238, 113, 303, 902, 'Savings', 4764);
INSERT INTO dbo.Account VALUES (1001001239, 113, 303, 902, 'Checking', 4008);
INSERT INTO dbo.Account VALUES (1001001240, 114, 304, 903, 'Savings', 10007);
INSERT INTO dbo.Account VALUES (1001001241, 114, 304, 903, 'Checking', 2056);
INSERT INTO dbo.Account VALUES (1001001242, 115, 305, 904, 'Savings', 3684);
INSERT INTO dbo.Account VALUES (1001001243, 115, 305, 904, 'Checking', 622);
INSERT INTO dbo.Account VALUES (1001001244, 116, 306, 905, 'Savings', 456);
INSERT INTO dbo.Account VALUES (1001001245, 116, 306, 905, 'Checking', 34);
INSERT INTO dbo.Account VALUES (1001001246, 117, 307, 906, 'Savings', 86483);
INSERT INTO dbo.Account VALUES (1001001247, 117, 307, 906, 'Checking', 6789);
INSERT INTO dbo.Account VALUES (1001001248, 118, 308, 907, 'Savings', 2545);
INSERT INTO dbo.Account VALUES (1001001249, 118, 308, 907, 'Checking', 767);
INSERT INTO dbo.Account VALUES (1001001250, 119, 309, 908, 'Savings', 234);
INSERT INTO dbo.Account VALUES (1001001251, 119, 309, 908, 'Checking', 1465);
INSERT INTO dbo.Account VALUES (1001001252, 120, 310, 909, 'Savings', 7659);
INSERT INTO dbo.Account VALUES (1001001253, 120, 310, 909, 'Checking', 9860);


-- insuranceTable
INSERT into dbo.Insurance VALUES(101,1001001234,2,901,508,'Pending')
INSERT into dbo.Insurance VALUES(102,1001001239,3,902,2000,'Approved')
INSERT into dbo.Insurance VALUES(103,1001001244,1,903,589,'Pending')
INSERT into dbo.Insurance VALUES(104,1001001236,5,904,2400,'Approved')
INSERT into dbo.Insurance VALUES(105,1001001241,2,905,4000,'Pending')
INSERT into dbo.Insurance VALUES(106,1001001235,1,906,3600,'Pending')
INSERT into dbo.Insurance VALUES(107,1001001238,10,907,5100,'Approved')
INSERT into dbo.Insurance VALUES(108,1001001243,9,908,903,'Pending')
INSERT into dbo.Insurance VALUES(109,1001001251,4,908,836,'Approved')
INSERT into dbo.Insurance VALUES(110,1001001252,7,901,1200,'Approved')
INSERT into dbo.Insurance VALUES(111,1001001252,6,902,1011,'Pending')
INSERT into dbo.Insurance VALUES(112,1001001240,8,909,1023,'Approved')
INSERT into dbo.Insurance VALUES(113,1001001239,10,903,400,'Approved')


-- Inserting Loan
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(101, 1001001235, 1, 902, 500000, 2000, '2008-06-12', 30000, '2021-02-05');
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(102, 1001001237, 2, 902, 2000000, 300000, '2009-04-12', 1000000, '2020-03-03');
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(103, 1001001239, 1, 907, 100000, 2000.0000, '2010-08-15', 30000, '2022-03-23');
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(104, 1001001241, 3, 907, 300000, 10000, '2011-12-14', 3000000, '2019-04-19');
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(105, 1001001243, 3, 902, 300000, 20000, '2012-04-22', 150000, '2018-05-15');
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(106, 1001001245, 8, 907, 500000, 2000, '2013-03-23', 250000, '2017-04-12');
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(107, 1001001247, 8, 902, 500000, 20000, '2015-02-19', 300000, '2020-04-13');
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(108, 1001001249, 10, 902, 5000, 1000, '2015-06-18', 3000, '2021-04-14');
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(109, 1001001251, 1, 902, 70000, 2000, '2016-08-17', 30000, '2022-04-15');
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(110, 1001001253, 1, 907, 80000, 2000, '2016-09-18', 30000, '2022-04-15');

INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(111, 1001001235, 1, 907, 40000, 10000, '2018-08-19', 30000, '2020-04-18');
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(112, 1001001237, 1, 902, 60000, 30000, '2018-09-19', 60000, '2020-04-07');
INSERT INTO BankManagementGroup13.dbo.Loan (LoanID, AccountID, LoanTypeID, ApprovedByEmployee, LoanAmount, LoanPaid, RecentPaymentDate, LoanDisbursed, RecentDisbursementDate) VALUES(113, 1001001239, 1, 907, 50000, 10000, '2017-08-18', 50000, '2021-04-08');







