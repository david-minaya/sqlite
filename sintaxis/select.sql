/*
 Creada por David Minaya el 01/08/2018 a las 11:44 PM

 Esta archivo muestra como realizar consultas sql 
*/

/* Realiza una consulta de todos los datos de la tabla */
SELECT * FROM <name_table>;

/* Obtiene solo los datos de la columna especificada */
SELECT <column_name> FROM <name_table>;

/* Obtiene los datos de las columnas especificadas */
SELECT <column_name>, <column_name>, ... FROM <name_table>;

/* 
 Obtiene los datos que cumplen la condicion

 Operadores:
  =         igual que
  <         menor que
  >         mayor que
  LIKE      similar que
  AND       y
  OR        O
  IN        Igual que alguno(s) de los valores
  NOT IN    Diferente que alguno(s) de los valores
*/
SELECT * FROM <name_table> WHERE <column_name> operador <value>;

/* Obtiene los datos que cumplen con las dos condiciones */
SELECT * FROM <name_table> WHERE <column> operador <value> AND <column> operador <value>;

/* Obtiene los datos que cumplen con una de las dos condiciones */
SELECT * FROM <name_table> WHERE <column> operador <value> OR <column> operador <value>;

/* 
 Obtiene las filas que contienen datos iguales a <value1>, <value2> o
 <value3>. 
*/
SELECT * FROM <name_table> WHERE <colum> = <value1> OR <colum> = <value2>
OR <colum> = <value3>;

/* 
 Obtiene las filas que contienen datos iguales a <value1>, <value2> o
 <value3>. Esta consulta es igual a la consulta anterior.
*/
SELECT * FROM <name_table> WHERE <colum> IN (<value1>, <value2>, <value3>);

/* 
 Obtiene las filas que contienen datos diferentes a <value1>, <value2> o
 <value3>. Esta consulta es la opuesta a la consulta anterior.
*/
SELECT * FROM <name_table> WHERE <colum> NOT IN (<value1>, <value2>, <value3>);

/*
 Obtiene las filas que contienen el valor especifico. Los signos 
 de porcentanje % son comodines.

    Tabla              Obtiene la fila que contiene la palabra mundo
    +-------------+    +-------------+
    | saludo      |    | saludo      |
    +-------------+    +-------------+
    | Hola mundo! |    | Hola mundo! |
    |-------------|    +-------------+
    | Buenos dias |
    +-------------+
*/
SELECT * FROM <name_table> WHERE saludo LIKE %mundo%;

/* 
 Ordena los datos de la tabla por la columna especificada despues
 de ORDER BY. Los datos se ordenan de forma ascendente.
*/
SELECT * FROM <name_table> ORDER BY <column_name>;

/*
 Agrupa los datos de la tabla en base a la columna especificada.
 Todas las filas que tengan el mismo dato en la columna
 especificada se agruparan en una sola fila. La ultima fila que 
 se agrupada oculta las demas filas agrupadas.

          Sin agrupar                Agrupada
     +---------+---------+     +---------+---------+
     | nombre  | edad    |     | nombre  | edad    |
     +---------+---------+     +---------+---------+
     | Jose    | 22      |     | Pedro   | 22      |
     |---------+---------|     |---------+---------|
     | Maria   | 15      |     | Marta   | 15      |
     |---------+---------|     +---------+---------+
     | Pedro   | 22      |
     |---------+---------|
     | Marta   | 15      |
     +-------------------+
*/
SELECT * FROM <table_name> GROUP BY edad;

/*
 En las consultas tambien se pueden realizar varias operaciones 
 matematicas, como: sumar datos, obtener el valor minimo/maximo,
 redondear datos, etc.

 Operaciones:
  SUM()      suma los datos de una tabla o grupo de datos
  COUNT()    cuenta las filas de una tabla o grupo de datos
  AVG()      calcula el promedio de los datos de una tabla o grupos de datos
  ROUND()    redondea los datos de cada fila o grupo de datos
  MIN()      obtiene el valor minimo de una tabla o grupo de datos
  MAX()      obtiene el valor minimo de una tabla o grupo de datos
*/
SELECT operacion(<columna>) FROM <table_name>;
SELECT operacion(<columna>) FROM <table_name> GROUP BY <columna>;

