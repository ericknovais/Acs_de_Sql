
USE Biblioteca
GO
-- Basico  
-- 1
SELECT Nome from Livros WHERE Status = 'L'
GO
-- 2
SELECT Nome, Copia FROM Livros WHERE Status = 'L' 
GO
-- 3
Select * from Emprestimos emp
join Clientes cli on cli.Id_Cliente = emp.ID_Cliente
join Livros liv on emp.Copia = liv.Copia   

select * from Emprestimos