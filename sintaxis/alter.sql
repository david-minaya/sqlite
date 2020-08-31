/* Creada por David Minaya el 06/08/2018 a las 10:56 PM */

/* Agrega una nueva columna a la tabla */
ALTER TABLE <table_name> ADD <new_column> <type>;

/* 
 Agrega una nueva columna con un valor por defecto. Todas las filas
 a las que no se le asigne un valor tendran el valor pro defecto. 
*/
ALTER TABLE <table_name> ADD <new_column> <type> default <defaul_value>;

/* Cambia el nombre de la tabla */
ALTER TABLE <table_name> RENAME TO <new_name>;