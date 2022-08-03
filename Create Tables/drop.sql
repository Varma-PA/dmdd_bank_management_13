USE [BankManagementGroup13]
GO
ALTER TABLE [dbo].[BankBranch] DROP CONSTRAINT [CK__BankBranc__ZipCo__6EF57B66]
GO
ALTER TABLE [dbo].[BankBranch] DROP CONSTRAINT [CK__BankBranc__Phone__6E01572D]
GO
ALTER TABLE [dbo].[TransactionTable] DROP CONSTRAINT [FK__Transacti__LoanI__236943A5]
GO
ALTER TABLE [dbo].[TransactionTable] DROP CONSTRAINT [FK__Transacti__Insur__22751F6C]
GO
ALTER TABLE [dbo].[TransactionTable] DROP CONSTRAINT [FK__Transacti__CardI__2180FB33]
GO
ALTER TABLE [dbo].[TransactionTable] DROP CONSTRAINT [FK__Transacti__Benef__245D67DE]
GO
ALTER TABLE [dbo].[TransactionTable] DROP CONSTRAINT [FK__Transacti__Accou__208CD6FA]
GO
ALTER TABLE [dbo].[Loan] DROP CONSTRAINT [FK__Loan__LoanTypeID__114A936A]
GO
ALTER TABLE [dbo].[Loan] DROP CONSTRAINT [FK__Loan__ApprovedBy__123EB7A3]
GO
ALTER TABLE [dbo].[Loan] DROP CONSTRAINT [FK__Loan__AccountID__10566F31]
GO
ALTER TABLE [dbo].[Insurance] DROP CONSTRAINT [FK__Insurance__Insur__0A9D95DB]
GO
ALTER TABLE [dbo].[Insurance] DROP CONSTRAINT [FK__Insurance__Appro__0B91BA14]
GO
ALTER TABLE [dbo].[Insurance] DROP CONSTRAINT [FK__Insurance__Accou__09A971A2]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK__Employee__Person__797309D9]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK__Employee__Employ__778AC167]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK__Employee__Branch__787EE5A0]
GO
ALTER TABLE [dbo].[CustomerFinancialHistory] DROP CONSTRAINT [FK__CustomerF__Custo__7F2BE32F]
GO
ALTER TABLE [dbo].[CustomerData] DROP CONSTRAINT [FK__CustomerD__Perso__7C4F7684]
GO
ALTER TABLE [dbo].[Card] DROP CONSTRAINT [FK__Card__CreditCard__1DB06A4F]
GO
ALTER TABLE [dbo].[Card] DROP CONSTRAINT [FK__Card__CardTypeID__1BC821DD]
GO
ALTER TABLE [dbo].[Card] DROP CONSTRAINT [FK__Card__ApprovedBY__1CBC4616]
GO
ALTER TABLE [dbo].[Card] DROP CONSTRAINT [FK__Card__AccountID__1AD3FDA4]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK__Account__Custome__02FC7413]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK__Account__Created__03F0984C]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK__Account__BranchC__02084FDA]
GO
ALTER TABLE [dbo].[Loan] DROP CONSTRAINT [DF__Loan__LoanPaid__14270015]
GO
ALTER TABLE [dbo].[Loan] DROP CONSTRAINT [DF__Loan__LoanAmount__1332DBDC]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [DF__Account__Balance__04E4BC85]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionTable]') AND type in (N'U'))
DROP TABLE [dbo].[TransactionTable]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Person]') AND type in (N'U'))
DROP TABLE [dbo].[Person]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoanType]') AND type in (N'U'))
DROP TABLE [dbo].[LoanType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loan]') AND type in (N'U'))
DROP TABLE [dbo].[Loan]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsuranceType]') AND type in (N'U'))
DROP TABLE [dbo].[InsuranceType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Insurance]') AND type in (N'U'))
DROP TABLE [dbo].[Insurance]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeType]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerFinancialHistory]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerFinancialHistory]
GO
/****** Object:  Table [dbo].[CustomerData]    Script Date: 8/2/2022 11:13:54 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerData]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerData]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CreditCardProvider]') AND type in (N'U'))
DROP TABLE [dbo].[CreditCardProvider]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CardType]') AND type in (N'U'))
DROP TABLE [dbo].[CardType]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Card]') AND type in (N'U'))
DROP TABLE [dbo].[Card]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BankBranch]') AND type in (N'U'))
DROP TABLE [dbo].[BankBranch]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
DROP FUNCTION [dbo].[SubtractMoney]
GO
DROP FUNCTION [dbo].[AddMoney]
GO
USE [master]
GO
DROP DATABASE [BankManagementGroup13]
GO