/* 
 Suma todos los datos de la columna especificada.

     +---------+---------+     +---------+
     | nombre  | edad    |     | edad    |
     +---------+---------+     +---------+
     | Jose    | 22      |     | 37      |
     |---------+---------|     +---------+
     | Maria   | 15      |
     +-------------------+

*/
SELECT SUM(edad) FROM <table_name>;

/*
 Obtiene las columnas apellido y edad, agrupa los datos por apellido
 y suma las edades de cada grupo.

                                          Agrupada y sumada
    +---------+----------+---------+     +----------+---------+
    | nombre  | apellido | edad    |     | Apellido | edad    |
    +---------+----------+---------+     +----------+---------+
    | Jose    | Perez    |  25     |     | Perez    | 40      |
    |---------+----------+---------|     |----------+---------|
    | Maria   | Veras    |  30     |     | Veras    | 36      |
    |---------+----------+---------|     +----------+---------+
    | Pedro   | Perez    |  15     |
    |---------+----------+---------|
    | Marta   | Veras    |  16     |
    +---------+----------+---------+

*/
SELECT apellido, SUM(edad) FROM <table_name> GROUP BY apellido;

/* 
 Agrupa las filas por apellido y cuenta la cantidad de veces que aparece
 cada apellido. 

    Tabla persona                        Consulta
    +---------+----------+---------+     +----------+-----------------+
    | nombre  | apellido | edad    |     | Apellido | COUNT(apellido) |
    +---------+----------+---------+     +----------+-----------------+
    | Jose    | Perez    |  25     |     | Perez    | 2               |
    |---------+----------+---------|     |----------+-----------------|
    | Maria   | Veras    |  30     |     | Veras    | 2               |
    |---------+----------+---------|     +----------+-----------------+
    | Pedro   | Perez    |  15     |
    |---------+----------+---------|
    | Marta   | Veras    |  16     |
    +---------+----------+---------+

*/
SELECT apellido, COUNT(apellido) FROM persona GROUP BY apellido;

/* 
 Agrupa las filas por apellido y calcula la edad promedio de cada grupo. 

    Tabla persona                        Consulta
    +---------+----------+---------+     +----------+-----------+
    | nombre  | apellido | edad    |     | apellido | AVG(edad) |
    +---------+----------+---------+     +----------+-----------+
    | Jose    | Perez    |  22     |     | Perez    | 18.5      |
    |---------+----------+---------|     |----------+-----------|
    | Maria   | Veras    |  30     |     | Veras    | 23.0      |
    |---------+----------+---------|     +----------+-----------+
    | Pedro   | Perez    |  15     |
    |---------+----------+---------|
    | Marta   | Veras    |  16     |
    +---------+----------+---------+

*/
SELECT apellido, AVG(edad) FROM persona GROUP BY apellido;

/*
 Redondea los valores de la columna puntuacion.

    Tabla bailarines             Consulta
    +----------+------------+    +----------+-------------------+
    | nombre   | puntuacion |    | nombre   | ROUND(puntuacion) |
    +----------+------------+    +----------+-------------------+
    | Josefina | 8.6        |    | Josefina | 9                 |
    |----------+------------+    |----------+-------------------+
    | Martin   | 2.3        |    | Martin   | 2                 |
    |----------+------------+    |----------+-------------------+
    | Flora    | 9.7        |    | Flora    | 10                |
    +----------+------------+    +----------+-------------------+

*/
SELECT nombre, ROUND(puntuacion) FROM bailarines;

/*
 Dentro de las consultas SQL se pueden realizar operaciones matematicas
 como suma, resta, multiplicacion, etc...
*/
SELECT * FROM <table_name> WHERE <column> > 2 + 2;

