/*cria usuario*/
CREATE USER "UJOAO"@"%" IDENTIFIED BY "123";
CREATE USER "UPEDRO"@"%" IDENTIFIED BY "123";
GRANT ALL PRIVILEGES 
ON biblioteca_pessoal_1s2026.* 
TO 'Pedro'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE 
ON biblioteca_pessoal_1s2026.* 
TO 'Joao'@'localhost';

FLUSH PRIVILEGES;