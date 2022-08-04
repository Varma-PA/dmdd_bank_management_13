USE [BankManagementGroup13]
GO
ALTER TABLE [dbo].[TransactionTable] DROP CONSTRAINT [FK__Transacti__Trans__373B3228]
GO
ALTER TABLE [dbo].[TransactionTable] DROP CONSTRAINT [FK__Transacti__LoanI__3B0BC30C]
GO
ALTER TABLE [dbo].[TransactionTable] DROP CONSTRAINT [FK__Transacti__Insur__3A179ED3]
GO
ALTER TABLE [dbo].[TransactionTable] DROP CONSTRAINT [FK__Transacti__CardI__39237A9A]
GO
ALTER TABLE [dbo].[TransactionTable] DROP CONSTRAINT [FK__Transacti__Benef__3BFFE745]
GO
ALTER TABLE [dbo].[TransactionTable] DROP CONSTRAINT [FK__Transacti__Accou__382F5661]
GO
ALTER TABLE [dbo].[Loan] DROP CONSTRAINT [FK__Loan__LoanTypeID__2610A626]
GO
ALTER TABLE [dbo].[Loan] DROP CONSTRAINT [FK__Loan__ApprovedBy__2704CA5F]
GO
ALTER TABLE [dbo].[Loan] DROP CONSTRAINT [FK__Loan__AccountID__251C81ED]
GO
ALTER TABLE [dbo].[Insurance] DROP CONSTRAINT [FK__Insurance__Insur__1D7B6025]
GO
ALTER TABLE [dbo].[Insurance] DROP CONSTRAINT [FK__Insurance__Appro__1E6F845E]
GO
ALTER TABLE [dbo].[Insurance] DROP CONSTRAINT [FK__Insurance__Accou__1C873BEC]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK__Employee__Person__0C50D423]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK__Employee__Employ__0A688BB1]
GO
ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [FK__Employee__Branch__0B5CAFEA]
GO
ALTER TABLE [dbo].[CustomerFinancialHistory] DROP CONSTRAINT [FK__CustomerF__Custo__1209AD79]
GO
ALTER TABLE [dbo].[CustomerData] DROP CONSTRAINT [FK__CustomerD__Perso__0F2D40CE]
GO
ALTER TABLE [dbo].[Card] DROP CONSTRAINT [FK__Card__CardTypeID__308E3499]
GO
ALTER TABLE [dbo].[Card] DROP CONSTRAINT [FK__Card__CardProvid__32767D0B]
GO
ALTER TABLE [dbo].[Card] DROP CONSTRAINT [FK__Card__ApprovedBY__318258D2]
GO
ALTER TABLE [dbo].[Card] DROP CONSTRAINT [FK__Card__AccountID__2F9A1060]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK__Account__Custome__15DA3E5D]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK__Account__Created__16CE6296]
GO
ALTER TABLE [dbo].[Account] DROP CONSTRAINT [FK__Account__BranchC__14E61A24]
GO
/****** Object:  Table [dbo].[TransactionType]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionType]') AND type in (N'U'))
DROP TABLE [dbo].[TransactionType]
GO
/****** Object:  Table [dbo].[TransactionTable]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionTable]') AND type in (N'U'))
DROP TABLE [dbo].[TransactionTable]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Person]') AND type in (N'U'))
DROP TABLE [dbo].[Person]
GO
/****** Object:  Table [dbo].[LoanType]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoanType]') AND type in (N'U'))
DROP TABLE [dbo].[LoanType]
GO
/****** Object:  Table [dbo].[Loan]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Loan]') AND type in (N'U'))
DROP TABLE [dbo].[Loan]
GO
/****** Object:  Table [dbo].[InsuranceType]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InsuranceType]') AND type in (N'U'))
DROP TABLE [dbo].[InsuranceType]
GO
/****** Object:  Table [dbo].[Insurance]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Insurance]') AND type in (N'U'))
DROP TABLE [dbo].[Insurance]
GO
/****** Object:  Table [dbo].[EmployeeType]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EmployeeType]') AND type in (N'U'))
DROP TABLE [dbo].[EmployeeType]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') AND type in (N'U'))
DROP TABLE [dbo].[Employee]
GO
/****** Object:  Table [dbo].[CustomerFinancialHistory]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerFinancialHistory]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerFinancialHistory]
GO
/****** Object:  Table [dbo].[CustomerData]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CustomerData]') AND type in (N'U'))
DROP TABLE [dbo].[CustomerData]
GO
/****** Object:  Table [dbo].[CardType]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CardType]') AND type in (N'U'))
DROP TABLE [dbo].[CardType]
GO
/****** Object:  Table [dbo].[CardProvider]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CardProvider]') AND type in (N'U'))
DROP TABLE [dbo].[CardProvider]
GO
/****** Object:  Table [dbo].[Card]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Card]') AND type in (N'U'))
DROP TABLE [dbo].[Card]
GO
/****** Object:  Table [dbo].[BankBranch]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BankBranch]') AND type in (N'U'))
DROP TABLE [dbo].[BankBranch]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 8/3/2022 9:09:44 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
DROP TABLE [dbo].[Account]
GO
/****** Object:  UserDefinedFunction [dbo].[isPersonRegistered]    Script Date: 8/3/2022 9:09:44 PM ******/
DROP FUNCTION [dbo].[isPersonRegistered]
GO
/****** Object:  UserDefinedFunction [dbo].[CalculateInsuranceStatus]    Script Date: 8/3/2022 9:09:44 PM ******/
DROP FUNCTION [dbo].[CalculateInsuranceStatus]
GO
/****** Object:  UserDefinedFunction [dbo].[calculateCreditScoreStatus]    Script Date: 8/3/2022 9:09:44 PM ******/
DROP FUNCTION [dbo].[calculateCreditScoreStatus]
GO
USE [master]
GO
/****** Object:  Database [BankManagementGroup13]    Script Date: 8/3/2022 9:09:44 PM ******/
DROP DATABASE [BankManagementGroup13]
GO