/*
 Tambien se pueden sumar los datos de varias columnas
*/
SELECT * FROM <table_name> WHERE <column1> + <column2> > 100;

/*
 Obtiene los nombres de la tabla favoritas. Compara los nombres de la 
 tabla favoritas con los nombres de la tabla frutas. Devuelve todas las
 filas de la tabla frutas que contienen nombres iguales a los nombres de
 la tabla favoritas.

    Tabla frutas               favoritas       Consulta
    +----------+----------+    +----------+    +----------+----------+
    | nombre   | Familia  |    | nombre   |    | nombre   | Familia  |
    +----------+----------+    +----------+    +----------+----------+
    | Mango    | Tropical |    | Mango    |    | Mango    | Tropical |
    |----------|----------|    |----------|    |----------|----------|
    | Naranja  | Citrico  |    | Coco     |    | Coco     | Tropical |
    |----------|----------|    |----------|    |----------|----------|
    | Guayaba  | Tropical |    | Naranja  |    | Naranja  | Citrico  |
    |----------|----------|    +----------+    +----------+----------+
    | Limon    | Citrico  |
    |----------|----------|
    | Coco     | Tropical |
    +----------+----------+
*/
SELECT * FROM frutas WHERE nombre IN (SELECT nombre FROM favoritas);

/* Renombra una columna */
SELECT <column> AS <nuevo_nombre> FROM <table_name>;

/*
 Renombre una columna implicitamente

 El uso de la palabra clave AS para renombrar una columna o tabla es opcional.
 El mismo resultado se puede obtener si utilizarla, solo hay que separar el 
 nombre de la columna y el nuevo nombre con un espacio.
*/
SELECT <column> <nuevo_nombre> FROM <table_name>;

/*
 Agrupa las frutas por familia y obtiene los grupos que aparecen mas
 de una vez.

    Tabla frutas               Consulta
    +----------+----------+    +----------+--------------+
    | nombre   | familia  |    | familia  | apariciones  |
    +----------+----------+    +----------+--------------+
    | Mango    | Tropical |    | Tropical | 3            |
    |----------|----------|    |----------|--------------|
    | Naranja  | Citrico  |    | Citrico  | 2            |
    |----------|----------|    +----------+--------------+
    | Guayaba  | Tropical |
    |----------|----------|
    | Limon    | Citrico  |
    |----------|----------|
    | Coco     | Tropical |
    |----------|----------|
    | Almendra | Seco     |
    +----------+----------+

 A diferencia de WHERE que evalua los datos de las filas, HAVING evalua
 los datos de los grupos.
*/
SELECT familia, COUNT(familia) AS apariciones FROM frutas GROUP BY familia
HAVING apariciones > 1; 

/*
 La clausura CASE crea una nueva columna a la que se le insertan diferentes 
 datos de acuerdo a la condicion que se cumpla. Las condiciones se 
 especifican utilizando la clausura WHEN, y los datos que se insertaran 
 si la condicion se cumple se especifican en la clausura THEN. Si ninguna
 de las condiciones se cumplen, se ejecuta la clausura ELSE que inserta
 el dato que contiene.

 La clausura END se utiliza para cerrar la clausura CASE. En esta clausura
 se puede cambiar el nombre de la columna, que es lo recomendable, ya que
 de lo contrario el nombre de la columna seria la clausura CASE completa,
 desde la clausura CASE hasta la clausura END.
*/
SELECT <column>, CASE
                     WHEN <colum> == <value1> THEN <value2>
                     WHEN <colum> == <value1> THEN <value3>
                     ELSE <value4>
                 END AS <new_name>
                 FROM <table_name>;

/*
 Consulta JOIN basica
*/
SELECT * FROM <table1> JOIN <table2> ON <column_table1> = <column_table2>;

