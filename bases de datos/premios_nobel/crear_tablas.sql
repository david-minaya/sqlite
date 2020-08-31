/*
 Creado por David Minaya el 05/08/2018 a las 1:51 PM
*/

CREATE TABLE personas (
    id INTEGER PRIMARY KEY,
    nombre VARCHAR(50),
    vida VARCHAR(20),
    areas VARCHAR(50),
    biografia TEXT,
    premio INTEGER,
    FOREIGN KEY(premio) REFERENCES premios(persona_id)
);

CREATE TABLE premios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    persona_id INTEGER,
    nombre INTEGER,
    razon TEXT,
    anio TEXT,
    laureado1 INTEGER,
    laureado2 INTEGER,
    laureado3 INTEGER,
    FOREIGN KEY(nombre) REFERENCES nombre_premios(id),
    FOREIGN KEY(laureado1) REFERENCES personas(id),
    FOREIGN KEY(laureado2) REFERENCES personas(id),
    FOREIGN KEY(laureado3) REFERENCES personas(id)
);

CREATE TABLE nombre_premios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre VARCHAR(40)
);