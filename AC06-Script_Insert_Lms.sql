USE LMS_DB
GO

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

-- Inserts Curso 
INSERT INTO Curso (Nome) VALUES ('ADM')
INSERT INTO Curso (Nome) VALUES ('CC')
INSERT INTO Curso (Nome) VALUES ('EC')
INSERT INTO Curso (Nome) VALUES ('SI')
INSERT INTO Curso (Nome) VALUES ('ADS')
INSERT INTO Curso (Nome) VALUES ('BD')
INSERT INTO Curso (Nome) VALUES ('GTI')
INSERT INTO Curso (Nome) VALUES ('JD')
INSERT INTO Curso (Nome) VALUES ('PG')
INSERT INTO Curso (Nome) VALUES ('PM')
INSERT INTO Curso (Nome) VALUES ('RC')
INSERT INTO Curso (Nome) VALUES ('ADS EAD')

SELECT * FROM Curso

-- Inserts Disciplina 
DECLARE @PLANO_DE_ENSINO_URL AS VARCHAR(300)
SET @PLANO_DE_ENSINO_URL = 'https://drive.google.com/file/d/11jDoAHgUPvBNggANlepTX_sPaPGgqiyP/view'

INSERT INTO Disciplina (Nome,Data,Status,PlanoDeEnsino,CargaHoraria,Competencias,Habilidades,Ementa,ConteudoProgramatico,BibliografiaBasica,BibliografiaComplementar,PercentualPratico,PercentualTeorico,IdCoordenador)
VALUES ('Linguagem SQL', GETDATE(), 'Aberta', @PLANO_DE_ENSINO_URL, 
80, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL, 
@PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL, 100, 00, 1)

SET @PLANO_DE_ENSINO_URL = 'https://docs.google.com/document/d/1QyCpDkeAL21iWp47wpDxEErfRrX_Cil31dCtCajYkF4/edit'

INSERT INTO Disciplina (Nome,Data,Status,PlanoDeEnsino,CargaHoraria,Competencias,Habilidades,Ementa,ConteudoProgramatico,BibliografiaBasica,BibliografiaComplementar,PercentualPratico,PercentualTeorico,IdCoordenador)
VALUES ('Tecnologias Web', GETDATE(), 'Aberta', @PLANO_DE_ENSINO_URL, 
80, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL,
@PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL, 100, 00, 1)

SELECT * FROM Disciplina

-- Inserts Disciplina Ofertada
DECLARE @PLANO_DE_ENSINO_URL AS VARCHAR(300)
SET @PLANO_DE_ENSINO_URL = 'https://drive.google.com/file/d/11jDoAHgUPvBNggANlepTX_sPaPGgqiyP/view'

INSERT INTO DisciplinaOFertada (IdCoordenador,IdDisciplina,IdCurso,Ano,Semestre,Turma,IdProfessor,Metodologia,Recursos,CriterioAvaliacao,PlanoDeAulas)
VALUES (1, 1, 4, 2018, '1', 'B', 2, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL)

INSERT INTO DisciplinaOFertada (IdCoordenador,IdDisciplina,IdCurso,Ano,Semestre,Turma,IdProfessor,Metodologia,Recursos,CriterioAvaliacao,PlanoDeAulas)
VALUES (1, 2, 5, 2018, '1', 'B', 1, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL, @PLANO_DE_ENSINO_URL)

SELECT * FROM DisciplinaOfertada

-- Updates Disciplina Ofertada - Atribuição de Professor e datas de matrícula inicial e final
UPDATE DisciplinaOFertada SET IdProfessor = 5 WHERE ID = 1
UPDATE DisciplinaOFertada SET IdProfessor = 1 WHERE ID = 2
UPDATE DisciplinaOFertada 
SET DtInicialMatricula = CONVERT(DATE, '01/02/2018', 103), DtFimMatricula = CONVERT(DATE, '24/05/2018', 103) 
WHERE ID = 1
UPDATE DisciplinaOFertada 
SET DtInicialMatricula = CONVERT(DATE, '02/02/2018', 103), DtFimMatricula = CONVERT(DATE, '25/05/2018', 103) 
WHERE ID = 2

-- Alteração do Script
ALTER TABLE SolicitacaoMatricula DROP CONSTRAINT DF_Status_SolicitacaoMatricula

ALTER TABLE SolicitacaoMatricula
ADD CONSTRAINT DF_Status_SolicitacaoMatricula DEFAULT('Solicitada') FOR Status
GO 

-- Primeira SolicitacaoMatricula
INSERT INTO SolicitacaoMatricula(IdAluno, IdDisciplinaOfertada, DtSolicitacao, IdCoordenador)
VALUES(1, 1, '02/01/2018', 1) 
INSERT INTO SolicitacaoMatricula(IdAluno, IdDisciplinaOfertada, DtSolicitacao, IdCoordenador)
VALUES(2, 1, '05/01/2018', 1)
INSERT INTO SolicitacaoMatricula(IdAluno, IdDisciplinaOfertada, DtSolicitacao, IdCoordenador)
VALUES(3, 1, '10/01/2018', 1)
    
-- Segunda SolicitacaoMatricula
INSERT INTO SolicitacaoMatricula(IdAluno, IdDisciplinaOfertada, DtSolicitacao, IdCoordenador)
VALUES(4,  2, '03/01/2018', 1) 
INSERT INTO SolicitacaoMatricula(IdAluno, IdDisciplinaOfertada, DtSolicitacao, IdCoordenador)
VALUES(7,  2, '07/01/2018', 1)
INSERT INTO SolicitacaoMatricula(IdAluno, IdDisciplinaOfertada, DtSolicitacao, IdCoordenador)
VALUES(10, 2,'09/01/2018', 1)

select * from SolicitacaoMatricula

--Update SolicitacaoMatricula
UPDATE SolicitacaoMatricula
SET Status = 'Aprovada' WHERE IdAluno = 2  
UPDATE SolicitacaoMatricula
SET Status = 'Aprovada' WHERE IdAluno = 10  
UPDATE SolicitacaoMatricula
SET Status = 'Aprovada' WHERE IdAluno = 7  
UPDATE SolicitacaoMatricula
SET Status = 'Aprovada' WHERE IdAluno = 3  

INSERT INTO Atividade(Titulo, Conteudo, Tipo, IdProfessor)
VALUES('Modelagem', 'Fazer um modelo relacional','Teste',2) 

INSERT INTO Atividade(Titulo, Conteudo, Tipo, IdProfessor)
VALUES('Formulario', ' Formulário sobre HTTP, URL e Cliente x Servidor','Teste',1) 

Select * from Atividade

--AtividadeVinculada
INSERT INTO AtividadeVinculada(IdAtividade, IdProfessor, IdDisciplinaOfertada,Rotulo, Status, DtInicioRespostas, DtFimRespostas)
VALUES(1, 2, 1, 'AC01', 'Disponibilizada', '20/02/2018', '27/02/2018')

select * from AtividadeVinculada  