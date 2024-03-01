CREATE TABLE Orders
(
    OrderID INT PRIMARY KEY,
    ClientID INT,
    DriverID INT,
    DetalhesPedido TEXT,
    DataEntrega DATE,
    Status VARCHAR(50),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
);

SELECT TOP (1000)
    [OrderID]
      , [ClientID]
      , [DriverID]
      , [DetalhesPedido]
      , [DataEntrega]
      , [Status]
FROM [dbo].[Orders]
WHERE [Status] = 'finalizado'
ORDER BY [DriverID] DESC

INSERT INTO Orders
    (OrderID, ClientID, DriverID, DetalhesPedido, DataEntrega, Status)
VALUES
    (1, 1, 1, 'Carregamento para Sorocaba', '2024-10-10', 'agendado'),
    (2, 2, 2, 'Carregamento para São José dos Campos', '2024-10-21', 'em percurso'),
    (3, 3, 3, 'Carregamento para Campos do Jordão', '2024-05-21', 'finalizado')

UPDATE Orders
SET [Status] = 'em curso'
WHERE OrderID = 2;

SELECT TOP (1000)
    [OrderID]
      , [ClientID]
      , [DriverID]
      , [DetalhesPedido]
      , [DataEntrega]
      , [Status]
FROM [dbo].[Orders]

DELETE FROM Orders WHERE Status='finalizado';
SELECT TOP (1000)
    [OrderID]
      , [ClientID]
      , [DriverID]
      , [DetalhesPedido]
      , [DataEntrega]
      , [Status]
FROM [dbo].[Orders]