CREATE TABLE Clients (ClientID INT PRIMARY KEY, Nome VARCHAR(100), Empresa VARCHAR(100), Endereço VARCHAR(200), Contato VARCHAR(50));

SELECT TOP (1000) [ClientID]
      ,[Nome]
      ,[Empresa]
      ,[Endereço]
      ,[Contato]
  FROM [dbo].[Clients]
  ORDER BY [Nome] DESC


INSERT INTO Clients (ClientID, Nome, Empresa, Endereço, Contato)
VALUES (1, 'Alberto Lemmos', 'Honda SA', 'AV. Antartica 150', 'a.lemmos@outlook.com'),
       (2, 'Adrea Sanches Nascimento', 'HP do Brasil', 'Rua Indaiá 55', 'a.sanches@gmail.com'),
       (3, 'Helena Ruiz', 'Apple SA', 'Rua Alberto Rammos 155', 'h.ruiz@gmail.com');