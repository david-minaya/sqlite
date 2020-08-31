/* Creada por David Minaya el 06/08/2018 a las 11:27 AM */

/* 
 Limita el numero de filas en el que se ejecutara el comando.
 Esta palabra clave se puede utilizar al final del comandos sql SELECT. 
*/
LIMIT <numero>

/*
 Solo muestra las dos primeras filas de la tabla.
*/
SELECT * FROM <table_name> LIMIT 2;

/*
 Agrupa varios comandos en uno solo. Si uno de los comandos falla, todos
 los comandos fallan.
*/
BEGIN TRANSACTION;
INSERT INTO <table_name> VALUES (<value0>);
SELECT * FROM <table_name>;
COMMIT;