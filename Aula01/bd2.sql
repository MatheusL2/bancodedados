CREATE database biblioteca_pessoal_1S2026;
USE biblioteca_pessoal_1S2026;
CREATE TABLE Usuario (
	id_usuario INT auto_increment PRIMARY KEY,
    nome VARCHAR(255) NOT NULL, 
    email VARCHAR(128)  NOT NULL UNIQUE,
    senha VARCHAR(255), 
    data_cadastro DATE DEFAULT(CURRENT_DATE) NOT NULL,
	data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
describe Usuario;
CREATE TABLE Livro (
	id_livro INT auto_increment PRIMARY KEY,
    Id_usuario int,
    id_editora int,
    id_autor int,
    id_categoria int,
    titulo VARCHAR(255) NOT NULL, 
    sinopse TEXT,
    autor VARCHAR(128),
    editora VARCHAR(128),
    categoria VARCHAR (128),
	lido BOOLEAN,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
describe Livro;
show tables;
CREATE TABLE Editora (
id_editora int PRIMARY KEY auto_increment,
nome varchar(255) unique NOT NULL,
cidade varchar(64),
estado varchar(64),
pais varchar(64),
data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
describe Editora;
show tables;

CREATE TABLE Categoria(
id_categoria  int PRIMARY KEY AUTO_INCREMENT,
nome varchar(128) NOT NULL unique,
descricao TEXT,
data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
describe Categoria;

CREATE TABLE Autor(
id_autor INT PRIMARY KEY auto_increment,
nome varchar(255) NOT NULL UNIQUE,
ano_nascimento YEAR,
ano_morte timestamp,
apresentacao text,
data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
describe Autor;

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







