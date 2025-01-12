
INSERT INTO Users (SocialSecurityNumber, userName, userEmail)
VALUES 
(12345678, 'Emma Karlsson', 'emma.karlsson@domain.com'),
(87654321, 'Liam Svensson', 'liam.svensson@domain.com');


INSERT INTO Account (AccountID, SocialSecurityNumber, Balance)
VALUES 
(1, 12345678, 22500.75),
(2, 87654321, 15000.00);

INSERT INTO LOAN (LoanID, AccountID)
VALUES 
(101, 1),
(102, 2);

INSERT INTO BANK (bankBalance, bankName, listofAccounts)
VALUES 
(1000000.00, 'NordBanken', 1),
(2000000.00, 'SveaBank', 2);


INSERT INTO Transactions (transactionID, AccountID, typeOfTransaction, dateTime)
VALUES 
(7001, 1, 'Deposit', '2025-01-10'),
(7002, 1, 'Withdrawal', '2025-01-11'),
(7003, 2, 'Deposit', '2025-01-09'),
(7004, 2, 'Transfer', '2025-01-08');
