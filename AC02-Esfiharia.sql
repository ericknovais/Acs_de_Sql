CREATE DATABASE Esfiharia
GO

Use Esfiharia
GO

CREATE TABLE Clientes(
ID_Cliente INT IDENTITY(1,1) 
,Nome VARCHAR(80) NOT NULL
,Endereco VARCHAR(100)
,CONSTRAINT pkCliente PRIMARY KEY (ID_Cliente)
)
GO

CREATE TABLE Telefones(
ID_Cliente INT NOT NULL
,Numero INT NOT NULL
,CONSTRAINT fkCliente_Telefone FOREIGN KEY(ID_Cliente) REFERENCES Clientes(ID_Cliente)  
)
GO

CREATE TABLE Pedidos(
Numero INT IDENTITY(1,1)
,DataHora DATETIME 
,ID_Cliente INT NOT NULL
,CONSTRAINT pkPedido PRIMARY KEY (Numero)
,CONSTRAINT fkCliente_Pedido FOREIGN KEY(ID_Cliente) REFERENCES Clientes(ID_Cliente)  
)
GO 

CREATE TABLE Produtos(
ID_Produto INT IDENTITY(1,1)
,Nome varchar(50) NOT NULL 
,CONSTRAINT pkProduto PRIMARY KEY(ID_Produto)   
)
GO

CREATE TABLE ItensPedidos(
NumeroPedido INT NOT NULL
,ID_Produto  INT NOT NULL
,Qtde INT NOT NULL
,CONSTRAINT fkNumeroPedidos_ItensPedido FOREIGN KEY(NumeroPedido) REFERENCES Pedidos(Numero)
,CONSTRAINT fkProduto_ItensPedido FOREIGN KEY(ID_Produto) REFERENCES Produtos(ID_Produto) 
)
GO