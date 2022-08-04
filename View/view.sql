--- VIEW 
CREATE VIEW BankBranchVSServicesTaken AS
SELECT temp1.*, temp2.NumLoanTaker, temp3.NumCardTaker FROM 
((SELECT bb.BranchCode,  COUNT(DISTINCT i.InsuranceID)[NumInsauranceTaker] 
FROM dbo.BankBranch bb JOIN dbo.Account a ON bb.BranchCode = a.BranchCode 
LEFT JOIN dbo.Insurance i ON a.AccountID = i.AccountID 
group by bb.BranchCode) temp1 
JOIN 
(SELECT bb.BranchCode,  COUNT(DISTINCT l.LoanID)[NumLoanTaker] 
FROM dbo.BankBranch bb JOIN dbo.Account a ON bb.BranchCode = a.BranchCode 
JOIN dbo.Loan l ON a.AccountID = l.AccountID 
group by bb.BranchCode) temp2 ON temp1.BranchCode = temp2.BranchCode 
JOIN 
(SELECT bb.BranchCode, COUNT(DISTINCT c.CardID)[NumCardTaker] 
FROM dbo.BankBranch bb JOIN dbo.Account a ON bb.BranchCode = a.BranchCode 
LEFT JOIN dbo.Card c ON a.AccountID = c.AccountID 
group by bb.BranchCode) temp3 ON temp2.BranchCode = temp3.BranchCode );

SELECT * FROM [BankBranchVSServicesTaken];


