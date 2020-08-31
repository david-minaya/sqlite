/*
 Creada por David Minaya el 01/08/2018 a las 10:40 PM 

 Este archivo muestra como crear una tabla en una base de datos sql
*/

/* 
 Crea una tabla de una sola columna

 Types:
  INTEGER
  VARCHAR
  FLOAT
  TEXT 
*/
CREATE TABLE <name_table> (<column_name> type);

/* Crea una tabla de varias columnas */
CREATE TABLE <name_table> (
    <column_name> type, 
    <column_name> type, 
    ...
);

/* Crea una tabla con la columna que almacena el id de los datos */
CREATE TABLE <name_table> (<column_name> type PRIMARY KEY);

/* 
 Crea una tabla con una columna que aumenta automaticamente el valor
 de los datos que contiene cada vez que se insertan nuevos datos.
*/
CREATE TABLE <name_table> (<column_name> type PRIMARY KEY AUTOINCREMENT);


/*
 Crear tablas relacionadas
  
        Jugadores               Juegos
 +----+--------+    +----+------------+-----------+
 | id | nombre |    | id | jugador_id | nombre    |
 +----+--------+    +----+------------+-----------+
 | 1  | Jose   |    | 1  | 1          | Mario     |
 |----|--------|    |----|------------|-----------|
 | 2  | Pedro  |    | 2  | 1          | Sony      |
 |----|--------|    |----|------------|-----------|
 | 3  | Ramon  |    | 3  | 2          | Pacman    |
 +----+--------+    |----|------------|-----------|
                    | 4  | 1          | King kong |
                    |----|------------|-----------|
                    | 5  | 3          | Ping Pong |
                    |----|------------|-----------|
                    | 6  | 2          | Zuma      |
                    +----+------------+-----------+
*/
CREATE TABLE jugadores (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre TEXT,
    juegos INTEGER
);

CREATE TABLE juegos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    jugador_id INTEGER,
    nombre TEXT,
    FOREIGN KEY(jugador_id) REFERENCES jugadores(id)
);