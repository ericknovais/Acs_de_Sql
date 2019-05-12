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

-- 3 Trabalhos n�o entregues --
SELECT ENT.Status, ALN.Nome, DIP.Nome FROM DisciplinaOFertada DPO
JOIN Disciplina DIP ON DIP.ID = DPO.IdDisciplina 
JOIN SolicitacaoMatricula STM ON STM.IdDisciplinaOfertada = DPO.ID
JOIN Aluno ALN ON ALN.ID = STM.IdAluno
LEFT JOIN Entrega ENT ON ENT.IdAluno = ALN.ID
LEFT JOIN AtividadeVinculada AVI ON AVI.ID = ENT.IdAtividadeVinculada
LEFT JOIN Atividade ATV ON ATV.Id = AVI.IdAtividade
GO      





