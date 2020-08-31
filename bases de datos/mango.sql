CREATE TABLE IF NOT EXISTS "Cliente" (
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

INSERT INTO cliente VALUES 
(90021458, "Colmado Palo Blanco", "Papo Solano", "Palo Blanco", "Dajabon", 0, 900, 5000, 0),
(90012563, "Farmacia Anamu", "Ana Sosa", "Calle 6 #43, Las Flores", "Montecristi", 0, 1420, 800, 2),
(90025832, "Colmado Requeson", "Luis Parra", "Avenida 27 de Febrero #96", "Santiago", 1, 4789, 15472, 3),
(90032541, "Internet Abreu", "Mercedes Abreu", "Calles Sanchez #8, Pekin", "Sajoma", 5, 0, 0, 4),
(90002574, "Cafeteria Tostada", "Maria Fernandez", "Calle 2 esq 4", "Mao", 2, 0, 24513, 1);

INSERT INTO telefono (numero, clienteid) VALUES
(8095623655, 90021458), (8498745212, 90021458), (8297845235, 90021458),
(8095623655, 90012563), (8498745212, 90012563), (8297845235, 90012563),
(8095623655, 90025832),
(8498745212, 90032541), (8297845235, 90032541),
(8095623655, 90002574), (8498745212, 90002574), (8297845235, 90002574), (8094158901, 90002574);

INSERT INTO historial (fecha, descripcion, clienteid) VALUES
("2019-01-25", "Se llama al cliente pero no responde", 90021458), 
("2019-02-01", "El cliente dice que depositara mañana.", 90021458),
("2019-01-05", "Se llama al cliente y este que en realizar el deposito en la tarde de hoy", 90012563),
("2018-12-17", "Se visita al ciente y se le retiro el equipo", 90025832),
("2019-01-25", "Se llama al cliente pero no responde", 90025832), 
("2019-02-01", "El cliente dice que depositara mañana.", 90032541),
("2019-01-05", "Se llama al cliente y este que en realizar el deposito en la tarde de hoy", 90012563),
("2018-12-17", "Se visita al ciente y se le retiro el equipo", 90002574),
("2019-02-01", "El cliente dice que depositara mañana.", 90032541),
("2019-01-05", "Se llama al cliente y este que en realizar el deposito en la tarde de hoy", 90032541),
("2019-02-01", "El cliente dice que depositara mañana.", 90021458),
("2019-01-05", "Se llama al cliente y este que en realizar el deposito en la tarde de hoy", 90012563);