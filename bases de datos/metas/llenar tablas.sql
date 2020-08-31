DELETE FROM nombre_dias;

INSERT INTO nombre_dias (nombre) VALUES
("Domingo"),
("Lunes"),
("Martes"),
("Miércoles"),
("Jueves"),
("Viernes"),
("Sábado");

DELETE FROM horarios;

INSERT INTO horarios (nombre, hora_de_inicio, hora_de_finalizacion) VALUES
("lunes, miercoles y viernes de 6:00 am a 9:00 pm", "06:00 am", "09:00 am"),
("martes y jueves de 6:00 am a 9:00 pm", "06:00 am", "09:00 am"),
("lunes a viernes de 10:00 am a 1:00 pm", "10:00 am", "01:00 pm"),
("lunes, miércoles y viernes de 6:00 pm a 9:00 pm", "06:00 pm", "10:00 pm"),
("lunes, miércoles y viernes de 2:00 pm a 5:00 pm", "02:00 pm", "05:00 pm"),
("martes y jueves de 5:00 pm a 9:00 pm", "05:00 pm", "09:00 pm");

DELETE FROM dias;

INSERT INTO dias (horario_id, nombre_dia_id) VALUES 
(1, 2), (1, 4), (1, 6),
(2, 3), (2, 5),
(3, 2), (3, 3), (3, 4), (3, 5), (3, 6),
(4, 2), (4, 4), (4, 6),
(5, 2), (5, 4), (5, 6),
(6, 3), (6, 5);

DELETE FROM tareas;

INSERT INTO tareas (nombre, horario_id, fecha_de_inicio, 
fecha_de_finalizacion, duracion, descripcion, finalizada) VALUES
("Estudiar java", 1, "2018-01-08", "2018-05-11", 123, "Repasar el lenguaje de programacion java", 1),
("Crear mi propia Moto", 1, "2018-05-17", date(), 84, "Estudiar el framework Android", 0),
("Estudiar programacion web", 2, "2018-02-20", date(), 160, "Estudiar lenguajes de programacion web", 0),
("Desarrollar mi propia aplicación", 3, "2018-01-25", date(), 180, "Desarrollar este proyecto", 0),
("Aprender ingles", 4, "2018-01-18", date(), 177, "Tomar clases de ingles en Itla", 0),
("Aprender a bailar Salsa", 5, "2015-03-10", date(), 1345, "Llamar y visitar los clientes de mi cartera", 0),
("Estudiar C#", 6, "2018-05-03", "2018-07-26", 84, "Aprender el lenguaje de programacion C#", 1),
("Migrar el proyecto mango", 6, "2018-07-31", date(), 9, "Pasar el programa mango de Java a C#", 0);