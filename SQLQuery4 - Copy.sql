SELECT Transactions.AccountID, Account.AccountID
FROM Transactions
JOIN Account ON Transactions.AccountID = Account.AccountID
