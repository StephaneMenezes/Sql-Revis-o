USE AdventureWorks2017;

SELECT*
FROM sales.SalesOrderDetail;

-- CONTANDO A QUANTIDADE DE PRODUTOS. 

SELECT ProductID, Count(ProductID) FROM Sales.SalesOrderDetail
GROUP BY ProductID;

-- SELECIONANDO PESSOAS COM O MESMO PRIMEIRO NOME: 

SELECT FirstName, COUNT(FirstName) FROM Person.Person
GROUP BY FirstName
ORDER BY COUNT(FirstName) DESC;

-- SELECIONANDO PESSOAS COM O MESMO NOME DO MEIO E ORDERNANDO POR ORDEM ALFABETICA:

SELECT MiddleName, COUNT(MiddleName) AS 'NOME DO MEI0' FROM Person.Person
GROUP BY MiddleName
ORDER BY COUNT(MiddleName);

-- Selecione os dez produtos com as maiorees médias de vendas do maior para o menor: 

SELECT SalesOrderID, AVG(SalesOrderDetailID) AS 'MÉDIA VENDAS' FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
ORDER BY [MÉDIA VENDAS] DESC;

-- Experiência 1 - Consultando as vendas pelo ID e o Nome do Produto: 

SELECT S.SalesOrderID, P.ProductID, P.NAME 
FROM Sales.SalesOrderDetail AS S 
INNER JOIN Production.Product AS P
ON S.ProductID = P.ProductID

-- Selecione os dez produtos com os maiores preços do maior para o menor: 

SELECT TOP(10) ROUND(SUM(UnitPrice),0) AS 'SOMA PRODUTOS', ProductID  FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY [SOMA PRODUTOS] DESC;


-- Having é utilizando para filtrar dados que já estão agrupados;

-- Quantidade de pessoas em que o Nome se repete mais de 10x 
SELECT FirstName, count(FirstName) as "quantidade" 
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FIRSTNAME) > 10 ;

SELECT TOP (10) * FROM Sales.SalesOrderDetail;

-- Quantidade de produtos em que as vendas estão entre 162k e 500k 

SELECT PRODUCTID, SUM(LineTotal) FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000;

SELECT TOP(5) *  FROM Person.Person; 

-- Quantidade de pessoas em que o Nome se repete mais de 10x e que o título começa com Mr. 

SELECT Title, FirstName, COUNT(FirstName) FROM Person.Person
WHERE Title LIKE 'Mr.%'
GROUP BY FirstName, Title
HAVING COUNT(FirstName) > 10; 


SELECT TOP (4) * FROM Person.Address; 

-- Quantidade de provincia que tem mais de 1000 cadastros 

SELECT StateProvinceID, Count(StateProvinceID) As 'Qtd. Provincias' 
FROM Person.Address
GROUP BY StateProvinceID
HAVING Count(StateProvinceID) > 1000; 

--Produtos que tem media de vendas menor que 1milhao

SELECT ProductID, AVG(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000;

 -- RENOMEANDO COLUNAS:

 SELECT TOP(10) FirstName AS 'PrimeiroNome', LastName As 'UltimoNome'
 FROM Person.Person;

 SELECT TOP(10) ProductNumber AS 'N° Produto'
 FROM Production.Product; 

 SELECT TOP(10) UnitPrice AS 'Preço Unitario' 
 FROM Sales.SalesOrderDetail; 
