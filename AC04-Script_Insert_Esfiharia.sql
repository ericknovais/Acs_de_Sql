USE Esfiharia
GO
  
-----------------------------------------------
ALTER TABLE ItensPedidos ADD PrecoVenda DECIMAL(6,2) NULL
GO
ALTER TABLE Produtos ADD PrecoTabelado DECIMAL(6,2) NULL
GO
ALTER TABLE ItensPedidos ADD CONSTRAINT CK_ItemPedidoQtde CHECK(Qtde >0)
GO
ALTER TABLE Pedidos ADD CONSTRAINT df_PedidoDataHora DEFAULT(GETDATE()) FOR DataHora
GO
ALTER TABLE Produtos ADD CONSTRAINT UQ_ProdutoNome UNIQUE(Nome)
-----------------------------------------------

INSERT INTO Clientes (Nome, Endereco)
VALUES ('José', 'Av. Três, numero1')
GO

INSERT INTO Telefones (Id_Cliente,Numero)
VALUES (1, 93783259),
	   (1, 87453452)
GO

INSERT INTO Clientes (Nome, Endereco)
VALUES ('Maria', 'Av. Impar,nr 33,apto 12')
GO

INSERT INTO Produtos (Nome, PrecoTabelado)
VALUES ('Calabresa',3.50),
	   ('Frango', 3.50),
	   ('Brócolis', 4.00)
GO


INSERT INTO Pedidos (DataHora, ID_Cliente)
VALUES ('08-20-2017 23:11',1),
	   ('08-27-2017 22:30',1),
	   ('08-27-2017 22:30',1),
	   ('09-21-2017 19:59',2) 
	   
INSERT INTO ItensPedidos (NumeroPedido, ID_Produto, Qtde, PrecoVenda)
VALUES(1, 1, 3, 10.50),
	  (2, 2, 2, 7.00),
	  (3, 2, 2, 7.00),
	  (4, 1, 7, 24.50),
	  (4, 3, 4, 16.00)	   

---------------------------------------------
--Select para verificar se itens estão correntos	   
SELECT 
CLI.Nome Clientes
,CLI.Endereco
,TEL.Numero
,ITP.NumeroPedido
,ITP.Qtde
,PRD.Nome
,PED.DataHora
FROM CLIENTES CLI
LEFT JOIN TELEFONES TEL ON CLI.ID_Cliente = TEL.ID_Cliente
LEFT JOIN Pedidos PED ON CLI.ID_Cliente = PED.ID_Cliente
LEFT JOIN ItensPedidos ITP ON PED.Numero = ITP.NumeroPedido
LEFT JOIN Produtos PRD ON ITP.ID_Produto = PRD.ID_Produto
GROUP BY CLI.Nome, CLI.Endereco , TEL.Numero, ITP.NumeroPedido, ITP.Qtde,
PRD.Nome, PED.DataHora
ORDER BY DATAHORA 

--select * from Pedidos

--use master
--drop database Esfiharia 

