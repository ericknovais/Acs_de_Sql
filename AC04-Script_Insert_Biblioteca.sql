USE Biblioteca
GO
----------------------------------------------------------
CREATE TABLE StatusEmprestimo
(
Cod_Status INT NOT NULL IDENTITY(1,1)
,Desc_Status varchar(50) NOT NULL
,CONSTRAINT PK_Cod_Status PRIMARY KEY (Cod_Status) 
)
GO 
ALTER TABLE Livros ADD Cod_Status INT NOT NULL
GO  
ALTER TABLE Livros ADD CONSTRAINT FK_LivroStatus FOREIGN KEY(Cod_Status) REFERENCES
StatusEmprestimo(Cod_Status)
GO 
ALTER TABLE Emprestimos ADD CONSTRAINT DK_EmprestimoDtDevolucao
CHECK (DataEmprestimo < DataDevolucaoProposta) 
GO
ALTER TABLE Emprestimos ADD CONSTRAINT DF_EmprestimoDataEmprestimo DEFAULT (GETDATE())
FOR DataEmprestimo
GO
----------------------------------------------------------

INSERT INTO Clientes (Nome, Telefone)
VALUES ('José da Silva', 991235344),
	   ('Igor Pereira', 33120123)
GO

INSERT INTO StatusEmprestimo (Desc_Status)
VALUES ('Atrasado'),
	   ('Livre'),
	   ('Emprestado')
GO 

INSERT INTO Livros (Nome, Copia, Status, Cod_Status)
VALUES ('A Arte da Guerra', 1, 'A', 1),
	   ('A Arte da Guerra', 2, 'L', 2),
	   ('O Pequeno Príncipe', 1, 'E', 3)
GO


INSERT INTO Emprestimos (Livro, Copia, ID_Cliente, DataEmprestimo, 
						 DataDevolucaoEfetiva, Multa)
VALUES ('A Arte da Guerra', 1, 1,'08/10/2017', '09/10/2017', 11.00),
	   ('O Pequeno Príncipe', 1, 2, '09/15/2017', '10/15/2017', NULL) 
GO
 