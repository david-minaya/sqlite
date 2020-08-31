/* Crea la tabla */
CREATE TABLE frutas (
	id INTEGER NOT NULL PRIMARY KEY,
	nombre TEXT,
	precio INTEGER
);

INSERT INTO frutas (nombre, precio) VALUES ("Mango", "15");

/* Cambia el tipo de la columna precio de INTEGER a TEXT */
BEGIN TRANSACTION;

CREATE TABLE new_frutas (
	id INTEGER NOT NULL PRIMARY KEY,
	nombre TEXT,
	precio TEXT
);

INSERT INTO new_frutas SELECT * FROM frutas;

DROP TABLE frutas;

ALTER TABLE new_frutas RENAME TO frutas;

COMMIT;

/* Agrega una nueva columna */
ALTER TABLE frutas ADD tipo TEXT;

/* ------------------------------------------------------------------------- */

CREATE TABLE frutas (
	id INTEGER NOT NULL PRIMARY KEY,
	nombre TEXT,
	precio INTEGER,
	tipo TEXT
);

INSERT INTO frutas (nombre, precio, tipo) VALUES ("Naranja", 15, "Citrica");
INSERT INTO frutas (nombre, precio, tipo) VALUES ("Coco", 25, "Tropical");

/* Elimina la columna tipo */
BEGIN TRANSACTION;

CREATE TABLE new_frutas (
	id INTEGER NOT NULL PRIMARY KEY,
	nombre TEXT,
	precio INTEGER
);

INSERT INTO new_frutas SELECT id, nombre, precio FROM frutas;

DROP TABLE frutas;

ALTER TABLE new_frutas RENAME TO frutas;

COMMIT;