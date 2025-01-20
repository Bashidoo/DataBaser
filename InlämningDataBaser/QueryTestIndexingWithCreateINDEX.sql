SET STATISTICS TIME ON;
SET STATISTICS IO ON;
/* Before creating Index Each query took about 150ms to compute, now it takes 70ms. 
*/
/*CREATE INDEX IX_Customers_CustomerID ON Customers (customerID);
CREATE INDEX IX_Accounts_CustomerID_Balance ON Accounts (customerID, balance);
CREATE INDEX IX_Transactions_AccountID_TransTimeStamp ON Transactions (accountID, transTimeStamp);*/


SELECT 
    Customers.customerID, 
    Customers.customerName, 
    SUM(Accounts.balance) AS TotalBalance
FROM 
    Customers
JOIN 
    Accounts 
    ON Customers.customerID = Accounts.customerID
WHERE 
    Customers.customerID = 1
GROUP BY 
    Customers.customerID, Customers.customerName;


	SELECT 
    Customers.customerID, 
    Customers.customerName, 
    SUM(Accounts.balance) AS TotalBalance
FROM 
    Customers
JOIN 
    Accounts 
    ON Customers.customerID = Accounts.customerID
WHERE 
    Customers.customerID = 1
GROUP BY 
    Customers.customerID, Customers.customerName;

	SELECT TOP 3 
    Accounts.accountID, 
    Accounts.balance 
FROM 
    Accounts
ORDER BY 
    Accounts.balance DESC;

	SELECT 
    Transactions.accountID, 
    SUM(CASE WHEN Transactions.typeOfTransaction = 'Deposit' THEN Transactions.amount ELSE 0 END) AS TotalDeposits,
    SUM(CASE WHEN Transactions.typeOfTransaction = 'Withdraw' THEN Transactions.amount ELSE 0 END) AS TotalWithdrawals
FROM 
    Transactions
WHERE 
    Transactions.accountID = 1
GROUP BY 
    Transactions.accountID;

	SELECT 
    transactionID,
    accountID,
    typeOfTransaction,
    amount,
    transTimeStamp
FROM 
    Transactions
WHERE 
    transTimeStamp >= '2024-12-20'
ORDER BY 
    transTimeStamp DESC;


	SELECT TOP 5 
    Customers.customerID, 
    Customers.customerName, 
    SUM(Transactions.amount) AS TotalTransactionAmount
FROM 
    Customers
JOIN 
    Accounts 
    ON Customers.customerID = Accounts.customerID
JOIN 
    Transactions 
    ON Accounts.accountID = Transactions.accountID
WHERE 
    Transactions.transTimeStamp >= DATEADD(MONTH, -6, GETDATE())
GROUP BY 
    Customers.customerID, 
    Customers.customerName
ORDER BY 
    TotalTransactionAmount DESC;


	SELECT 
    Customers.customerID, 
    Customers.customerName, 
    FORMAT(Transactions.transTimeStamp, 'yyyy-MM') AS TransactionMonth,
    SUM(CASE WHEN Transactions.typeOfTransaction = 'Deposit' THEN Transactions.amount ELSE 0 END) AS TotalDeposits,
    SUM(CASE WHEN Transactions.typeOfTransaction = 'Withdraw' THEN Transactions.amount ELSE 0 END) AS TotalWithdrawals,
    SUM(CASE WHEN Transactions.typeOfTransaction = 'Deposit' THEN Transactions.amount 
             WHEN Transactions.typeOfTransaction = 'Withdraw' THEN -Transactions.amount 
             ELSE 0 END) AS NetBalance
FROM 
    Customers
JOIN 
    Accounts 
    ON Customers.customerID = Accounts.customerID
JOIN 
    Transactions 
    ON Accounts.accountID = Transactions.accountID
WHERE 
    Transactions.transTimeStamp >= DATEADD(YEAR, -1, GETDATE())
GROUP BY 
    Customers.customerID, 
    Customers.customerName, 
    FORMAT(Transactions.transTimeStamp, 'yyyy-MM')
ORDER BY 
    Customers.customerID, TransactionMonth;



