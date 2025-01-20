INSERT INTO Users (Name, Password, CardNumber, Balance, IsAdmin)
VALUES 
('Aisha Ahmed', 'SecurePass123', 1234567890123456, 15000.50, 0),
('Busher Abo Dan', 'SuperSecure!', 6543210987654321, 300000.00, 1),
('Salim Omar', 'Password@123', 5678901234567890, 750.75, 0),
('Nura Bello', 'MyBank123!', 1122334455667788, 25000.00, 0),
('Zainab Musa', 'Zainab456!', 9988776655443322, 500000.00, 1);

INSERT INTO Invoices (CompanyName, BankGiro, OCR, AmountToPay, IsPayable)
VALUES
('GreenTech Solutions', 987654321, 123456789, 12500.00, 1),
('Elite Fashion House', 123456789, 987654321, 7500.50, 0),
('Foodies Paradise', 234567890, 345678901, 4500.75, 1),
('Urban Fitness Club', 876543210, 567890123, 1200.00, 1),
('Digital Horizons Inc.', 345678901, 789012345, 9200.99, 0);
