SELECT
    personas.id AS "#", 
    personas.nombre AS Laureado, 
    premios.anio AS Año, 
    nombre_premios.nombre AS Nobel, 
    premios.razon AS Razon, 
    l1.nombre AS "Laureado 1", 
    l2.nombre AS "Laureado 2", 
    l3.nombre AS "Laureado 3" 
FROM personas 
JOIN premios ON personas.premio = premios.persona_id 
JOIN nombre_premios ON premios.nombre = nombre_premios.id
LEFT OUTER JOIN personas AS l1 ON premios.laureado1 = l1.id
LEFT OUTER JOIN personas AS l2 ON premios.laureado2 = l2.id
LEFT OUTER JOIN personas AS l3 ON premios.laureado3 = l3.id;