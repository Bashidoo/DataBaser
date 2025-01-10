SELECT * FROM Kunder
WHERE Stad IN ('Stockholm', 'Göteborg')
ORDER BY Namn ASC;

SELECT * FROM Produkter
WHERE Pris BETWEEN 100 AND 500;

SELECT Kunder.Namn, Produkter.Produktnamn
FROM Ordrar
INNER JOIN Kunder ON Ordrar.KundID = Kunder.KundID
INNER JOIN Produkter ON Ordrar.ProduktID = Produkter.ProduktID;

SELECT Kunder.Namn, COUNT(Ordrar.ProduktID) AS TotalProductss
FROM Ordrar
INNER JOIN Kunder ON Ordrar.KundID = Kunder.KundID
GROUP BY Kunder.Namn
HAVING COUNT(Ordrar.ProduktID) > 2;

SELECT TOP 5 Produktnamn, Pris
FROM Produkter
ORDER BY Pris DESC;


/*2.Hitta alla produkter som kostar mellan 100 och 500 SEK.
3.Hämta alla ordrar med deras kundnamn och produktnamn genom att använda JOIN.
4.Räkna hur många ordrar varje kund har gjort och visa endast de kunder med fler än 2 ordrar.
5.Visa de 5 dyraste produkterna.*/