/*
 Une dos tablas en una sola consulta

 JOIN se utiliza para unir los datos de la segunda tabla con los datos 
 de la primera tabla. ON se utiliza para unir solo los datos que 
 coinciden. Si en la segunda tabla existen datos que no coinciden con 
 los datos de la primera tabla, esos datos se omiten y solo se muestran 
 los datos que coinciden.

          tb1                   tb2                          Consulta 
    +----+--------+    +--------+----------+    +----+--------+--------+----------+
    | id | nombre |    | id_tb1 | apps     |    | id | nombre | id_tb1 | apps     |
    +----+--------+    +--------+----------+    +----+--------+--------+----------+
    | 01 | Jose   |    | 01     | Youtube  |    | 01 | Jose   | 01     | Youtube  | 
    |----|--------|    |--------|----------|    |----|--------|--------|----------|
    | 02 | Pedro  |    | 03     | Facebook |    | 01 | Jose   | 03     | Twitter  |
    |----|--------|    |--------|----------|    |----|--------|--------|----------|
    | 03 | Maria  |    | 01     | Twitter  |    | 03 | Maria  | 01     | Facebook |
    |----|--------|    |--------|----------|    |----|--------|--------|----------|
    | 04 | Ramon  |    | 03     | Mico     |    | 03 | Maria  | 03     | Mico     |
    |----|--------|    +--------+----------+    +----+--------+--------+----------+
    | 05 | Andres |
    +----+--------+

 Como puede ver Pedro, Ramon y Andres no tienen datos que coincidan con los datos
 en la segunda tabla, por lo que en la consulta sus datos son omitidos. Los datos
 que se utiliza para hacer coincidir los datos de las dos tablas son el id y el id_tb1.

*/
SELECT * FROM tb1 JOIN tb2 ON id = id_tb1;

/* 
 Para mostrar todos los datos de la consula, incluyendo los datos que no coinciden
 se tiene que usar la clausura LEFT OUTER JOIN. A diferencia de la consulta JOIN,
 esta consulta muestra todos los datos, incluso los que no coinciden.

 Los datos de la segunda tabla que no coinciden con los datos de la primera tabla
 se muestran como NULL.

           tb1                   tb2                          Consulta 
    +----+--------+    +--------+----------+    +----+--------+--------+----------+
    | id | nombre |    | id_tb1 | apps     |    | id | nombre | id_tb1 | apps     |
    +----+--------+    +--------+----------+    +----+--------+--------+----------+
    | 01 | Jose   |    | 01     | Youtube  |    | 01 | Jose   | 01     | Youtube  | 
    |----|--------|    |--------|----------|    |----|--------|--------|----------|
    | 02 | Pedro  |    | 03     | Facebook |    | 01 | Jose   | 03     | Twitter  |
    |----|--------|    |--------|----------|    |----|--------|--------|----------|
    | 03 | Maria  |    | 01     | Twitter  |    | 02 | Pedro  | NULL   | NULL     |
    |----|--------|    |--------|----------|    |----|--------|--------|----------|
    | 04 | Ramon  |    | 03     | Mico     |    | 03 | Maria  | 03     | Facebook |
    |----|--------|    +--------+----------+    |----|--------|--------|----------|
    | 05 | Andres |                             | 03 | Maria  | 03     | Mico     |
    +----+--------+                             |----|--------|--------|----------|
                                                | 04 | Ramon  | NULL   | NULL     |
                                                |----|--------|--------|----------|
                                                | 05 | Andres | NULL   | NULL     |
                                                +----+--------+--------+----------+

*/
SELECT * FROM tb1 LEFT OUTER JOIN tb2 ON id = id_tb1;

/*
 Si dos tablas tienen dos nombres iguales de columnas, para saber a cual columna
 de las tablas se hace referencia el nombre de la columna se debe prefijar con
 el nombre de la tabla mas punto.
*/
SELECT <tabla1.name>, <tabla2.name> FROM <tabla1> 
JOIN <tabla2> ON <tabla1.id> = <tabla2.id>

