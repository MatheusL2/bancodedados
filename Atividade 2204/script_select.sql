SELECT
    t2.nome AS nome_autor,
    t1.titulo,
    t3.nome AS nome_categoria,
    t4.nome AS nome_usuario,
    t5.nome AS nome_editora
FROM livro t1
JOIN autor t2 
    ON t1.id_autor = t2.id_autor
JOIN categoria t3 
    ON t1.id_categoria = t3.id_categoria
JOIN usuario t4 
    ON t1.id_usuario = t4.id_usuario
JOIN editora t5 
    ON t1.id_editora = t5.id_editora;