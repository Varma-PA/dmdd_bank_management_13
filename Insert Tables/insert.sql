-- Inserting into Insurance Type

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

-- Inserting into Loan Type

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


-- Inserting into Card Type
INSERT INTO dbo.CardType VALUES (1, 'Credit Card', 'A credit card allows you to make purchases and pay for them later');
INSERT INTO dbo.CardType VALUES (2, 'Debit Card', 'A payment card that can be used in place of cash to make purchases');
INSERT INTO dbo.CardType VALUES (3, 'ATM Card', 'An ATM card allows a customer only to withdraw money from an ATM');
INSERT INTO dbo.CardType VALUES (4, 'Prepaid Card', 'A card you can use to pay for things that is placed in the prepaid card account in advance');
INSERT INTO dbo.CardType VALUES (5, 'Gift Card', 'A prepaid debit card that is loaded with a specific amount, which can then be used to make purchases and other financial transactions');
INSERT INTO dbo.CardType VALUES (6, 'Virtual Card', 'A card is stored on phone and can be used to pay contactless in stores or online');



-- Inserting into BankBranch
INSERT INTO dbo.InsuranceType VALUES (111, 'Newbury Street', '9876543210','newburystreet@gmail.com', '11th Newbury Street','Boston','Massachusetts', '02115');
INSERT INTO dbo.InsuranceType VALUES (112, 'Roxbury','8765432109' ,'roxbury@gmail.com', '12th Roxbury Street','Boston','Massachusetts', '02116');
INSERT INTO dbo.InsuranceType VALUES (113, 'Mission Hill','7654321098','missionhill@gmail.com','13th Mission Main Road','Boston','Massachusetts', '02117');
INSERT INTO dbo.InsuranceType VALUES (114, 'Calumet Street','6543210987','calumetstreet@gmail.com','14th Calumet Street','Boston','Massachusetts', '02118');
INSERT INTO dbo.InsuranceType VALUES (115, 'Down Town','5432109876', 'downtown@gmail.com','15th Down Town Road','Boston','Massachusetts', '02114');
INSERT INTO dbo.InsuranceType VALUES (116, 'Massachusetts Avenue', '4321098765','massavenue@gmail.com','16th Maasachusettes Avenue','Boston','Massachusetts', '02113');
INSERT INTO dbo.InsuranceType VALUES (117, 'Back Bay','3210987654','backbay@gmail.com','17th Back Bay Avenue','Boston','Massachusetts', '02112');
INSERT INTO dbo.InsuranceType VALUES (118, 'Commonwealth','2109876543','commonwealth@gmail.com','18th Commonwealth Road','Boston','Massachusetts', '02111' );
INSERT INTO dbo.InsuranceType VALUES (119, 'Oak Grove','1098765432','oakgrove@gmail.com', '19th Oak Grove Station','Boston','Massachusetts', '02111' );
INSERT INTO dbo.InsuranceType VALUES (120, 'Forest Hill','1234567890', 'foresthill@gmail.com','20th Forest Hill Crossing','Boston','Massachusetts', '02109');

--Person Table
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

--Inserting into Employee Type
INSERT [dbo].[EmployeeType] ([EmployeeTypeID], [Type]) VALUES (201, 'Branch Manager');
INSERT [dbo].[EmployeeType] ([EmployeeTypeID], [Type]) VALUES (202, 'Account Creator');
INSERT [dbo].[EmployeeType] ([EmployeeTypeID], [Type]) VALUES (203, 'Loan Approver');
INSERT [dbo].[EmployeeType] ([EmployeeTypeID], [Type]) VALUES (204, 'Insurance Approver');
INSERT [dbo].[EmployeeType] ([EmployeeTypeID], [Type]) VALUES (205, 'Card Approver');

--Inserting into Employee
