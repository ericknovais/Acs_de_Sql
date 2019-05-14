USE Biblioteca
GO 
-- Basico -- 
-- 1 --
SELECT distinct nome from Livros 
GO
-- 2--
SELECT nome, copia from Livros where Status = 'livre' 
GO
-- 3 --
SELECT CLI.Nome, LIV.Nome, LIV.copia, LIV.STATUS
FROM Livros as LIV 
JOIN Emprestimos as EMP on LIV.Nome = EMP.Livro AND LIV.Copia = EMP.Copia
JOIN Clientes as CLI on EMP.ID_Cliente = CLI.Id_Cliente WHERE
EMP.DataDevolucaoEfetiva IS NULL 
GO
-- 4 --
SELECT Clientes.Nome from Clientes 
JOIN Emprestimos ON Clientes.Id_Cliente = Emprestimos.ID_Cliente 
WHERE Emprestimos.DataEmprestimo BETWEEN '2018-04-01' AND '2018-04-30' 
GO
-- 5 --
SELECT * from Clientes where Telefone like '9%' 

-- Avancado --
-- 1 --
SELECT TOP 10 LIV.Nome,
COUNT(LIV.status) QTD
FROM Livros LIV 
JOIN Emprestimos EMP
on LIV.Nome = EMP.Livro and LIV.Copia = EMP.Copia
group by LIV.Nome,LIV.Status
GO
-- 2 -- 
SELECT  CLI.Nome
,(SELECT COUNT(Multa) FROM Emprestimos ) [QTD Emprestimo]
,(SELECT SUM(Multa) FROM Emprestimos) [Valor Total] 
FROM Emprestimos EMP
JOIN Clientes CLI ON CLI.Id_Cliente = EMP.ID_Cliente
WHERE EMP.Multa IS NOT NULL   
GO
-- 3 -- 
SELECT Nome FROM Livros 
WHERE Nome NOT IN(SELECT Livro FROM Emprestimos 
				  WHERE YEAR(DataEmprestimo) = YEAR('2018')) 
GO
 
