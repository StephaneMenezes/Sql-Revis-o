/* COMANDOS LIKE E NOT LIKE */ 

SELECT * FROM dbo.ANALISES
WHERE CONSUMISTA IS NOT NULL

/* ESCOLHENDO ONDE A ESCOLARIDADE COME?A COM 1? */

SELECT * FROM dbo.ANALISES
WHERE CONSUMISTA IS NOT NULL AND ESCOLARIDADE LIKE '1?%'

/* PARA ESCOLHER POR EXEMPLO, S? O QUE TIVEREM COMPLETO NO GRAU DE ESCOLARIDADE */ 

SELECT * FROM dbo.ANALISES
WHERE CONSUMISTA IS NOT NULL AND ESCOLARIDADE LIKE '% completo'

/* ESCOLHENDO APENAS OS DADOS EM QUE O NIVEL DE ESCOLARIDADE N?O ? INCOMPLETO */ 

SELECT * FROM dbo.ANALISES
WHERE CONSUMISTA IS NOT NULL AND ESCOLARIDADE NOT LIKE '% incompleto'

