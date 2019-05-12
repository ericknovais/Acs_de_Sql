USE LMS_DB
GO

-- 1 Lista de Alunos --
SELECT ALN.Nome FROM DisciplinaOFertada DPO
JOIN Disciplina DIP ON DIP.ID = DPO.IdDisciplina 
JOIN  SolicitacaoMatricula STM ON STM.IdDisciplinaOfertada = DPO.ID
JOIN Aluno ALN ON ALN.ID = STM.IdAluno 
WHERE DIP.Nome = 'Linguagem SQL' 
GO

-- 2 Disciplinas Ofertadas--
SELECT DIP.Nome FROM DisciplinaOFertada  DPO 
JOIN Disciplina DIP ON DIP.ID = DPO.IdDisciplina
WHERE DPO.DtInicialMatricula >= GETDATE()
AND  DPO.DtFimMatricula <= GETDATE()
GO

-- 3 Trabalhos não entregues --
SELECT ENT.Status, ALN.Nome, DIP.Nome FROM DisciplinaOFertada DPO
JOIN Disciplina DIP ON DIP.ID = DPO.IdDisciplina 
JOIN SolicitacaoMatricula STM ON STM.IdDisciplinaOfertada = DPO.ID
JOIN Aluno ALN ON ALN.ID = STM.IdAluno
LEFT JOIN Entrega ENT ON ENT.IdAluno = ALN.ID
LEFT JOIN AtividadeVinculada AVI ON AVI.ID = ENT.IdAtividadeVinculada
LEFT JOIN Atividade ATV ON ATV.Id = AVI.IdAtividade  
GO      

-- 4 Trabalho não corrigidos --
SELECT * FROM Entrega 
WHERE Nota IS NULL AND Status <> 'Corrigido' 
AND IdProfessor = 2
GO     

-- 5 Disciplina ofertada sem professor -- 
SELECT * FROM DisciplinaOFertada 
WHERE IdProfessor IS NULL
GO 

-- 6 Login --
SELECT USU.Login,USU.Senha,ALU.Nome,ALU.Email FROM Usuario USU
JOIN Aluno ALU ON USU.ID = ALU.Id_usuario
WHERE USU.DtExpiracao < GETDATE()
GO 

-- 7 Nomes Diciplinas --
SELECT Nome FROM Disciplina
WHERE CargaHoraria = 80 
ORDER BY Data DESC
GO 

-- 8 E-mais professores --
SELECT 
Email 
+ '( ' + 
Apelido 
+ ' )'
[Emails Professores ]
FROM Professor
GO 

-- 9 Nomes professores e coordenador --
SELECT PRF.Apelido [Nome professor] ,CDN.Nome [Nome Coordenador] FROM DisciplinaOFertada DPO
JOIN Coordenador CDN ON DPO.IdCoordenador = CDN.ID
JOIN Professor PRF ON DPO.IdProfessor = PRF.ID
GO    

-- 10 Numeros de celular alunos --
SELECT Celular FROM Aluno WHERE Celular LIKE '%99'
GO

-- 11 Logins de id par, mas não multiplos por 3 --
SELECT * FROM Usuario 
WHERE (ID % 2) = 0 AND NOT (ID % 3) = 0
GO

-- 12 Nome das Disciplinas --
SELECT DPN.Nome FROM DisciplinaOFertada DPO
JOIN Disciplina DPN ON DPN.ID = DPO.IdDisciplina
JOIN Professor PRF ON PRF.ID = DPO.IdProfessor   
WHERE (Turma ='A' OR Turma ='B') 
AND Ano = 2018 
AND (Semestre = 1 OR Semestre = 2)
AND PRF.Email <> 'adasmastor@faculdadeimpacta.com.br'
GO  