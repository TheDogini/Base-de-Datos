-- 5 Consultas inventadas por cada base de datos, creada al inicio de la clase, que utilicen subqueries
-- TIENDA DEPARTAMENTAL
USE tienda_departamental;
-- 1. Obtener los nombres y correos de los clientes que han comprado artículos cuyo precio es mayor al precio promedio de todos los artículos
SELECT nombre, correo
FROM cliente
WHERE id_cliente IN (
    SELECT id_cliente
    FROM venta
    WHERE id_articulo IN (
        SELECT id_articulo
        FROM articulo
        WHERE precio > (SELECT AVG(precio) FROM articulo)
    )
);

-- 2. Listar los nombres de los artículos que tienen un precio menor al precio promedio en otras tiendas.
SELECT nombre
FROM articulo
WHERE precio < (
    SELECT AVG(precio_en_otras_tiendas)
    FROM articulo
);

-- 3. Mostrar los nombres de los departamentos que tienen al menos un artículo registrado.
SELECT nombre
FROM departamento
WHERE id_departamento IN (
    SELECT DISTINCT id_departamento
    FROM articulo
);

-- 4. Obtener el nombre y edad de los vendedores cuya edad es mayor a la edad promedio de todos los clientes.
SELECT nombre, edad
FROM vendedor
WHERE edad > (
    SELECT AVG(edad)
    FROM cliente
);

-- 5. Listar los nombres de los artículos que han sido vendidos más de una vez.
SELECT nombre
FROM articulo
WHERE id_articulo IN (
    SELECT id_articulo
    FROM venta
    GROUP BY id_articulo
    HAVING SUM(cantidad) > 1
);

-- ESCUELA
USE escuela;
-- 1. Obtener los nombres de los estudiantes cuyo promedio pasado es mayor al promedio general de todos los estudiantes.
SELECT nombre
FROM estudiante
WHERE promedio_pasado > (
    SELECT AVG(promedio_pasado)
    FROM estudiante
);

-- 2. Mostrar los nombres de las materias que tienen una tasa de aprobación superior a la tasa promedio de todas las materias.
SELECT nombre
FROM materia
WHERE tasa_de_aprobacion > (
    SELECT AVG(tasa_de_aprobacion)
    FROM materia
);

-- 3. Listar los salones que tienen más estudiantes que el promedio de cantidad de alumnos por salón.
SELECT letra, especialidad
FROM salon
WHERE cantidad_alumnos > (
    SELECT AVG(cantidad_alumnos)
    FROM salon
);

-- 4. Mostrar los nombres de los maestros que imparten más de una materia.
SELECT nombre
FROM maestro
WHERE id_maestro IN (
    SELECT id_maestro
    FROM maestro_materia
    GROUP BY id_maestro
    HAVING COUNT(*) > 1
);

-- 5. Obtener los nombres de los estudiantes que están en un salón cuya especialidad es "Programación".
SELECT nombre
FROM estudiante
WHERE id_salon IN (
    SELECT id_salon
    FROM salon
    WHERE especialidad = 'Programación'
);

-- LIGA DE FUTBOL
USE liga_de_futbol;
-- 1. Obtener los nombres de los jugadores que tienen más anotaciones que el promedio general.
SELECT nombre
FROM jugador
WHERE id_desempeno IN (
    SELECT id_desempeno
    FROM desempeno
    WHERE anotaciones > (
        SELECT AVG(anotaciones)
        FROM desempeno
    )
);

-- 2. Listar los equipos que tienen más victorias que la cantidad promedio de victorias de todos los equipos.
SELECT nombre
FROM equipo
WHERE victorias > (
    SELECT AVG(victorias)
    FROM equipo
);

-- 3. Mostrar los nombres de los árbitros que ganan más que el salario promedio.
SELECT nombre
FROM arbitro
WHERE salario > (
    SELECT AVG(salario)
    FROM arbitro
);

-- 4. Obtener los nombres de los jugadores cuyo equipo ha tenido más victorias que derrotas.
SELECT nombre
FROM jugador
WHERE id_equipo IN (
    SELECT id_equipo
    FROM equipo
    WHERE victorias > derrotas
);

-- 5. Mostrar los nombres de los equipos que han jugado al menos un partido como equipo local.
SELECT nombre
FROM equipo
WHERE id_equipo IN (
    SELECT DISTINCT id_equipolocal
    FROM partido
);


-- VIDEOJUEGO
USE videojuego;
-- 1. Obtener los nombres de los jugadores cuyo desempeño en la partida pasada tuvo más kills que el promedio general de kills.
SELECT nombre
FROM jugador
WHERE desempeno_partida_pasada IN (
    SELECT id_partida
    FROM partida
    WHERE kills > (
        SELECT AVG(kills)
        FROM partida
    )
);

-- 2. Listar los personajes que son usados como "main" por más de un jugador.
SELECT nombre
FROM personaje
WHERE id_personaje IN (
    SELECT main
    FROM jugador
    GROUP BY main
    HAVING COUNT(*) > 1
);

-- 3. Mostrar los nombres y nicknames de los jugadores que tienen una precisión mayor al promedio de todas las partidas.
SELECT nombre, nickname
FROM jugador
WHERE desempeno_partida_pasada IN (
    SELECT id_partida
    FROM partida
    WHERE porcentaje_precision > (
        SELECT AVG(porcentaje_precision)
        FROM partida
    )
);

-- 4. Obtener los nombres de los jugadores cuyo personaje principal (main) se llama "Luchador".
SELECT nombre
FROM jugador
WHERE main = (
    SELECT id_personaje
    FROM personaje
    WHERE nombre = 'Luchador'
);

-- 5. Mostrar los nombres de los personajes que han sido usados como main por jugadores cuya edad es mayor al promedio de todos los jugadores.
SELECT nombre
FROM personaje
WHERE id_personaje IN (
    SELECT main
    FROM jugador
    WHERE edad > (
        SELECT AVG(edad)
        FROM jugador
    )
);