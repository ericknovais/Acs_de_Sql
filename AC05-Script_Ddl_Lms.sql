
--CREATE DATABASE LMS_DB
--GO

--USE MASTER
--DROP DATABASE LMS_DB

USE LMS_DB
GO

--CREATE--
--Usuario--
CREATE TABLE Usuario(
ID INT IDENTITY(1,1) NOT NULL, --ADICIONADO IDENTITY(1,1) PARA SER AUTO INCREMENT
Login INT NOT NULL,
Senha VARCHAR(20) NOT NULL,
DtExpiracao DATE NOT NULL
)
GO

-- ALTER --
-- Usuario
ALTER TABLE Usuario
ADD CONSTRAINT PK_User PRIMARY KEY (ID)
GO

ALTER TABLE Usuario
ADD CONSTRAINT UQ_Login UNIQUE (Login)
GO

ALTER TABLE Usuario
ADD CONSTRAINT DF_DtExpiracao DEFAULT CONVERT(DATETIME, '01/01/1900', 103) FOR DtExpiracao
GO

--CREATE-- 
--Coordenador--
CREATE TABLE Coordenador(
ID INT IDENTITY(1,1) NOT NULL, --ADICIONADO IDENTITY(1,1) PARA SER AUTO INCREMENT
Id_usuario INT NOT NULL,
Nome VARCHAR(150) NOT NULL,
Email VARCHAR(60) NOT NULL,
Celular INT NOT NULL
)
GO

--ALTER--
-- Coordenador--
ALTER TABLE Coordenador
ADD CONSTRAINT PK_Coordenador PRIMARY KEY (ID)
GO

ALTER TABLE Coordenador
ADD CONSTRAINT FK_Id_UsuarioCoordnador FOREIGN KEY (Id_usuario) REFERENCES Usuario(ID)
GO 

ALTER TABLE Coordenador
ADD CONSTRAINT UQ_EmailCoordenador UNIQUE (Email)
GO --UK_Email Alterado para UQ_EmailCoordenador

ALTER TABLE Coordenador
ADD CONSTRAINT UQ_CelularCoordenador UNIQUE (Celular)
GO -- UK_Celulat Alterado para UQ_CelularCoordenador 

--CREATE--
--Aluno--
CREATE TABLE Aluno(
ID INT IDENTITY(1,1) NOT NULL, --ADICIONADO IDENTITY(1,1) PARA SER AUTO INCREMENT
Id_usuario INT NOT NULL,
Nome VARCHAR(150) NOT NULL,
Email VARCHAR(60) NOT NULL,
Celular INT NOT NULL,
RA INT NOT NULL,
Foto VARCHAR(300) NULL,
)
GO

--ALTER--
-- Aluno-- 
ALTER TABLE Aluno
ADD CONSTRAINT PK_Aluno PRIMARY KEY (ID)
GO

ALTER TABLE Aluno
ADD CONSTRAINT FK_Id_UsuarioAluno FOREIGN KEY (Id_usuario) REFERENCES Usuario(ID)
GO

ALTER TABLE Aluno
ADD CONSTRAINT UQ_EmailAluno UNIQUE (Email) 
GO --Uk_Email Alterado para UQ_EmailAluno 

ALTER TABLE Aluno
ADD CONSTRAINT UQ_CelularAluno UNIQUE (Celular) --Voltar aqui
GO --Uk_Celular Alterado para UQ_CelularAluno

--CREATE--
--Professor--
CREATE TABLE Professor(
ID INT IDENTITY(1,1) NOT NULL, --ADICIONADO IDENTITY(1,1) PARA SER AUTO INCREMENT
Id_usuario INT NOT NULL,
Email VARCHAR(60) NOT NULL,
Celular INT NOT NULL,
Apelido VARCHAR(50) NOT NULL
)
GO

--ALTER-- 
-- Professor--
ALTER TABLE Professor
ADD CONSTRAINT PK_Professor PRIMARY KEY (ID)
GO

ALTER TABLE Professor
ADD CONSTRAINT FK_Id_UsuarioProfessor FOREIGN KEY (Id_usuario) REFERENCES Usuario(ID)
GO

ALTER TABLE Professor 
ADD CONSTRAINT UQ_EmailProfessor UNIQUE (Email) 
GO --UK_Email alterado para UQ_EmailProfessor

ALTER TABLE Professor
ADD CONSTRAINT UQ_CelularProfessor UNIQUE (Celular) --Voltar aqui
GO --UK_Celular alterado para UQ_CelularProfessor

