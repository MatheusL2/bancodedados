DELIMITER $$

CREATE TRIGGER trg_delete_livro
AFTER DELETE ON livro
FOR EACH ROW
BEGIN

    INSERT INTO log_delete_livro (
        id_livro,
        titulo,
        usuario_mysql
    )
    
    VALUES (
        OLD.id_livro,
        OLD.titulo,
        CURRENT_USER()
    );

END $$

DELIMITER ;