CREATE DATABASE Biblioteca
GO

USE Biblioteca
GO

CREATE TABLE Livros(
Nome VARCHAR(100) NOT NULL
,Copia INT NOT NULL
,Status char(1) NOT NULL
,CONSTRAINT PK_Livro PRIMARY KEY CLUSTERED (Nome, Copia)  
)
GO 

CREATE TABLE Clientes(
Id_Cliente INT IDENTITY(1,1) 
,Nome VARCHAR(80) NOT NULL
,Telefone INT NOT NULL  
,CONSTRAINT PK_Cliente PRIMARY KEY(Id_Cliente) 
)
GO

CREATE TABLE Emprestimos(
 ID INT IDENTITY(1,1) 
,Livro VARCHAR(100) NOT NULL
,Copia INT NOT NULL
,ID_Cliente INT NOT NULL
,DataEmprestimo DATETIME NOT NULL
,DataDevolucaoProposta DATE
,DataDevolucaoEfetiva DATETIME
,Multa DECIMAL
,CONSTRAINT PK_Emprestimo PRIMARY KEY (ID)
,CONSTRAINT FK_LIvro_Copia FOREIGN KEY (Livro, Copia)
 REFERENCES Livros (Nome, Copia) 
,CONSTRAINT FK_Cliente FOREIGN KEY(ID_Cliente) 
 REFERENCES Clientes(Id_Cliente)  
)
GO 

