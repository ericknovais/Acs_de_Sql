USE LMS_DB
GO

-- 1 Lista de Alunos --
SELECT ALN.Nome FROM DisciplinaOFertada DPO
JOIN Disciplina DIP ON DIP.ID = DPO.IdDisciplina 
JOIN  SolicitacaoMatricula STM ON STM.IdDisciplinaOfertada = DPO.ID
JOIN Aluno ALN ON ALN.ID = STM.IdAluno 
WHERE DIP.Nome = 'Linguagem SQL' 
GO

