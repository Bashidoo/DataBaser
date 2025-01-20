
INSERT INTO Kunder (KundID, Namn, Epost, Stad) 
VALUES 
(1, 'Emma Karlsson', 'emma.karlsson@example.com', 'Stockholm'),
(2, 'Erik Johansson', 'erik.johansson@example.com', 'Göteborg'),
(3, 'Sara Lindberg', 'sara.lindberg@example.com', 'Malmö'),
(4, 'Johan Andersson', 'johan.andersson@example.com', 'Uppsala'),
(5, 'Anna Svensson', 'anna.svensson@example.com', 'Örebro');


INSERT INTO Ordrar (OrderID, KundID, ProduktID, OrderDatum) 
VALUES 
(1, 1, 2, '2025-01-05'), -- Emma Karlsson buys a Kaffebryggare
(2, 2, 1, '2025-01-06'), -- Erik Johansson buys a Morgonrock
(3, 3, 3, '2025-01-07'), -- Sara Lindberg buys a Vattenkokare
(4, 4, 5, '2025-01-08'), -- Johan Andersson buys a Skrivbordslampa
(5, 5, 4, '2025-01-09'); -- Anna Svensson buys a Dammsugare
