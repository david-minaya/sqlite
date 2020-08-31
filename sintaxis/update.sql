/* Creado por David Minaya el 06/08/2018 a las 10:21 AM */

/* 
 Actualiza los datos de la columna especificada en todas las filas de la tabla 
*/
UPDATE <table_name> SET <column_name> = <value1>;

/* 
 Actualiza los datos de las columnas especificadas en todas las filas de la tabla 
*/
UPDATE <table_name> SET <column_name> = <value1>, <column_name> = <value1>, ...;

/* 
 Actualiza los datos de la columna especificada solo en las filas en las que se
 cumple la condicion del WHERE.
*/
UPDATE <table_name> SET <column_name> = <value1> WHERE <column_id> = <value2>;

/* 
 Actualiza los datos de las columnas especificadas solo en las filas en las que se
 cumple la condicion del WHERE.
*/
UPDATE <table_name> SET <column_name> = <value1> <column_name> = <value1>, ... 
WHERE <column_id> = <value2>;