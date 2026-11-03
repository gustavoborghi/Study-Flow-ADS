
CREATE DATABASE IF NOT EXISTS study_flow;

USE study_flow;

-- 1. Usuario
CREATE TABLE Usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha_hash VARCHAR(255) NOT NULL
);

-- 2. Rotina
CREATE TABLE Rotina (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255),
    inicio_dia TIME NOT NULL,
    fim_dia TIME NOT NULL,
    id_usuario INT NOT NULL UNIQUE,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id)
);

-- 3. Compromisso
CREATE TABLE Compromisso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    dia_semana VARCHAR(20),
    horario_inicio TIME NOT NULL,
    horario_fim TIME NOT NULL,
    recorrente BOOLEAN NOT NULL DEFAULT FALSE,
    data DATE,
    id_rotina INT NOT NULL,
    FOREIGN KEY (id_rotina) REFERENCES Rotina(id)
);

-- 4. Objetivo
CREATE TABLE Objetivo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    prazo DATE,
    status VARCHAR(20) NOT NULL DEFAULT 'pendente',
    id_usuario INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id)
);

-- 5. Materia
CREATE TABLE Materia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    id_objetivo INT NOT NULL,
    FOREIGN KEY (id_objetivo) REFERENCES Objetivo(id)
);

-- 6. Tarefa
CREATE TABLE Tarefa (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    prazo DATE,
    status VARCHAR(20) NOT NULL DEFAULT 'pendente',
    id_materia INT NOT NULL,
    FOREIGN KEY (id_materia) REFERENCES Materia(id)
);

-- 7. PlanoEstudos
CREATE TABLE PlanoEstudos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'pendente',
    id_objetivo INT NOT NULL,
    FOREIGN KEY (id_objetivo) REFERENCES Objetivo(id)
);

-- 8. SessaoEstudo
CREATE TABLE SessaoEstudo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data DATE NOT NULL,
    horario_inicio TIME NOT NULL,
    horario_fim TIME NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'planejada',
    minutos_estudados INT,
    id_plano_estudos INT NOT NULL,
    id_materia INT NOT NULL,
    id_tarefa INT,
    FOREIGN KEY (id_plano_estudos) REFERENCES PlanoEstudos(id),
    FOREIGN KEY (id_materia) REFERENCES Materia(id),
    FOREIGN KEY (id_tarefa) REFERENCES Tarefa(id)
);

-- 9. Lembrete
CREATE TABLE Lembrete (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL,
    data_hora DATETIME NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'ativo',
    id_usuario INT NOT NULL,
    id_sessao_estudo INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id),
    FOREIGN KEY (id_sessao_estudo) REFERENCES SessaoEstudo(id)
);
