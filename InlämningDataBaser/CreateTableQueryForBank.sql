CREATE TABLE Customers (
    customerID INT PRIMARY KEY,
    customerName VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    Email VARCHAR(200) NOT NULL
);

CREATE TABLE Accounts (
    accountID INT PRIMARY KEY,
    cardNumber BIGINT NOT NULL,
    typeOfAccount VARCHAR(10) NOT NULL,
    balance DECIMAL(9, 2) NOT NULL,
    customerID INT NOT NULL,
    FOREIGN KEY (customerID) REFERENCES Customers(customerID)
);

CREATE TABLE Transactions (
    transactionID INT PRIMARY KEY,
    typeOfTransaction VARCHAR(10) NOT NULL,
    transTimeStamp DATETIME NOT NULL,
    amount DECIMAL(9, 2) NOT NULL,
    accountID INT NOT NULL,
    FOREIGN KEY (accountID) REFERENCES Accounts(accountID)
);