/*
 Despues de unir las tablas se pueden filtrar los datos utilizando la
 clausura WHERE. De la misma forma se podrian usar otras clausuras como
 ORDER BY, GROUP BY, etc...
*/
SELECT * FROM <tabl1> JOIN <tabla2> ON <table1.id> = <tabla2.id_tabla1> 
WHERE <column> = <value1>;

/*
 Une una tabla a si misma en una consulta
 
 Para unir una tabla a si misma en una consultal, el nombre de la tabla se tiene
 que especificar en la clausura WHERE y en la clausuta JOIN. En la clausura JOIN
 el nombre de la tabla se tiene que cambiar utilizando la clausura AS. La tabla
 debe poseer una columna que se utilize para relacionar una fila de la tabla con
 otra. Utilizando la clausura ON se unen las filas que coincidan. Para saber cuales
 filas coinciden se tienen que utilizar la columna que se utiliza para relacionar 
 una fila con otra y la columna id de la tabla. Para seleccionar las columnas de la 
 tabla estas se tienen que prefijar con el nombre de la tabla y el nuevo nombre de
 la tabla más un punto.

               amigos                                     Consulta
    +----+----------+----------+    +----+----------+----------+----+----------+----------+                   
    | id | nombre   | id_amigo |    | id | nombre   | id_amigo | id | nombre   | id_amigo |                   
    +----+----------+----------+    +----+----------+----------+----+----------+----------+                   
    | 1  | Jose     | 3        |    | 1  | Jose     | 3        | 3  | Ramon    | 1        |                   
    |----|----------|----------|    |----|----------|----------|----|----------|----------|                   
    | 2  | Pedro    | 5        |    | 2  | Pedro    | 5        | 5  | Cristina | 2        |                   
    |----|----------|----------|    |----|----------|----------|----|----------|----------|                   
    | 3  | Ramon    | 1        |    | 3  | Ramon    | 1        | 1  | Jose     | 3        |                   
    |----|----------|----------|    |----|----------|----------|----|----------|----------|                   
    | 4  | Maria    | 6        |    | 4  | Maria    | 6        | 6  | Marta    | 4        |                   
    |----|----------|----------|    |----|----------|----------|----|----------|----------|                   
    | 5  | Cristina | 2        |    | 5  | Cristina | 2        | 2  | Pedro    | 5        |                   
    |----|----------|----------|    |----|----------|----------|----|----------|----------|                   
    | 6  | Marta    | 4        |    | 6  | Marta    | 4        | 4  | Maria    | 6        |                   
    +----+----------+----------+    +----+----------+----------+----+----------+----------+                   
     

*/
SELECT * FROM amigos JOIN amigos AS amigos2 ON amigos.id_amigo = amigos2.id;

/*
 Realiza multiples consultas JOIN

 Realizar multiples consultas JOIN se utilizar para unir varias tablas en una sola 
 consulta.

        personas               parejas                      consulta
     +----+--------+    +----+-------+-------+    +----+----------+----------+
     | id | nombre |    | id | p1_id | p2_id |    | id | persona1 | persona2 |
     +----+--------+    +----+-------+-------+    +----+----------+----------+
     | 1  | Jose   |    | 1  | 1     | 3     |    | 1  | Jose     | Maria    |
     |----|--------|    |----|-------|-------|    |----|----------|----------|
     | 2  | Pedro  |    | 2  | 2     | 5     |    | 2  | Pedro    | Nicol    |
     |----|--------|    |----|-------|-------|    |----|----------|----------|
     | 3  | Maria  |    | 3  | 4     | 6     |    | 3  | Ramon    | Marta    |
     |----|--------|    +----+-------+-------+    +----+----------+----------+
     | 4  | Ramon  |
     |----|--------|
     | 5  | Nicol  |
     |----|--------|
     | 6  | Marta  |
     +----+--------+
*/
SELECT p1.nombre AS persona1, p2.nombre AS persona2 FROM parejas
JOIN personas AS p1 ON parejas.p1_id = p1.id
JOIN personas AS p2 ON parejas.p2.id = p2.id;



















