/*
 Creada por David Minaya el 01/08/2018 a las 11:04 PM

 Este archivo muestra como insetar datos en una tabla
*/

/* 
 Inserta un dato en una tabla de una sola columna 
     
    Tabla vacia     Tabla con una insercion
    +---------+     +---------+
    | columna |     | columna |
    +---------+     +---------+
                    | dato    |
                    +---------+
*/
INSERT INTO <name_table> VALUES (<value>);

/* 
 Inserta una sola fila con varios datos en la tabla 

    Tabla vacia                Tabla con una insercion de dos datos
    +----------+----------+    +----------+----------+
    | columna1 | columna1 |    | columna1 | columna1 |
    +----------+----------+    +----------+----------+
                               | Dato 1   | Dato 2   |
                               +---------------------+
*/
INSERT INTO <name_table> VALUES (<value>, <value>, ...);


/*
 Inserta solo los datos de las columnas especificadas

    Tabla vacia                      
    +-----+----------+----------+    +-----+----------+----------+
    | id  | columna1 | columna2 |    | id  | columna1 | columna2 |
    +-----+----------+----------+    +-----+----------+----------+
                                     | 01  | NULL     | Dato 2   |
                                     +-----+----------+----------+

 A las columnas que se omiten en la insercion se les asigna el valor NULL.
*/
INSERT INTO <name_table> (id, columna2) VALUES (01, "Dato 2");

/* Inserta varias filas al mismo tiempo */
INSERT INTO <name_table> VALUES (<value1>, <value2>, <value3>), 
(<value1>, <value2>, <value3>),
(<value1>, <value2>, <value3>);

/* Copia los datos de una tabla en otra */
INSERT INTO <copy_to_table> SELECT * FROM <copy_from_table>