USE Consultorio
GO

-- Básico -- 
-- 1 --
SELECT Nome,Telefone FROM Paciente 

-- 2 -- 
SELECT Numero_sala, DataHora 
FROM Consulta
INNER JOIN Medico
ON Consulta.ID = Medico.ID
WHERE Nome = 'Juvenal' ORDER BY DataHora

-- 3 -- 
SELECT * FROM Medico WHERE Especialidade = 'Dentista'

-- 4 -- 
SELECT Nome
FROM Paciente
INNER JOIN Consulta
ON Paciente.ID = Consulta.ID_Paciente
WHERE Consulta.DataHora BETWEEN CONVERT(DATE, '01/01/2017', 103) AND CONVERT(DATE, '31/12/2017', 103)

-- 5 -- 
SELECT M.Nome, P.Nome
FROM Consulta 
INNER JOIN Medico AS M
ON Consulta.ID_Medico = M.ID
INNER JOIN Paciente AS P
ON Consulta.ID_Paciente = P.ID
WHERE Duracao >= 60

-- Avan�ado --
-- 1 --
SELECT TOP 10 MED.Nome [Nome do Medico]
FROM Consulta CON JOIN Medico MED
ON CON.ID_Medico = MED.ID
WHERE CON.Numero_Sala = 9

-- 2 --
SELECT DISTINCT Especialidade
,COUNT(Especialidade) [Quantidade de Especialidade]
FROM Medico 
GROUP BY Especialidade

-- 3 --
SELECT *
FROM Paciente
WHERE ID not in (
SELECT ID_Paciente
FROM Consulta
WHERE year(DataHora) = YEAR(getdate())
)

