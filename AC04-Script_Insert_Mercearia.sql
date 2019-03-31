USE Mercearia
GO

INSERT INTO Fornecedor (Nome)
VALUES('Ambev'),
	  ('P&G'),
	  ('Dist.PPG')
GO  

INSERT INTO Produto (Nome, ID_FornecedorPadrao)
VALUES ('Skol', 1),
	   ('Fralda Pampers', 2),
	   ('Fralda Pampers', 3) 
GO

INSERT INTO Compra (NF, DiasEntrega, Data, ValorTotal) 
VALUES (112434, 3, '10/21/2017', 8243.00), 
	   (324235, 10, '10/21/2017', 1230.00),
	   (455464, 2, '10/26/2017', 500.00)   
GO

INSERT INTO ItemCompra (ID_Produto, ID_Fornecedor, NF_Compra, QTDE, ValorCompra)
VALUES (1, 1, 112434, 300, 8243.00),
	   (2, 2, 324235, 25, 1230.00),
	   (3, 3, 455464, 10, 500.00)  
GO 

select * from ItemCompra
delete from ItemCompra