--CREATE--
--Disciplina--
CREATE TABLE Disciplina(
ID INT IDENTITY(1,1) NOT NULL, --ADICIONADO IDENTITY(1,1) PARA SER AUTO INCREMENT 
Nome VARCHAR(80) NOT NULL,
Data DATE NOT NULL,
Status VARCHAR(7) NOT NULL,
PlanoDeEnsino  VARCHAR(300) NOT NULL, -- COLOQUEI VARCHAR PARTINDO DO PRÉ-SUPOSTO DE QUE ESTE CAMPO VAI SER PREENCHIDO POR UMA URL APONTADA PARA ALGUM ARQUIVO DOCX OU PDF
CargaHoraria TINYINT NOT NULL,
Competencias VARCHAR(300) NOT NULL, -- COLOQUEI VARCHAR PARTINDO DO PRÉ-SUPOSTO DE QUE ESTE CAMPO VAI SER PREENCHIDO POR UMA URL APONTADA PARA ALGUM ARQUIVO DOCX OU PDF
Habilidades VARCHAR(300) NOT NULL, -- COLOQUEI VARCHAR PARTINDO DO PRÉ-SUPOSTO DE QUE ESTE CAMPO VAI SER PREENCHIDO POR UMA URL APONTADA PARA ALGUM ARQUIVO DOCX OU PDF
Ementa VARCHAR(300) NOT NULL, -- COLOQUEI VARCHAR PARTINDO DO PRÉ-SUPOSTO DE QUE ESTE CAMPO VAI SER PREENCHIDO POR UMA URL APONTADA PARA ALGUM ARQUIVO DOCX OU PDF
ConteudoProgramatico VARCHAR(300) NOT NULL, -- COLOQUEI VARCHAR PARTINDO DO PRÉ-SUPOSTO DE QUE ESTE CAMPO VAI SER PREENCHIDO POR UMA URL APONTADA PARA ALGUM ARQUIVO DOCX OU PDF
BibliografiaBasica VARCHAR(300) NOT NULL, -- COLOQUEI VARCHAR PARTINDO DO PRÉ-SUPOSTO DE QUE ESTE CAMPO VAI SER PREENCHIDO POR UMA URL APONTADA PARA ALGUM ARQUIVO DOCX OU PDF
BibliografiaComplementar VARCHAR(300) NOT NULL, -- COLOQUEI VARCHAR PARTINDO DO PRÉ-SUPOSTO DE QUE ESTE CAMPO VAI SER PREENCHIDO POR UMA URL APONTADA PARA ALGUM ARQUIVO DOCX OU PDF
PercentualPratico TINYINT NOT NULL,
PercentualTeorico TINYINT NOT NULL,
IdCoordenador INT NOT NULL
)
GO

--ALTER--
--Disciplina--
ALTER TABLE Disciplina 
ADD CONSTRAINT PK_Disciplina PRIMARY KEY(ID) 
GO

ALTER TABLE Disciplina 
ADD CONSTRAINT UQ_NomeDisciplina UNIQUE(Nome)
GO

ALTER TABLE Disciplina 
ADD CONSTRAINT DF_DataDisciplina DEFAULT(GETDATE()) FOR Data
GO

ALTER TABLE Disciplina
ADD CONSTRAINT CK_StatusDisciplina CHECK(STATUS in('Aberta','Fechada'))
GO 


ALTER TABLE Disciplina
ADD CONSTRAINT DF_StatusDisciplina DEFAULT('Aberta') FOR STATUS
GO 

ALTER TABLE Disciplina
ADD CONSTRAINT  CK_CargaHorariaDisciplina CHECK(CargaHoraria in(40, 80)) 
GO  

ALTER TABLE Disciplina
ADD CONSTRAINT  CK_PercentualPraticoDisciplina CHECK(PercentualPratico in(00, 100)) 
GO  

ALTER TABLE Disciplina
ADD CONSTRAINT  CK_PercentualTeoricoDisciplina CHECK(PercentualTeorico in(00, 100)) 
GO 

ALTER TABLE Disciplina
ADD CONSTRAINT FK_Coordenador_Disciplina FOREIGN KEY(IdCoordenador) REFERENCES Coordenador(ID)
GO 

--Create--
--Curso--
CREATE TABLE Curso
(
ID INT IDENTITY(1,1) NOT NULL
,Nome VARCHAR(60) NOT NULL
)
GO

--Alter--
--Curso--
ALTER TABLE Curso
ADD CONSTRAINT PK_Curso PRIMARY KEY(ID)
GO

ALTER TABLE Curso
ADD CONSTRAINT UQ_NomeCurso UNIQUE(Nome)
GO 

--Create Disciplina Ofertada--
CREATE TABLE DisciplinaOFertada
(
ID INT IDENTITY(1, 1) NOT NULL
,IdCoordenador INT
,DtInicialMatricula DATE NULL --Aceita valor null como entrada e pode ser alterado depois 
,DtFimMatricula DATE NULL
,IdDisciplina INT NOT NULL
,IdCurso INT NOT NULL
,Ano INT NOT NULL
,Semestre CHAR(1) NOT NULL -- Tipo de dado char(1) porque só vai acaitar os valor 1 ou 2
,Turma CHAR(1) NOT NULL 
,IdProfessor INT NULL	    --Aceita NULL
,Metodologia VARCHAR(100) NULL --Aceita NULL 
,Recursos VARCHAR(100) NULL --Aceita NULL
,CriterioAvaliacao VARCHAR(100) --Aceita NULL
,PlanoDeAulas VARCHAR(100) --Aceita NULL
)
GO

