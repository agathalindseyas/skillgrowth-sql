-- Inserção de dados iniciais
INSERT INTO Colaborador (nome, cpf, cargo, setor, data_admissao) VALUES
('Ana Souza', '111.222.333-44', 'Analista', 'TI', '2022-03-10'),
('Carlos Lima', '555.666.777-88', 'Designer', 'Marketing', '2021-09-21'),
('Marina Alves', '999.888.777-66', 'Engenheira', 'Projetos', '2023-01-15');

INSERT INTO Instrutor (nome, especialidade, contato_email) VALUES
('Juliana Ribeiro', 'Soft Skills', 'juliana@exemplo.com'),
('Ricardo Menezes', 'Tecnologia', 'ricardo@exemplo.com');

INSERT INTO Curso (titulo, carga_horaria, categoria, descricao) VALUES
('Gestão de Projetos', 20, 'Administração', 'Curso introdutório sobre gestão.'),
('Excel Avançado', 15, 'Tecnologia', 'Uso avançado de planilhas.');

INSERT INTO Turma (id_curso, id_instrutor, data_inicio, data_fim, local, vagas) VALUES
(1, 1, '2024-06-01', '2024-06-05', 'Sala 101', 25),
(2, 2, '2024-06-10', '2024-06-12', 'Lab 202', 20);

INSERT INTO Matricula (id_colaborador, id_turma, data_matricula, status, nota) VALUES
(1, 1, '2024-05-10', 'Concluído', 9.0),
(2, 1, '2024-05-12', 'Cursando', NULL),
(3, 2, '2024-05-15', 'Concluído', 8.5);

INSERT INTO Certificado (id_matricula, data_emissao, arquivo_path) VALUES
(1, '2024-06-06', '/certificados/ana_projetos.pdf'),
(3, '2024-06-13', '/certificados/marina_excel.pdf');

-- CONSULTAS OBRIGATÓRIAS

-- 1. Listar todos os colaboradores
SELECT * FROM Colaborador;

-- 2. Turmas com curso e instrutor
SELECT t.id_turma, c.titulo, i.nome AS instrutor
FROM Turma t
JOIN Curso c ON t.id_curso = c.id_curso
JOIN Instrutor i ON t.id_instrutor = i.id_instrutor;

-- 3. Matrículas concluídas
SELECT c.nome, m.status, m.nota
FROM Matricula m
JOIN Colaborador c ON m.id_colaborador = c.id_colaborador
WHERE m.status = 'Concluído';

-- 4. Cursos ordenados pela maior carga horária
SELECT titulo, carga_horaria
FROM Curso
ORDER BY carga_horaria DESC;

-- 5. Mostrar dois instrutores apenas
SELECT * FROM Instrutor LIMIT 2;
