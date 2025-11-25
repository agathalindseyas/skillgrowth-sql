-- UPDATES

UPDATE Colaborador
SET cargo = 'Analista Sênior'
WHERE id_colaborador = 1;

UPDATE Matricula
SET status = 'Concluído', nota = 9.5
WHERE id_matricula = 2;

UPDATE Turma
SET vagas = 15
WHERE id_turma = 2;

-- DELETES

DELETE FROM Certificado
WHERE id_certificado = 1;

DELETE FROM Matricula
WHERE id_matricula = 2;

DELETE FROM Colaborador
WHERE id_colaborador = 2;
