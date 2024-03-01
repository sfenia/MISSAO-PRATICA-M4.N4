CREATE TABLE Drivers (DriverID INT PRIMARY KEY, Nome VARCHAR(100), CNH VARCHAR(20), Endereço VARCHAR(200), Contato VARCHAR(50));

SELECT TOP (1000) [DriverID]
      ,[Nome]
      ,[CNH]
      ,[Endereço]
      ,[Contato]
  FROM [dbo].[Drivers]
  


INSERT INTO Drivers (DriverID, Nome, CNH, Endereço, Contato)
VALUES (1, 'Rodrigo de O. Alarcon', '85891529512', 'Rua Terra Roxa 150', 'oliveira.alarcon@outlook.com'),
       (2, 'Raphael Lopes Alarcon', '52975330910', 'Rua Amapá 55', 'rapha.alarcon@gmail.com'),
       (3, 'Pietro Rodrigo Kiraly Alarcon', '28749198387', 'Rua Dom Pedro Silva 155', 'pietro.alarcon@gmail.com');