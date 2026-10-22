
CREATE DATABASE study_flow;

USE study_flow;

CREATE TABLE Usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha_hash VARCHAR(255) NOT NULL
);

CREATE TABLE Materia (
    id_materia INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cor VARCHAR(20),
    id_usuario INT NOT NULL,

    FOREIGN KEY (id_usuario)
        REFERENCES Usuario(id_usuario)
);

CREATE TABLE SessaoEstudo (
    id_sessao INT AUTO_INCREMENT PRIMARY KEY,
    data_estudo DATE NOT NULL,
    horario_inicio TIME NOT NULL,
    duracao_minutos INT NOT NULL,
    status VARCHAR(20) DEFAULT 'Planejada',
    id_usuario INT NOT NULL,
    id_materia INT NOT NULL,

    FOREIGN KEY (id_usuario)
        REFERENCES Usuario(id_usuario),

    FOREIGN KEY (id_materia)
        REFERENCES Materia(id_materia)
);

CREATE TABLE Meta (
    id_meta INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    prazo DATE,
    status VARCHAR(20) DEFAULT 'Em andamento',
    id_usuario INT NOT NULL,

    FOREIGN KEY (id_usuario)
        REFERENCES Usuario(id_usuario)
);
