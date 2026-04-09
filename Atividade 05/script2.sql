SELECT * FROM livro;
SELECT l.titulo, l.ano_publicacao, a.nome AS autora
FROM livro l
JOIN autor a ON l.id_autor = a.id_autor
WHERE a.nome = 'J.K. Rowling';

SELECT l.* FROM livro l JOIN categoria c ON l.id_categoria=c.id_categoria
WHERE c.nome = 'Filosofia';

UPDATE categoria
set nome = 'Censurado'
where nome = 'Filosofia';

DELETE l
FROM livro l
JOIN categoria ON l.id_categoria = c.id_categoria
WHERE c.nome = 'Censurado';
