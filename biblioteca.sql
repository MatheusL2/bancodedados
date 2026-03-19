CREATE database biblioteca_pessoal_1S2026;
USE biblioteca_pessoal_1S2026;
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    email VARCHAR(255),
    senha VARCHAR(255),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(128),
    descricao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Autor (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    ano_nascimento YEAR,
    ano_morte YEAR,
    apresentacao TEXT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Editora (
    id_editora INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    cidade VARCHAR(64),
    estado VARCHAR(64),
    pais VARCHAR(64),
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE Livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    id_autor INT,
    id_editora INT,
    id_categoria INT,
    titulo VARCHAR(255),
    sinopse TEXT,
    ano_publicacao YEAR,
    lido BOOLEAN,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Criacao das chaves estrangeiras

ALTER TABLE Livro
ADD CONSTRAINT fk_livro_usuario
FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario);

ALTER TABLE Livro
ADD CONSTRAINT fk_livro_autor
FOREIGN KEY (id_autor) REFERENCES Autor(id_autor);

ALTER TABLE Livro
ADD CONSTRAINT fk_livro_editora
FOREIGN KEY (id_editora) REFERENCES Editora(id_editora);

ALTER TABLE Livro
ADD CONSTRAINT fk_livro_categoria
FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria);
