-- Inserts Usuário
INSERT INTO Usuario (Login, Senha) VALUES(7656,'kose12')
INSERT INTO Usuario (Login, Senha) VALUES(4543,'msdfd13')
INSERT INTO Usuario (Login, Senha) VALUES(7864,'kmfgsk09')
INSERT INTO Usuario (Login, Senha) VALUES(3455,'kjndfs4')
INSERT INTO Usuario (Login, Senha) VALUES(1435,'fdxdx3')
INSERT INTO Usuario (Login, Senha) VALUES(1456,'jkbl3')
INSERT INTO Usuario (Login, Senha) VALUES(3456,'lblb3')
INSERT INTO Usuario (Login, Senha) VALUES(4366,'kbççb4')
INSERT INTO Usuario (Login, Senha) VALUES(6543,'blbh32')
INSERT INTO Usuario (Login, Senha) VALUES(6534,'bllbh4')
INSERT INTO Usuario (Login, Senha) VALUES(5764,'bkkkkk3')
INSERT INTO Usuario (Login, Senha) VALUES(5475,'bkçj3')
INSERT INTO Usuario (Login, Senha) VALUES(4743,'kjbç332')
INSERT INTO Usuario (Login, Senha) VALUES(6523,'98y43n')
INSERT INTO Usuario (Login, Senha) VALUES(4654,'7tnbjl')
INSERT INTO Usuario (Login, Senha) VALUES(8532,'jbae44')

SELECT * FROM Usuario

-- Inserts Coordenador
INSERT INTO Coordenador (Id_usuario,Nome,Email,Celular) VALUES (1, 'Ana Cristina Oliveira','ana.cristina@impacta.edu.br', 1140028922)

SELECT * FROM Coordenador

-- Inserts Professor
INSERT INTO Professor (Id_usuario,Email,Celular,Apelido) VALUES (2,'yuri.henrique@impacta.edu.br', 1190300099,'Yuri TW')
INSERT INTO Professor (Id_usuario,Email,Celular,Apelido) VALUES (3,'gustavo.bianchi@impacta.edu.br', 1190302299,'Gustavo SQL')
INSERT INTO Professor (Id_usuario,Email,Celular,Apelido) VALUES (4,'joao.victorino@impacta.edu.br', 1190110099,'João SCRUM')
INSERT INTO Professor (Id_usuario,Email,Celular,Apelido) VALUES (5,'guilherme.feulo@impacta.edu.br', 1190366099,'Guilherme Python')
INSERT INTO Professor (Id_usuario,Email,Celular,Apelido) VALUES (6,'fabio.teixeira@impacta.edu.br', 1191307099,'Fábio Azure')

SELECT * FROM Professor

-- Inserts Aluno 
INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA) VALUES (7, 'Paulo Ferreira','paulo.jesus@aluno.impacta.com.br', 1196843029, 1802133)
INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA) VALUES (8, 'Erick Novais','erick.navais@aluno.impacta.com.br', 1196643029, 1802125)
INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA) VALUES (9, 'Leonardo Oliveira','leonardo.oliveira@aluno.impacta.com.br', 1196843089, 1802333)
INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA) VALUES (10, 'Caio Silva','caio.silva@aluno.impacta.com.br', 1196843012, 1802177)
INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA) VALUES (11, 'Carolina Marques','carolina.marques@aluno.impacta.com.br', 1196843034, 1802178)
INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA) VALUES (12,'Elian José','elian.jose@aluno.impacta.com.br', 1196843009, 1802138)
INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA) VALUES (13,'João Ferreira','joao.ferreira@aluno.impacta.com.br', 1196843022, 1802100)
INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA) VALUES (14,'Henrique Munoz','henrique.munoz@aluno.impacta.com.br', 1193843029, 1802111)
INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA) VALUES (15,'Fabiano Velez','fabiano.velez@aluno.impacta.com.br', 1196836529, 1802144)
INSERT INTO Aluno (Id_usuario,Nome,Email,Celular,RA) VALUES (16,'Joana Carron','joana.carron@aluno.impacta.com.br', 1196043029, 1803133)

SELECT * FROM Aluno
