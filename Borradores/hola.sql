BEGIN TRANSACTION;

CREATE TABLE new_Cliente (
    ClienteId INTEGER NOT NULL CONSTRAINT PK_Cliente PRIMARY KEY AUTOINCREMENT,
    Negocio TEXT NULL,
    Persona TEXT NULL,
    Direccion TEXT NULL,
    Ciudad TEXT NULL,
    Sistema INTEGER NULL,
    Balance INTEGER NULL,
    Venta INTEGER NULL,
    Estado INTEGER NULL
);

INSERT INTO new_Cliente SELECT * FROM Cliente;

DROP TABLE Cliente;

ALTER TABLE new_Cliente RENAME TO Cliente;

COMMIT;

