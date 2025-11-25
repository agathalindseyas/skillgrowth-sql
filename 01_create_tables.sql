-- Tabela: Colaborador
CREATE TABLE Colaborador (
    id_colaborador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    cargo VARCHAR(50),
    setor VARCHAR(50),
    data_admissao DATE
);

-- Tabela: Instrutor
CREATE TABLE Instrutor (
    id_instrutor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    contato_email VARCHAR(100)
);

-- Tabela: Curso
CREATE TABLE Curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    carga_horaria INT,
    categoria VARCHAR(50),
    descricao TEXT
);

-- Tabela: Turma
CREATE TABLE Turma (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    id_curso INT NOT NULL,
    id_instrutor INT NOT NULL,
    data_inicio DATE,
    data_fim DATE,
    local VARCHAR(100),
    vagas INT,
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso),
    FOREIGN KEY (id_instrutor) REFERENCES Instrutor(id_instrutor)
);

-- Tabela: Matricula
CREATE TABLE Matricula (
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_colaborador INT NOT NULL,
    id_turma INT NOT NULL,
    data_matricula DATE,
    status VARCHAR(20),
    nota DECIMAL(4,2),
    FOREIGN KEY (id_colaborador) REFERENCES Colaborador(id_colaborador),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);

-- Tabela: Certificado
CREATE TABLE Certificado (
    id_certificado INT PRIMARY KEY AUTO_INCREMENT,
    id_matricula INT NOT NULL,
    data_emissao DATE,
    arquivo_path VARCHAR(255),
    FOREIGN KEY (id_matricula) REFERENCES Matricula(id_matricula)
);
