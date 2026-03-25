CREATE database biblioteca_pessoal_1S2026;
USE biblioteca_pessoal_1S2026;
/*CRIAÇÃO DE RELAÇÕES*/
CREATE TABLE Usuario (
	id_usuario INT auto_increment PRIMARY KEY,
    nome VARCHAR(255) NOT NULL, 
    email VARCHAR(128)  NOT NULL UNIQUE,
    senha VARCHAR(255), 
    data_cadastro DATE DEFAULT(CURRENT_DATE) NOT NULL,
	data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
describe Usuario;
CREATE TABLE Autor(
id_autor INT PRIMARY KEY auto_increment,
nome varchar(255) NOT NULL UNIQUE,
ano_nascimento YEAR,
ano_morte timestamp,
apresentacao text,
data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
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
CREATE TABLE Categoria(
id_categoria  int PRIMARY KEY AUTO_INCREMENT,
nome varchar(128) NOT NULL unique,
descricao TEXT,
data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);
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
    data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_usuario_livro FOREIGN KEY (id_usuario) 
	REFERENCES usuario(id_usuario)
	ON DELETE CASCADE,
	CONSTRAINT fk_autor_livro FOREIGN KEY (id_autor) 
	REFERENCES autor(id_autor)
	ON DELETE RESTRICT,
	CONSTRAINT fk_editora_livro FOREIGN KEY (id_editora) 
	REFERENCES editora(id_editora)
	ON DELETE RESTRICT,
	CONSTRAINT fk_categoria_livro FOREIGN KEY (id_categoria) 
	REFERENCES categoria(id_categoria)
	ON DELETE RESTRICT
);
describe Livro;
show tables;

show tables;










