USE Consultorio
GO


-- Avançado --
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

