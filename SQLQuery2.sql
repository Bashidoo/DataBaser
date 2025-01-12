CREATE TABLE Users (
 SocialSecurityNumber INT PRIMARY KEY,
 userName VARCHAR(50),
 userEmail VARCHAR(100)
 );

 CREATE TABLE Account(
 AccountID INT PRIMARY KEY,
 SocialSecurityNumber INT,
 Balance Decimal(10,2),
 FOREIGN KEY(SocialSecurityNumber) REFERENCES Users(SocialSecurityNumber),
 );

 CREATE TABLE LOAN(
 LoanID INT PRIMARY KEY,
 AccountID INT,
 FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
 );

 CREATE TABLE BANK(
 bankBalance DECIMAL (30,2),
 bankName VARCHAR(50),
 listofAccounts INT,
 FOREIGN KEY (listofAccounts) REFERENCES Account(AccountID)
 );

 CREATE TABLE Transactions(
 transactionID INT PRIMARY KEY,
 AccountID INT,
 typeOfTransaction VARCHAR(80),
 dateTime Date,
  FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
  );



 
