DROP TABLE IF EXISTS horarios;
DROP TABLE IF EXISTS dias;
DROP TABLE IF EXISTS nombre_dias;
DROP TABLE IF EXISTS tareas;

CREATE TABLE nombre_dias (
    nombre_dia_id INTEGER PRIMARY KEY,
    nombre TEXT
);

CREATE TABLE dias (
    nombre_dia_id INTEGER,
    horario_id INTEGER,
    FOREIGN KEY (nombre_dia_id) REFERENCES nombre_dias(nombre_dia_id),
    FOREIGN KEY (horario_id) REFERENCES horarios(horario_id)
);

CREATE TABLE horarios (
    horario_id INTEGER PRIMARY KEY,
    nombre TEXT,
    hora_de_inicio TEXT,
    hora_de_finalizacion TEXT
);

CREATE TABLE tareas (
    tarea_id INTEGER PRIMARY KEY,
    nombre TEXT,
    fecha_de_inicio TEXT,
    fecha_de_finalizacion TEXT default date,
    duracion INTEGER,
    descripcion TEXT,
    finalizada INTEGER,
    horario_id INTEGER,
    FOREIGN KEY (horario_id) REFERENCES horarios(horario_id)
);