USE Biblioteca
GO 
-- Basico -- 
-- 1 --
SELECT distinct nome from Livros 

-- 2--
SELECT nome, copia from Livros where Status = 'livre' 

-- 3 --
SELECT CLI.Nome, LIV.Nome, LIV.copia, LIV.STATUS
FROM Livros as LIV 
JOIN Emprestimos as EMP on LIV.Nome = EMP.Livro AND LIV.Copia = EMP.Copia
JOIN Clientes as CLI on EMP.ID_Cliente = CLI.Id_Cliente WHERE
EMP.DataDevolucaoEfetiva IS NULL 

-- 4 --
SELECT Clientes.Nome from Clientes 
JOIN Emprestimos ON Clientes.Id_Cliente = Emprestimos.ID_Cliente 
WHERE Emprestimos.DataEmprestimo BETWEEN '2018-04-01' AND '2018-04-30' 

-- 5 --
SELECT * from Clientes where Telefone like '9%' 