CREATE TABLE Produtos ( codProduto smallint, NomeProduto varchar(20), preco money, quant smallint, Total As (preco * quant))

SELECT * FROM Produtos

INSERT INTO Produtos VALUES (1, 'Mouse', 15.00, 2)
INSERT INTO Produtos VALUES (2, 'Teclado', 55.00, 10)
INSERT INTO Produtos VALUES (3, 'FONE', 85.00, 52)
INSERT INTO Produtos VALUES (9, 'MOUSEPAD', 85.00, 52)

SELECT * FROM Produtos
/* utilizando a soma */

SELECT SUM(Total) FROM Produtos