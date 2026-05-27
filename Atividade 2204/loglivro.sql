USE biblioteca_pessoal_1s2026;
CREATE TABLE log_delete_livro (
    id_log INT PRIMARY KEY AUTO_INCREMENT,
    id_livro INT,
    titulo VARCHAR(255),
    usuario_mysql VARCHAR(255),
    data_delete TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);