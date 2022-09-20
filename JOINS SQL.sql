USE AdventureWorks2017;

-- PRATICANDO COM JOINS:

-- INNER JOIN:  MONTE UMA TABELA QUE CONTEM OS SEGUINTES DADOS:  BUSINESSENTYID, NAME, PHONENUMBERTYPEID, PHONENUMBER:


SELECT * 
FROM Person.PhoneNumberType;

SELECT * 
FROM Person.PersonPhone;


SELECT TOP(35) T.BusinessEntityID, T.PhoneNumberTypeID, T.PhoneNumber, P.Name
FROM Person.PersonPhone AS T
INNER JOIN Person.PhoneNumberType AS P 
ON T.PhoneNumberTypeID = P.PhoneNumberTypeID;


-- INNE JOIN:  UMA TABELA COM ADDRESSID, CITY, STATEPROVINCEID, NOME DO ESTADO: 

SELECT * FROM Person.StateProvince; 

SELECT * FROM Person.Address;

SELECT A.AddressID, A.City, A.StateProvinceID, S.NAME
FROM Person.Address AS A
INNER JOIN Person.StateProvince AS S 
ON A.StateProvinceID = S.StateProvinceID; 

-- UNION: COMBINAR DOIS OU MAIS RESULTADOS DE UM SELECT EM UM SÓ RESULTADO: 

SELECT ProductID, Name , ProductNumber
FROM Production.Product
WHERE NAME LIKE '%Chain%' 
UNION 
SELECT ProductID, Name, ProductNumber
FROM Production.Product
WHERE NAME LIKE '%Decal%'; 

SELECT FirstName, Title
FROM Person.Person
WHERE Title = 'Mr.'
UNION
SELECT FirstName, Title
FROM Person.Person
WHERE MiddleName = 'A'

-- SELF JOIN: AGRUPAR DADOS DENTRO DE UMA MESMA TABELA: 

# Write your MySQL query statement below
/* Write your T-SQL query statement below */
