-- Utilizando las bases de datos creadas al inicio de a clase, realizar 2 ejemplos porlos siguientes
-- tipos de JOIN: INNER JOIN, RIGHT JOIN y LEFT JOIN

-- TIENDA DEPARTAMENTAL
-- INNER JOIN
-- Mostrar los nombres de los clientes y las ventas que han realizado.
SELECT c.nombre AS nombre_cliente, v.id_venta 
FROM cliente c INNER JOIN venta v ON c.id_cliente=v.id_cliente;

-- Mostrar los nombres de los artículos y sus marcas.
SELECT a.nombre AS articulo, m.nombre AS marca
FROM articulo a INNER JOIN marca m ON a.id_marca=m.id_marca;

-- RIGHT JOIN
-- Mostrar todos los artículos y las marcas, incluyendo marcas sin artículos.
SELECT a.nombre AS articulo, m.nombre AS marca 
FROM articulo a
RIGHT JOIN marca m ON a.id_marca = m.id_marca;

-- Mostrar todos los artículos y los departamentos, incluyendo departamentos sin artículos.
SELECT a.nombre AS articulo, d.nombre AS departamento
FROM articulo a
RIGHT JOIN departamento d ON a.id_departamento=d.id_departamento;

-- LEFT JOIN
-- Mostrar todos los clientes, incluyendo los que no han realizado compras.
SELECT c.nombre AS cliente, v.id_venta
FROM cliente c
LEFT JOIN venta v ON c.id_cliente=v.id_cliente;

-- Mostrar todos los artículos, incluyendo los que no han sido vendidos.
SELECT a.nombre AS articulo, v.id_venta
FROM articulo a
LEFT JOIN venta v ON a.id_articulo=v.id_articulo;


-- ESCUELA
-- INNER JOIN
-- Obtener los nombres de los estudiantes y los salones a los que pertenecen.
SELECT e.nombre AS estudiante, s.letra AS salon
FROM estudiante e
INNER JOIN salon s ON e.id_salon=s.id_salon;

-- Obtener los nombres de los maestros y las materias que imparten.
SELECT m.nombre AS maestro, mt.nombre AS materia
FROM maestro m
INNER JOIN maestro_materia mm ON m.id_maestro = mm.id_maestro
INNER JOIN materia mt ON mm.id_materia = mt.id_materia;

-- RIGHT JOIN
-- Obtener todos los salones y los estudiantes que pertenecen a cada uno, incluyendo aquellos salones sin estudiantes.
SELECT s.letra AS salon, e.nombre AS estudiante
FROM salon s
RIGHT JOIN estudiante e ON s.id_salon=e.id_salon;

-- Obtener todas las materias y los maestros que las imparten, 
-- incluyendo las materias que no están siendo impartidas por ningún maestro.
SELECT mt.nombre AS materia, m.nombre AS maestro
FROM materia mt
RIGHT JOIN maestro_materia mm ON mt.id_materia=mm.id_materia
RIGHT JOIN maestro m ON m.id_maestro=mm.id_maestro;

-- LEFT JOIN
-- Obtener todos los estudiantes y los salones a los que pertenecen, 
-- incluyendo aquellos estudiantes que no están asignados a un salón.
SELECT e.nombre AS estudiante, s.letra AS salon
FROM estudiante e
LEFT JOIN salon s ON e.id_salon = s.id_salon;

-- Obtener todos los maestros y las materias que imparten, 
-- incluyendo aquellos maestros que no imparten ninguna materia.
SELECT m.nombre AS nombre_maestro, mt.nombre AS nombre_materia
FROM maestro m
LEFT JOIN maestro_materia mm ON m.id_maestro = mm.id_maestro
LEFT JOIN materia mt ON mm.id_materia = mt.id_materia;


-- LIGA DE FUTBOL
-- INNER JOIN
-- Obtener el nombre de los jugadores y el nombre de su equipo.
SELECT j.nombre AS jugador, e.nombre AS equipo
FROM jugador j
INNER JOIN equipo e ON j.id_equipo = e.id_equipo;

-- Obtener el nombre de los equipos y las categorías de los partidos en los que participaron.
SELECT e.nombre AS equipo, c.rango_edades
FROM partido p
INNER JOIN equipo e ON p.id_equipolocal = e.id_equipo
INNER JOIN categoria c ON p.id_categoria = c.id_categoria;

-- RIGHT JOIN
-- Obtener todos los árbitros y los partidos que han dirigido. Incluso si algún árbitro no ha dirigido un partido, se debe mostrar.
SELECT a.nombre AS arbitro, p.id_partido
FROM arbitro a
RIGHT JOIN partido p ON a.id_arbitro = p.id_arbitro;

-- Obtener todos los equipos, incluyendo aquellos que no han jugado ningún partido.
SELECT e.nombre AS equipo, p.id_partido
FROM equipo e
RIGHT JOIN partido p ON e.id_equipo = p.id_equipolocal;

-- LEFT JOIN
-- Obtener todos los jugadores y su equipo, incluso si algún jugador no pertenece a un equipo.
SELECT j.nombre AS jugador, e.nombre AS equipo
FROM jugador j
LEFT JOIN equipo e ON j.id_equipo = e.id_equipo;

-- Obtener todos los partidos, incluyendo los que no tienen un árbitro asignado.
SELECT p.id_partido, el.nombre AS equipo_local, ev.nombre AS equipo_visitante, a.nombre AS arbitro
FROM partido p
LEFT JOIN equipo AS el ON p.id_equipolocal = el.id_equipo
LEFT JOIN equipo AS ev ON p.id_equipovisitante = ev.id_equipo
LEFT JOIN arbitro a ON p.id_arbitro = a.id_arbitro;

-- VIDEOJUEGO
-- INNER JOIN
-- Obtener los jugadores y sus estadísticas de partidas
SELECT j.nombre, j.nickname, p.resultado, p.kills
FROM jugador j
INNER JOIN partida p ON j.desempeno_partida_pasada = p.id_partida;

-- Obtener jugadores y sus personajes principales
SELECT j.nombre, j.nickname, p.nombre AS personaje_principal
FROM jugador j
INNER JOIN personaje p ON j.main = p.id_personaje;

-- RIGHT JOIN
-- Obtener todos los personajes y los jugadores que los utilizan como personajes principales
SELECT j.nombre AS jugador, p.nombre AS personaje_principal
FROM jugador j
RIGHT JOIN personaje p ON j.main = p.id_personaje;

-- Obtener todas las partidas y los jugadores que las jugaron
SELECT partida.resultado, jugador.nombre AS jugador
FROM partida
RIGHT JOIN jugador ON partida.id_partida = jugador.desempeno_partida_pasada;

-- LEFT JOIN
-- Obtener todos los jugadores y las estadísticas de su última partida
SELECT j.nombre, j.nickname, p.resultado, p.kills
FROM jugador j
LEFT JOIN partida p ON j.desempeno_partida_pasada = p.id_partida;

-- Obtener todos los personajes y los jugadores que los usan como personajes principales
SELECT p.nombre AS personaje_principal, j.nombre AS jugador
FROM personaje p
LEFT JOIN jugador j ON p.id_personaje = j.main;