--ALTER--
--DisciplinaOfertada--
ALTER TABLE DisciplinaOfertada
ADD CONSTRAINT PK_DisciplinaOfertada PRIMARY KEY(ID)
GO 

ALTER TABLE DisciplinaOfertada
ADD CONSTRAINT FK_Coordenador_DisciplinaOfertada FOREIGN KEY(IdCoordenador) REFERENCES Coordenador(ID)
GO 

ALTER TABLE DisciplinaOfertada
ADD CONSTRAINT FK_Disciplina_DisciplinaOfertada FOREIGN KEY(IdDisciplina) REFERENCES Disciplina(ID)
GO

ALTER TABLE DisciplinaOfertada
ADD CONSTRAINT FK_Curso_DisciplinaOfertada FOREIGN KEY(IdCurso) REFERENCES Curso(ID)
GO

ALTER TABLE DisciplinaOfertada
ADD CONSTRAINT CK_Ano_DisciplinaOfertada CHECK(Ano > 1900 AND Ano < 2100) -- Ano só aceita valor maior que 1900 e menor que 2100
GO

ALTER TABLE DisciplinaOfertada
ADD CONSTRAINT CK_Semestre_DisciplinaOfertada CHECK(Semestre in('1','2')) --Esse campo só aceita o valor 1 ou 2 
GO

ALTER TABLE DisciplinaOfertada
ADD CONSTRAINT CK_Turma_DisciplinaOfertada CHECK(Turma like'[A-Z]') 
GO

ALTER TABLE DisciplinaOfertada
ADD CONSTRAINT FK_Professor_DisciplinaOfertada FOREIGN KEY(IdProfessor) REFERENCES Professor(ID)
GO

--Create--
--SolicitacaoMatricula--

CREATE TABLE SolicitacaoMatricula
(
ID INT IDENTITY(1,1) NOT NULL
,IdAluno INT NOT NULL
,IdDisciplinaOfertada INT NOT NULL
,DtSolicitacao DATE NULL
,IdCoordenador INT NULL 
,Status varchar(10) NULL  
)
GO 

--Alter--
--SolicitacaoMatricula--

ALTER TABLE SolicitacaoMatricula
ADD CONSTRAINT PK_SolicitacaoMatricula PRIMARY KEY(ID)
GO

ALTER TABLE SolicitacaoMatricula
ADD CONSTRAINT FK_Aluno_SolicitacaoMatricula FOREIGN KEY(IdAluno) REFERENCES Aluno(ID)
GO

ALTER TABLE SolicitacaoMatricula
ADD CONSTRAINT FK_DisciplinaOfertada_SolicitacaoMatricula FOREIGN KEY(IdDisciplinaOfertada)
REFERENCES DisciplinaOfertada(ID)
GO  

ALTER TABLE SolicitacaoMatricula
ADD CONSTRAINT DF_DtSolicitacao_SolicitacaoMatricula DEFAULT(GETDATE()) FOR DtSolicitacao
GO

ALTER TABLE SolicitacaoMatricula
ADD CONSTRAINT FK_Coordenador_SolicitacaoMatricula FOREIGN KEY(IdCoordenador) 
REFERENCES Coordenador(ID)
GO

ALTER TABLE SolicitacaoMatricula
ADD CONSTRAINT DF_Status_SolicitacaoMatricula DEFAULT('Solicidata') FOR Status
GO 

ALTER TABLE SolicitacaoMatricula
ADD CONSTRAINT CK_Status_SolicitacaoMatricula CHECK(STATUS in('Solicitada','Aprovada'))
GO

--Create--
--Atividade--
CREATE TABLE Atividade 
(
Id INT IDENTITY(1,1) NOT NULL
,Titulo VARCHAR(50) NOT NULL
,Descricao VARCHAR(100) NULL
,Conteudo VARCHAR(100)  NOT NULL
,Tipo VARCHAR(20) NOT NULL
,Extras VARCHAR(100) NULL
,IdProfessor INT NOT NULL   
)
GO

--Alter--
--Atividade--
ALTER TABLE Atividade
ADD CONSTRAINT PK_Atividade PRIMARY KEY(ID)
GO

ALTER TABLE Atividade
ADD CONSTRAINT UQ_Titulo_Atividade UNIQUE(Titulo)
GO

ALTER TABLE Atividade
ADD CONSTRAINT CK_Tipo_Atividade CHECK(Tipo in('Resposta Aberta','Teste'))
GO

ALTER TABLE Atividade
ADD CONSTRAINT FK_Professor_Atividade FOREIGN KEY(IdProfessor)
REFERENCES Professor(ID)
GO

 