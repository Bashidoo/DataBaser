
CREATE TABLE Kunder(
KundID INT PRIMARY KEY,
Namn VARCHAR(40),
Epost VARCHAR (200),
Stad VARCHAR (50)
);

CREATE TABLE Produkter (
ProduktID INT PRIMARY KEY,
Produktnamn VARCHAR (50),
Pris Decimal(12, 2)
);

CREATE TABLE Ordrar(
OrderID INT PRIMARY KEY,
KundID INT,
ProduktID INT,
OrderDatum DATE
FOREIGN KEY (KundID) REFERENCES Kunder(KundID),
FOREIGN KEY (ProduktID) REFERENCES Produkter(ProduktID)
);