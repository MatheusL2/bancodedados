
CREATE TABLE Usuario (
	id_usuario INT auto_increment PRIMARY KEY,
    nome VARCHAR(255) NOT NULL, 
    email VARCHAR(128)  NOT NULL UNIQUE,
    data_cadastro DATE DEFAULT(CURRENT_DATE) NOT NULL
);
CREATE TABLE livro (
	id_livro INT auto_increment PRIMARY KEY,
    
    titulo VARCHAR(255) NOT NULL, 
    sinopse TEXT,
    autor VARCHAR(128),
    editora VARCHAR(128),
    categoria VARCHAR (128),
    ano_publicacao YEAR  NOT NULL
);
show tables;
/*SELECT * FROM usuario;
/*SELECT * FROM livro;

