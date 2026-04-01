/*INSERE DADOS NO BD */
USE biblioteca_pessoal_1S2026;
INSERT INTO usuario(nome, email, senha)
VALUES 
("João", "joao@rmail.com", "123"),
("Pedro", "pedro@rmail.com", "123");
INSERT INTO autor(nome)
VALUES ("Santos Agostinho"),
	   ("Aristoteles");
INSERT INTO editora(nome)
VALUES ("L&M"),
	   ("Companhia de Letras");
INSERT INTO categoria(nome)
VALUES ("Filosofia"),
	   ("Religião");
/*Visualiza dados cadastrados*/
SELECT * FROM usuario;
show tables;

