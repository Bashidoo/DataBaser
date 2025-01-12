
INSERT INTO Transactions (transactionID, AccountID, typeOfTransaction, dateTime)
VALUES (7005, 3, 'Deposit', '2025-01-12');


SELECT * FROM Transactions

Select * FROM Transactions WHERE AccountID = 3;

UPDATE Transactions
SET typeOfTransaction = 'Deposit'
WHERE transactionID = 7005

DELETE FROM Transactions
WHERE transactionID = 3;

