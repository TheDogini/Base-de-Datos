-- Creación de la base de datos de una tienda departamental
CREATE DATABASE IF NOT EXISTS tienda_departamental;
USE tienda_departamental;

CREATE TABLE IF NOT EXISTS marca(
    id_marca INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS departamento(
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS cliente(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    edad INT NOT NULL,
    correo VARCHAR(100) NOT NULL,
    id_articulo INT NOT NULL
);

CREATE TABLE IF NOT EXISTS articulo(
    id_articulo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    precio DECIMAL(4,2) NOT NULL,
    existencia INT NOT NULL,
    precio_en_otras_tiendas DECIMAL (4,2) NOT NULL,
    id_marca INT NOT NULL,
    id_departamento INT NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_marca) REFERENCES marca(id_marca),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
 );

 CREATE TABLE IF NOT EXISTS vendedor(
    id_vendedor INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    rfc CHAR(13) NOT NULL,
    edad INT NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    cliente INT,
    FOREIGN KEY (cliente) REFERENCES cliente(id_cliente)
 );

-- Creación de la base de datos de una escuela
CREATE DATABASE IF NOT EXISTS Escuela;
USE Escuela;
CREATE TABLE IF NOT EXISTS salon(
    id_salon INT PRIMARY KEY AUTO_INCREMENT,
    letra CHAR(1) NOT NULL,
    cantidad_alumnos INT NOT NULL,
    especialidad VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS estudiante(
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    telefono VARCHAR(15),
    correo VARCHAR(100) NOT NULL,
    promedio_pasado DECIMAL(2,1),
    id_salon INT NOT NULL,
    FOREIGN KEY (id_salon) REFERENCES salon(id_salon)
);

CREATE TABLE IF NOT EXISTS maestro(
    id_maestro INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    id_salon INT NOT NULL,
    FOREIGN KEY (id_salon) REFERENCES salon(id_salon)
);

CREATE TABLE IF NOT EXISTS materia(
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    horas INT NOT NULL,
    tasa_de_aprobacion DECIMAL(4,2) NOT NULL,
    id_maestro INT NOT NULL,
    FOREIGN KEY (id_maestro) REFERENCES maestro(id_maestro)
);


-- Creación de la base de datos de una liga de futbol
CREATE DATABASE IF NOT EXISTS liga_de_futbol;
USE liga_de_futbol;
CREATE TABLE IF NOT EXISTS desempeno(
    id_desempeno INT PRIMARY KEY AUTO_INCREMENT,
    aNOTaciones INT NOT NULL,
    salvadas INT NOT NULL,
    asistencias INT NOT NULL,
    amarillas INT NOT NULL,
    rojas INT NOT NULL
);

CREATE TABLE IF NOT EXISTS equipo(
    id_equipo INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    cantidad jugadores INT NOT NULL,
    victorias INT NOT NULL,
    derrotas INT NOT NULL,
    empates INT NOT NULL
);

CREATE TABLE IF NOT EXISTS artbitro(
    id_arbitro INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    disponibilidad VARCHAR(20) NOT NULL,
    anos_experiencia INT NOT NULL,
    salario DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS jugador(
    id_jugador INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    id_equipo INT NOT NULL,
    id_desempeno INT NOT NULL,
    FOREIGN KEY (id_equipo) REFERENCES equipo(id_equipo),
    FOREIGN KEY (id_desempeno) REFERENCES desempeno(id_desempeno)
);

CREATE TABLE IF NOT EXISTS categoria(
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    rango_edades VARCHAR(20) NOT NULL,
    dias_de_partidos VARCHAR(100) NOT NULL,
    canchas_disponibles VARCHAR(100) NOT NULL,
    horario VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS partido(
    id_partido INT PRIMARY KEY AUTO_INCREMENT,
    id_equipolocal INT NOT NULL,
    id_equipovisitante INT NOT NULL,
    id_arbitro INT NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_equipolocal) REFERENCES equipo(id_equipo),
    FOREIGN KEY (id_equipovisitante) REFERENCES equipo(id_equipo),
    FOREIGN KEY (id_arbitro) REFERENCES arbitro(id_arbitro),
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

-- Creacion de la base de datos de un videojuego
CREATE DATABASE IF NOT EXISTS videojuego;
USE videojuego;
CREATE TABLE IF NOT EXISTS partida(
    id_partida INT PRIMARY KEY AUTO_INCREMENT,
    resultado VARCHAR(10) NOT NULL,
    kills INT NOT NULL,
    asistencias INT NOT NULL,
    muertes INT NOT NULL,
    dano INT NOT NULL,
    porcentaje_precision DECIMAL(5,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS personaje(
    id_personaje INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    configuracion VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS jugador(
    id_jugador INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    nickname VARCHAR(50) NOT NULL,
    edad INT NOT NULL,
    desempeno_partida_pasada INT NOT NULL,
    main INT NOT NULL,
    FOREIGN KEY (desempeno_partida_pasada) REFERENCES partida(id_partida),
    FOREIGN KEY (main) REFERENCES personaje(id_personaje)
);