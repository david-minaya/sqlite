SELECT jugadores.id, jugadores.nombre, juegos.nombre FROM jugadores 
JOIN juegos ON jugadores.juegos = juegos.jugador_id; 