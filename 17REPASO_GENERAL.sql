-- Usando las primeras tablas de datos generadas en clase, se deben generar 40 registros inventados
-- y después, aplicar 3 ejemplos de consultas de cada tipo estudiado hasta este punto.


-- TIENDA DEPARTAMENTAL


--Creación de las tablas
CREATE TABLE Vendedor (
    Clave INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Rfc VARCHAR(20),
    Edad INT,
    Descripcion VARCHAR(50)
);

CREATE TABLE Marca (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Descripcion VARCHAR(100),
    Departamento VARCHAR(50),
    Demanda VARCHAR(10)
);

CREATE TABLE Articulo (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Descripcion VARCHAR(100),
    Precio DECIMAL(10,2),
    Existencia INT,
    Departamento VARCHAR(50),
    Marca VARCHAR(50),
    Demanda VARCHAR(10),
    Precio_Otras_Tiendas DECIMAL(10,2)
);

CREATE TABLE Departamento (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50),
    Descripcion VARCHAR(255)
);

CREATE TABLE Cliente (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(100),
    Edad INT,
    Descripcion VARCHAR(255),
    Correo VARCHAR(255)
);

-- Inserción de 40 registros inventados por tabla

INSERT INTO Vendedor (Nombre, Rfc, Edad, Descripcion) VALUES
('Carlos', 'GOZC910221CL7', 34, 'Alto, moreno'),
('Miguel', 'BEAM900715AI9', 35, 'Mediano, moreno'),
('Andrea', 'BOTA850101LE3', 30, 'Alta, blanca'),
('Jorge', 'ARGJ051015LX2', 20, 'Bajo, moreno'),
('Luis', 'CERL990702KS7', 26, 'Mediano, moreno'),
('Axel', 'ESTA980929YA0', 27, 'Alto, moreno'),
('Paola', 'LIMP581228BL4', 67, 'Mediana, morena'),
('Denise', 'ENGD861120PF5', 39, 'Mediana, blanca'),
('Dana', 'SIMD504019YB5', 21, 'Alta, morena'),
('Juan', 'TAZJ010707FM8', 24, 'Bajo, moreno'),
('Julieta', 'ESBJ060606QL0', 19, 'Mediana, blanca'),
('Rafael', 'ILYR02916QL8', 25, 'Mediano, moreno'),
('Caleb', 'SOLC061130PZ9', 19, 'Bajo, moreno'),
('Alan', 'VERA990106WJ8', 26, 'Alto, blanco'),
('Aaron', 'MUSA980422QN9', 27, 'Mediano, moreno'),
('Mariana', 'XQPM870512RT4', 32, 'Alta, morena'),
('Emilio', 'WRJZ921004UY7', 28, 'Mediano, blanco'),
('Sofía', 'PTZA881205KR9', 29, 'Mediana, morena'),
('Roberto', 'LKMS931115GH2', 31, 'Bajo, blanco'),
('Fernanda', 'MNBX901220IO3', 33, 'Alta, morena'),
('Eduardo', 'ZQWE890412PL8', 40, 'Mediano, moreno'),
('Valeria', 'KLPD870609XZ5', 36, 'Mediana, blanca'),
('Pablo', 'QWRT850923LK0', 39, 'Bajo, moreno'),
('Daniela', 'YUIO921030AS4', 22, 'Alta, morena'),
('Héctor', 'HJXZ930214QW1', 26, 'Mediano, moreno'),
('Gabriela', 'BNML860718ER2', 35, 'Mediana, blanca'),
('Javier', 'RTYU950405XZ9', 27, 'Alto, moreno'),
('Lucía', 'PQOW940807SD8', 30, 'Mediana, blanca'),
('Martín', 'ZXCV990522ER7', 34, 'Mediano, moreno'),
('Elena', 'LKJH901125PO6', 29, 'Alta, morena'),
('Ricardo', 'YUIO920706RT3', 38, 'Bajo, moreno'),
('Natalia', 'ASDF880517LK9', 25, 'Mediana, blanca'),
('Oscar', 'GHJK890903ZX4', 37, 'Mediano, blanco'),
('Camila', 'TYUI910328PL2', 28, 'Mediana, morena'),
('Santiago', 'BNMV931202QW5', 31, 'Bajo, moreno'),
('Regina', 'HJKL940412AS7', 33, 'Mediana, blanca'),
('Diego', 'ZXCV970209WE1', 24, 'Alto, moreno'),
('Paulina', 'QWER990715RT0', 27, 'Alta, blanca'),
('Felipe', 'UIOP850821AS3', 41, 'Mediano, moreno'),
('Andrea', 'BNML870916ZX9', 30, 'Mediana, blanca');

INSERT INTO Marca (Nombre, Descripcion, Departamento, Demanda) VALUES
('Gerber', 'Comida para bebé', 'Comestibles', 'Media'),
('Vans', 'Ropa masculina', 'Ropa', 'Media'),
('Klass', 'Ropa femenina', 'Ropa', 'Media'),
('Aboytes', 'Dulces varios', 'Comestibles', 'Media'),
('Chokis', 'Galletas', 'Comestibles', 'Alta'),
('Kellogs', 'Cereales', 'Comestibles', 'Alta'),
('Sabritas', 'Frituras', 'Comestibles', 'Alta'),
('Mr. Limpio', 'Jabones en polvo', 'Limpieza', 'Baja'),
('Zote', 'Jabones en barra', 'Limpieza', 'Baja'),
('Santa Clara', 'Leche', 'Comestibles', 'Media'),
('Coca-Cola', 'Refrescos', 'Comestibles', 'Alta'),
('Maruchan', 'Sopa instantánea', 'Comestibles', 'Media'),
('Bimbo', 'Pan dulce', 'Comestibles', 'Alta'),
('Ancar', 'Ropa para bebé', 'Ropa', 'Baja'),
('Salvo', 'Jabón líquido', 'Limpieza', 'Media'),
('Nike', 'Calzado deportivo', 'Ropa', 'Alta'),
('Adidas', 'Ropa deportiva', 'Ropa', 'Alta'),
('Nestlé', 'Productos lácteos', 'Comestibles', 'Media'),
('Pepsi', 'Refrescos', 'Comestibles', 'Alta'),
('Colgate', 'Pasta dental', 'Limpieza', 'Alta'),
('Ariel', 'Detergente en polvo', 'Limpieza', 'Alta'),
('Hershey', 'Chocolate', 'Comestibles', 'Media'),
('Lala', 'Leche y derivados', 'Comestibles', 'Alta'),
('Great Value', 'Productos genéricos', 'Comestibles', 'Media'),
('Danone', 'Yogur y lácteos', 'Comestibles', 'Alta'),
('Samsung', 'Electrónica de consumo', 'Electrónica', 'Alta'),
('Apple', 'Tecnología', 'Electrónica', 'Alta'),
('Sony', 'Electrodomésticos y tecnología', 'Electrónica', 'Alta'),
('LG', 'Electrodomésticos', 'Electrónica', 'Alta'),
('Huawei', 'Smartphones y tecnología', 'Electrónica', 'Alta'),
('Microsoft', 'Software y tecnología', 'Electrónica', 'Alta'),
('Lenovo', 'Computadoras', 'Electrónica', 'Alta'),
('HP', 'Computadoras y tecnología', 'Electrónica', 'Alta'),
('Canon', 'Cámaras y fotográficas', 'Electrónica', 'Alta'),
('Nikon', 'Cámaras fotográficas', 'Electrónica', 'Alta'),
('Acer', 'Computadoras y tecnología', 'Electrónica', 'Media'),
('Asus', 'Computadoras y tecnología', 'Electrónica', 'Media'),
('GoPro', 'Cámaras deportivas', 'Electrónica', 'Alta'),
('Bose', 'Audio y sonido', 'Electrónica', 'Alta');

INSERT INTO Articulo (Descripcion, Precio, Existencia, Departamento, Marca, Demanda, Precio_Otras_Tiendas) VALUES
('Comida para bebé', 20.00, 30, 'Comestibles', 'Gerber', 'Media', 25.00),
('Ropa masculina', 50.00, 20, 'Ropa', 'Vans', 'Media', 55.00),
('Ropa femenina', 45.00, 20, 'Ropa', 'Klass', 'Media', 50.00),
('Dulces varios', 20.00, 26, 'Comestibles', 'Aboytes', 'Media', 25.00),
('Galletas', 20.00, 19, 'Comestibles', 'Chokis', 'Alta', 22.00),
('Cereales', 60.00, 21, 'Comestibles', 'Kellogs', 'Alta', 65.00),
('Frituras', 15.00, 40, 'Comestibles', 'Sabritas', 'Alta', 20.00),
('Jabones en polvo', 30.00, 39, 'Limpieza', 'Mr. Limpio', 'Baja', 35.00),
('Jabones en barra', 35.00, 36, 'Limpieza', 'Zote', 'Baja', 40.00),
('Leche', 24.00, 26, 'Comestibles', 'Santa Clara', 'Media', 29.00),
('Refrescos', 25.00, 21, 'Comestibles', 'Coca-Cola', 'Alta', 30.00),
('Sopa instantánea', 5.00, 40, 'Comestibles', 'Maruchan', 'Media', 8.00),
('Pan dulce', 6.00, 17, 'Comestibles', 'Bimbo', 'Alta', 12.00),
('Ropa para bebé', 30.00, 20, 'Ropa', 'Ancar', 'Baja', 35.00),
('Jabón líquido', 28.00, 16, 'Limpieza', 'Salvo', 'Media', 33.00),
('Pasta dental', 40.00, 25, 'Limpieza', 'Colgate', 'Alta', 45.00),
('Detergente', 50.00, 20, 'Limpieza', 'Ariel', 'Alta', 55.00),
('Chocolate', 25.00, 30, 'Comestibles', 'Hershey', 'Media', 28.00),
('Yogur', 18.00, 22, 'Comestibles', 'Danone', 'Alta', 22.00),
('Aceite vegetal', 45.00, 15, 'Comestibles', 'Mazola', 'Media', 50.00),
('Botanas', 10.00, 35, 'Comestibles', 'Barcel', 'Alta', 12.00),
('Celular', 12000.00, 10, 'Electrónica', 'Samsung', 'Alta', 12500.00),
('Laptop', 25000.00, 5, 'Electrónica', 'Apple', 'Alta', 26000.00),
('Televisor', 15000.00, 8, 'Electrónica', 'Sony', 'Alta', 15500.00),
('Desinfectante', 30.00, 40, 'Limpieza', 'Cloralex', 'Alta', 35.00),
('Salmón', 80.00, 12, 'Comestibles', 'Dulces del Mar', 'Alta', 85.00),
('Atún enlatado', 35.00, 50, 'Comestibles', 'StarKist', 'Alta', 40.00),
('Café', 55.00, 20, 'Comestibles', 'Nescafé', 'Alta', 60.00),
('Arroz', 18.00, 60, 'Comestibles', 'Molinera', 'Media', 20.00),
('Frijoles', 22.00, 45, 'Comestibles', 'La Costeña', 'Alta', 25.00),
('Aceitunas', 40.00, 30, 'Comestibles', 'La Española', 'Media', 45.00),
('Manteca', 25.00, 25, 'Comestibles', 'Manteca El Ahorro', 'Baja', 30.00),
('Guiso enlatado', 28.00, 40, 'Comestibles', 'La Comadre', 'Media', 32.00),
('Té', 20.00, 15, 'Comestibles', 'Lipton', 'Baja', 22.00),
('Jugo', 30.00, 35, 'Comestibles', 'Herdez', 'Alta', 33.00),
('Chocolate en polvo', 18.00, 18, 'Comestibles', 'Abuelita', 'Alta', 20.00);

INSERT INTO Departamento (Nombre, Descripcion) VALUES
('Comestibles', 'Departamento que ofrece productos alimenticios y bebidas.'),
('Limpieza', 'Productos para la higiene del hogar y personal.'),
('Electrónica', 'Dispositivos electrónicos como celulares, computadoras y televisores.'),
('Ropa', 'Prendas de vestir y accesorios para todas las edades.'),
('Calzado', 'Zapatos y otros tipos de calzado para diversas ocasiones.'),
('Farmacia', 'Medicamentos y productos de salud y bienestar.'),
('Ferretería', 'Herramientas y materiales de construcción.'),
('Deportes', 'Equipos y ropa deportiva para diversas disciplinas.'),
('Juguetería', 'Juguetes y entretenimiento para niños.'),
('Automotriz', 'Accesorios y repuestos para automóviles.'),
('Electrodomésticos', 'Aparatos eléctricos para el hogar.'),
('Papelería', 'Materiales escolares y de oficina.'),
('Muebles', 'Mobiliario para el hogar y la oficina.'),
('Jardinería', 'Herramientas y productos para el cuidado de jardines.'),
('Mascotas', 'Alimentos y accesorios para mascotas.'),
('Belleza', 'Productos de estética y cuidado personal.'),
('Panadería', 'Productos de panadería y repostería.'),
('Carnicería', 'Venta de carnes rojas y blancas.'),
('Pescadería', 'Venta de pescados y mariscos frescos.'),
('Verdulería', 'Venta de frutas y verduras frescas.'),
('Lácteos', 'Productos derivados de la leche como queso, yogur y mantequilla.'),
('Bebidas', 'Refrescos, jugos, cervezas y licores.'),
('Seguridad', 'Equipos de seguridad industrial y protección personal.'),
('Iluminación', 'Lámparas, focos y sistemas de iluminación.'),
('Construcción', 'Materiales de construcción y remodelación.'),
('Tecnología', 'Dispositivos tecnológicos y accesorios.'),
('Joyería', 'Venta de joyas y accesorios de lujo.'),
('Óptica', 'Venta de lentes y productos para el cuidado visual.'),
('Librería', 'Venta de libros y material educativo.'),
('Videojuegos', 'Consolas, juegos y accesorios gamer.'),
('Refrigeración', 'Equipos de refrigeración y aire acondicionado.'),
('Camping', 'Accesorios y equipamiento para actividades al aire libre.'),
('Carnaval', 'Artículos para fiestas y celebraciones.'),
('Herramientas', 'Venta de herramientas manuales y eléctricas.'),
('Seguros', 'Asesoría y venta de pólizas de seguros.'),
('Moda', 'Tendencias y productos de moda.'),
('Cuidado del bebé', 'Productos para bebés y maternidad.'),
('Gourmet', 'Alimentos y bebidas de alta calidad y exclusividad.'),
('Energía', 'Paneles solares y sistemas de energía alternativa.');

INSERT INTO Cliente (Nombre, Edad, Descripcion, Correo) VALUES
('Carlos Mendoza', 34, 'Cliente frecuente, interesado en productos tecnológicos.', 'carlos.mendoza@email.com'),
('Miguel Rodríguez', 29, 'Le gusta la ropa de marca y los accesorios deportivos.', 'miguel.rod@email.com'),
('Andrea López', 25, 'Compra productos de belleza y moda.', 'andrea.lopez@email.com'),
('Jorge Pérez', 41, 'Prefiere electrodomésticos y artículos de hogar.', 'jorge.perez@email.com'),
('Luis Fernández', 37, 'Cliente leal en la sección de ferretería.', 'luis.fernandez@email.com'),
('Axel Ramírez', 22, 'Aficionado a los videojuegos y consolas.', 'axel.ramirez@email.com'),
('Paola Gutiérrez', 30, 'Compradora de alimentos saludables y gourmet.', 'paola.gutierrez@email.com'),
('Denise Herrera', 28, 'Compra artículos de oficina y librería.', 'denise.herrera@email.com'),
('Dana Salazar', 26, 'Fanática de la moda y accesorios.', 'dana.salazar@email.com'),
('Juan Ríos', 33, 'Le gusta la jardinería y los productos ecológicos.', 'juan.rios@email.com'),
('Julieta Vargas', 31, 'Compra ropa y accesorios para bebés.', 'julieta.vargas@email.com'),
('Rafael Ortega', 38, 'Le gusta la sección de deportes y camping.', 'rafael.ortega@email.com'),
('Caleb Santos', 27, 'Interesado en tecnología y gadgets.', 'caleb.santos@email.com'),
('Alan Núñez', 45, 'Busca electrodomésticos y productos de iluminación.', 'alan.nunez@email.com'),
('Aaron Morales', 36, 'Compra insumos para su negocio de panadería.', 'aaron.morales@email.com'),
('Mariana Castro', 23, 'Prefiere la sección de cosméticos y perfumes.', 'mariana.castro@email.com'),
('Oscar Benítez', 40, 'Le encantan los productos automotrices.', 'oscar.benitez@email.com'),
('Victoria León', 35, 'Frecuente en la sección de farmacia y salud.', 'victoria.leon@email.com'),
('Esteban Domínguez', 42, 'Busca herramientas y equipos de construcción.', 'esteban.dominguez@email.com'),
('Gabriela Flores', 29, 'Compra artículos de cocina y hogar.', 'gabriela.flores@email.com'),
('Fernando Díaz', 32, 'Interesado en productos de seguridad.', 'fernando.diaz@email.com'),
('Sofía Méndez', 27, 'Le gusta la ropa de diseñador y accesorios de lujo.', 'sofia.mendez@email.com'),
('Hugo Velázquez', 39, 'Cliente de productos lácteos y panadería.', 'hugo.velazquez@email.com'),
('Ana Castañeda', 30, 'Aficionada a los productos ecológicos.', 'ana.castaneda@email.com'),
('Pablo Jiménez', 44, 'Compra herramientas eléctricas y de ferretería.', 'pablo.jimenez@email.com'),
('Mónica Reyes', 26, 'Frecuente en la sección de muebles y decoración.', 'monica.reyes@email.com'),
('Sebastián Blanco', 31, 'Le interesan productos gourmet y exclusivos.', 'sebastian.blanco@email.com'),
('Patricia Solís', 37, 'Cliente frecuente en la sección de juguetes.', 'patricia.solis@email.com'),
('Germán Escobar', 29, 'Compra productos de energía renovable.', 'german.escobar@email.com'),
('Fabiola Navarro', 41, 'Interesada en accesorios de moda y belleza.', 'fabiola.navarro@email.com'),
('Rodrigo Salinas', 28, 'Compra productos para mascotas.', 'rodrigo.salinas@email.com'),
('Isabel Guzmán', 35, 'Le gusta la sección de librería y papelería.', 'isabel.guzman@email.com'),
('Guillermo Peralta', 33, 'Prefiere electrónicos y gadgets.', 'guillermo.peralta@email.com'),
('Clara Sandoval', 27, 'Frecuente en la sección de carnes y pescados.', 'clara.sandoval@email.com'),
('David Pacheco', 40, 'Interesado en herramientas para carpintería.', 'david.pacheco@email.com'),
('Lucía Barrera', 29, 'Cliente de productos de maternidad y bebés.', 'lucia.barrera@email.com'),
('Héctor Miranda', 38, 'Compra ropa y calzado deportivo.', 'hector.miranda@email.com'),
('Valeria Suárez', 26, 'Le encantan los artículos de fiesta y carnaval.', 'valeria.suarez@email.com'),
('Joaquín Ramos', 43, 'Busca equipos de refrigeración y aire acondicionado.', 'joaquin.ramos@email.com');

-- Ejemplos de consultas

-- DISTINCT
-- Ejemplo 1: Obtener los nombres únicos de productos de la tienda departamental
SELECT DISTINCT nombre
FROM productos;

-- Ejemplo 2: Obtener categorías únicas
SELECT DISTINCT categoria
FROM productos;

-- Ejemplo 3: Obtener precios únicos
SELECT DISTINCT precio
FROM productos;

-- LIMIT
-- Mostrar los primeros 5 productos de la tienda departamental
SELECT nombre, precio
FROM productos
LIMIT 5;

-- Ejemplo 2: Mostrar los primeros 3 productos más caros
SELECT nombre, precio
FROM productos
ORDER BY precio DESC
LIMIT 3;

-- Ejemplo 3: Mostrar los primeros 10 productos con mayor stock
SELECT nombre, stock
FROM productos
ORDER BY stock DESC
LIMIT 10;

-- ORDER BY
-- Ordenar los productos por precio de manera ascendente
SELECT nombre, precio
FROM productos
ORDER BY precio ASC;

-- Ejemplo 2: Ordenar los productos por nombre de manera descendente
SELECT nombre, precio
FROM productos
ORDER BY nombre DESC;

-- Ejemplo 3: Ordenar los productos por categoría y luego por precio de manera ascendente
SELECT nombre, categoria, precio
FROM productos
ORDER BY categoria ASC, precio ASC;

-- Signos de comparación
-- Mostrar productos cuyo precio sea mayor a 100
SELECT nombre, precio
FROM productos
WHERE precio > 100;

-- Ejemplo 2: Mostrar productos cuyo stock sea menor a 50
SELECT nombre, stock
FROM productos
WHERE stock < 50;

-- Ejemplo 3: Mostrar productos cuyo precio sea igual a 250
SELECT nombre, precio
FROM productos
WHERE precio = 250;

-- LIKE
-- Buscar productos cuyo nombre comience con la letra 'C'
SELECT nombre
FROM productos
WHERE nombre LIKE 'C%';

-- Ejemplo 2: Buscar productos cuyo nombre termine en 'a'
SELECT nombre
FROM productos
WHERE nombre LIKE '%a';

-- Ejemplo 3: Buscar productos que contengan la palabra 'Mesa'
SELECT nombre
FROM productos
WHERE nombre LIKE '%Mesa%';

-- BETWEEN
-- Seleccionar productos cuyo precio esté entre 50 y 200
SELECT nombre, precio
FROM productos
WHERE precio BETWEEN 50 AND 200;

-- Ejemplo 2: Seleccionar productos con stock entre 10 y 30
SELECT nombre, stock
FROM productos
WHERE stock BETWEEN 10 AND 30;

-- Ejemplo 3: Seleccionar productos cuyo id esté entre 5 y 15
SELECT nombre, id
FROM productos
WHERE id BETWEEN 5 AND 15;

-- AND
-- Mostrar productos que sean de la categoría "Electrónica" y cuyo precio sea mayor a 500
SELECT nombre, precio
FROM productos
WHERE categoria = 'Electrónica' AND precio > 500;

-- Ejemplo 2: Mostrar productos de "Muebles" y con stock mayor a 20
SELECT nombre, stock
FROM productos
WHERE categoria = 'Muebles' AND stock > 20;

-- Ejemplo 3: Mostrar productos con nombre que contenga 'Mesa' y precio menor a 300
SELECT nombre, precio
FROM productos
WHERE nombre LIKE '%Mesa%' AND precio < 300;

-- OR
-- Mostrar productos que sean de la categoría "Muebles" o cuyo precio sea menor a 100
SELECT nombre, precio
FROM productos
WHERE categoria = 'Muebles' OR precio < 100;

-- Ejemplo 2: Mostrar productos que tengan stock mayor a 50 o cuyo nombre comience con 'T'
SELECT nombre, stock
FROM productos
WHERE stock > 50 OR nombre LIKE 'T%';

-- Ejemplo 3: Mostrar productos que cuesten 200 o cuyo stock sea 10
SELECT nombre, precio, stock
FROM productos
WHERE precio = 200 OR stock = 10;

-- NOT
-- Mostrar productos que no pertenezcan a la categoría "Tecnología"
SELECT nombre, categoria
FROM productos
WHERE NOT categoria = 'Tecnología';

-- Ejemplo 2: Mostrar productos cuyo nombre no comience con 'A'
SELECT nombre
FROM productos
WHERE NOT nombre LIKE 'A%';

-- Ejemplo 3: Mostrar productos cuyo precio no sea igual a 500
SELECT nombre, precio
FROM productos
WHERE NOT precio = 500;

-- IN
-- Seleccionar productos cuya categoría sea "Electrónica", "Muebles" o "Tecnología"
SELECT nombre, categoria
FROM productos
WHERE categoria IN ('Electrónica', 'Muebles', 'Tecnología');

-- Ejemplo 2: Seleccionar productos con precio en 100, 200 o 300
SELECT nombre, precio
FROM productos
WHERE precio IN (100, 200, 300);

-- Ejemplo 3: Seleccionar productos con id en 1, 5 o 10
SELECT nombre, id
FROM productos
WHERE id IN (1, 5, 10);

-- Operadores matemáticos
-- Calcular el precio con descuento del 10% en todos los productos
SELECT nombre, precio, precio * 0.90 AS precio_con_descuento
FROM productos;

-- Ejemplo 2: Calcular el doble del precio de cada producto
SELECT nombre, precio, precio * 2 AS doble_precio
FROM productos;

-- Ejemplo 3: Calcular el precio después de aplicar un impuesto del 16%
SELECT nombre, precio, precio * 1.16 AS precio_con_impuesto
FROM productos;

-- MIN
-- Obtener el precio mínimo de los productos
SELECT MIN(precio) AS precio_minimo
FROM productos;

-- Ejemplo 2: Obtener el stock mínimo
SELECT MIN(stock) AS stock_minimo
FROM productos;

-- Ejemplo 3: Obtener el ID más pequeño
SELECT MIN(id) AS id_minimo
FROM productos;

-- MAX
-- Obtener el precio máximo de los productos
SELECT MAX(precio) AS precio_maximo
FROM productos;

-- Ejemplo 2: Obtener el stock máximo
SELECT MAX(stock) AS stock_maximo
FROM productos;

-- Ejemplo 3: Obtener el ID más alto
SELECT MAX(id) AS id_maximo
FROM productos;


-- ESCUELA


--Creación de las tablas
CREATE TABLE Estudiante (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    edad INT,
    telefono VARCHAR(15),
    correo VARCHAR(100),
    asistencias INT,
    calificacion INT,
    grado INT,
    grupo CHAR(1)
);

CREATE TABLE Maestro (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    nombre VARCHAR(50), 
    edad INT, 
    telefono VARCHAR(15), 
    correo VARCHAR(100), 
    experiencia VARCHAR(20), 
    materia VARCHAR(50), 
    grupo CHAR(1)
);

CREATE TABLE Materia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    maestro VARCHAR(50),
    horas INT,
    tasa_aprobacion VARCHAR(10)
);

CREATE TABLE Grupo (
  id INT PRIMARY KEY AUTO_INCREMENT, 
  letra CHAR(2), 
  alumnos INT, 
  materias INT, 
  tasa_aprobacion VARCHAR(10), 
  especialidad VARCHAR(50)
);

-- Inserción de 40 registros inventados por tabla

INSERT INTO Estudiante (nombre, edad, telefono, correo, asistencias, calificacion, grado, grupo) VALUES
    ('Florina', 13, '4499274017', 'axel.artworks@mail.com', 50, 10, 1, 'A'),
    ('Fiora', 13, '4492864983', 'isla.dreamer@mail.com', 50, 10, 3, 'E'),
    ('Kent', 14, '4491092363', 'zara.travel@mail.com', 47, 8, 1, 'F'),
    ('Raven', 13, '4492846012', 'leo.vibes@mail.com', 48, 9, 2, 'B'),
    ('Erk', 13, '4499478263', 'tara.mindful@mail.com', 47, 8, 2, 'A'),
    ('Louise', 15, '4490584930', 'milo.smile@mail.com', 45, 7, 3, 'C'),
    ('Canas', 15, '4491750392', 'eira.think@mail.com', 50, 10, 1, 'A'),
    ('Kai', 14, '4490096948', 'kai.soul@mail.com', 50, 10, 3, 'B'),
    ('Fara', 13, '4492753840', 'fara.vision@mail.com', 50, 10, 2, 'D'),
    ('Enzo', 14, '4492846202', 'enzo.visionary@mail.com', 49, 9, 1, 'D'),
    ('Juan Pérez', 20, '555-1234', 'juan.perez@email.com', 23, 85, 3, 'A'),
    ('Ana Gómez', 22, '555-2345', 'ana.gomez@email.com', 25, 92, 3, 'B'),
    ('Luis Fernández', 19, '555-3456', 'luis.fernandez@email.com', 20, 75, 2, 'A'),
    ('Maria López', 21, '555-4567', 'maria.lopez@email.com', 24, 88, 2, 'B'),
    ('Carlos Díaz', 23, '555-5678', 'carlos.diaz@email.com', 22, 78, 4, 'A'),
    ('Sofía Martínez', 24, '555-6789', 'sofia.martinez@email.com', 20, 80, 4, 'B'),
    ('Pedro Sánchez', 25, '555-7890', 'pedro.sanchez@email.com', 18, 65, 3, 'A'),
    ('Laura Rodríguez', 20, '555-8901', 'laura.rodriguez@email.com', 26, 90, 3, 'B'),
    ('Ricardo Torres', 22, '555-9012', 'ricardo.torres@email.com', 19, 70, 2, 'A'),
    ('Elena Ruiz', 21, '555-0123', 'elena.ruiz@email.com', 23, 82, 2, 'B'),
    ('Andrés Castro', 19, '555-1234', 'andres.castro@email.com', 21, 85, 1, 'A'),
    ('Raquel Fernández', 24, '555-2345', 'raquel.fernandez@email.com', 20, 77, 4, 'B'),
    ('Martín Herrera', 23, '555-3456', 'martin.herrera@email.com', 25, 91, 3, 'A'),
    ('Susana Álvarez', 22, '555-4567', 'susana.alvarez@email.com', 22, 80, 2, 'B'),
    ('Eduardo Morales', 20, '555-5678', 'eduardo.morales@email.com', 19, 76, 3, 'A'),
    ('Patricia González', 21, '555-6789', 'patricia.gonzalez@email.com', 24, 89, 2, 'B'),
    ('Javier Martínez', 25, '555-7890', 'javier.martinez@email.com', 20, 72, 4, 'A'),
    ('Natalia Sánchez', 24, '555-8901', 'natalia.sanchez@email.com', 23, 86, 4, 'B'),
    ('David García', 19, '555-9012', 'david.garcia@email.com', 18, 66, 1, 'A'),
    ('Cristina López', 22, '555-0123', 'cristina.lopez@email.com', 25, 93, 3, 'B'),
    ('Oscar Pérez', 23, '555-1234', 'oscar.perez@email.com', 22, 80, 4, 'A'),
    ('Paola Jiménez', 21, '555-2345', 'paola.jimenez@email.com', 21, 73, 2, 'B'),
    ('Vicente García', 20, '555-3456', 'vicente.garcia@email.com', 23, 84, 3, 'A'),
    ('Lina Sánchez', 19, '555-4567', 'lina.sanchez@email.com', 25, 90, 1, 'B'),
    ('Manuel López', 24, '555-5678', 'manuel.lopez@email.com', 22, 79, 4, 'A'),
    ('Verónica Díaz', 22, '555-6789', 'veronica.diaz@email.com', 24, 88, 2, 'B'),
    ('Héctor González', 23, '555-7890', 'hector.gonzalez@email.com', 20, 77, 3, 'A'),
    ('Isabel Castro', 20, '555-8901', 'isabel.castro@email.com', 21, 75, 2, 'B'),
    ('Rafael Martínez', 21, '555-9012', 'rafael.martinez@email.com', 23, 91, 3, 'A'),
    ('Fabiola Hernández', 19, '555-0123', 'fabiola.hernandez@email.com', 24, 94, 1, 'B'),
    ('Antonio Fernández', 22, '555-1234', 'antonio.fernandez@email.com', 20, 70, 2, 'A'),
    ('Carolina Rodríguez', 24, '555-2345', 'carolina.rodriguez@email.com', 18, 68, 4, 'B');


INSERT INTO Maestro (nombre, edad, telefono, correo, experiencia, materia, grupo) VALUES 
    ('Lyn', 28, '449897264', 'mara.sunshine@mail.com', '7 años', 'Matemáticas', 'A'),
    ('Sain', 26, '449982364', 'andres.captain@mail.com', '3 años', 'Español', 'B'),
    ('Kent', 31, '449128735', 'laura.visionary@mail.com', '5 años', 'Inglés', 'C'),
    ('Florina', 29, '449287354', 'juan.shadowstep@mail.com', '9 años', 'Ciencias', 'F'),
    ('Will', 24, '449624736', 'lucia.rosefield@mail.com', '12 años', 'Historia', 'C'),
    ('Pedro Ramírez', 45, '555-1001', 'pedro.ramirez@email.com', '10 años', 'Matemáticas', 'A'),
    ('Ana Torres', 38, '555-1002', 'ana.torres@email.com', '8 años', 'Historia', 'B'),
    ('Luis Fernández', 50, '555-1003', 'luis.fernandez@email.com', '15 años', 'Lengua Española', 'A'),
    ('María González', 40, '555-1004', 'maria.gonzalez@email.com', '12 años', 'Física', 'B'),
    ('Carlos Sánchez', 32, '555-1005', 'carlos.sanchez@email.com', '5 años', 'Química', 'A'),
    ('Verónica Díaz', 29, '555-1006', 'veronica.diaz@email.com', '3 años', 'Biología', 'B'),
    ('Javier Martínez', 48, '555-1007', 'javier.martinez@email.com', '20 años', 'Matemáticas', 'A'),
    ('Susana Herrera', 36, '555-1008', 'susana.herrera@email.com', '9 años', 'Geografía', 'B'),
    ('José Pérez', 42, '555-1009', 'jose.perez@email.com', '14 años', 'Inglés', 'A'),
    ('Patricia Rodríguez', 41, '555-1010', 'patricia.rodriguez@email.com', '13 años', 'Lengua Española', 'B'),
    ('Roberto López', 39, '555-1011', 'roberto.lopez@email.com', '10 años', 'Historia', 'A'),
    ('Elena Álvarez', 34, '555-1012', 'elena.alvarez@email.com', '7 años', 'Química', 'B'),
    ('Ricardo Castro', 45, '555-1013', 'ricardo.castro@email.com', '16 años', 'Física', 'A'),
    ('Marta Fernández', 33, '555-1014', 'marta.fernandez@email.com', '6 años', 'Biología', 'B'),
    ('Antonio Sánchez', 47, '555-1015', 'antonio.sanchez@email.com', '18 años', 'Matemáticas', 'A'),
    ('Laura Ramos', 35, '555-1016', 'laura.ramos@email.com', '8 años', 'Geografía', 'B'),
    ('David Gómez', 30, '555-1017', 'david.gomez@email.com', '4 años', 'Inglés', 'A'),
    ('Carmen Ruiz', 44, '555-1018', 'carmen.ruiz@email.com', '11 años', 'Lengua Española', 'B'),
    ('Raúl Díaz', 49, '555-1019', 'raul.diaz@email.com', '19 años', 'Historia', 'A'),
    ('Gabriela Mendoza', 31, '555-1020', 'gabriela.mendoza@email.com', '6 años', 'Biología', 'B'),
    ('Alejandro Martínez', 38, '555-1021', 'alejandro.martinez@email.com', '8 años', 'Física', 'A'),
    ('Mercedes López', 42, '555-1022', 'mercedes.lopez@email.com', '14 años', 'Química', 'B'),
    ('Juan Hernández', 36, '555-1023', 'juan.hernandez@email.com', '9 años', 'Matemáticas', 'A'),
    ('Sofía Castro', 37, '555-1024', 'sofia.castro@email.com', '10 años', 'Geografía', 'B'),
    ('Fernando Pérez', 29, '555-1025', 'fernando.perez@email.com', '5 años', 'Inglés', 'A'),
    ('Esteban Romero', 40, '555-1026', 'esteban.romero@email.com', '12 años', 'Lengua Española', 'B'),
    ('Lorena Jiménez', 32, '555-1027', 'lorena.jimenez@email.com', '7 años', 'Historia', 'A'),
    ('Cristina Sánchez', 46, '555-1028', 'cristina.sanchez@email.com', '17 años', 'Física', 'B'),
    ('Eduardo Herrera', 43, '555-1029', 'eduardo.herrera@email.com', '13 años', 'Química', 'A'),
    ('Natalia Martínez', 50, '555-1030', 'natalia.martinez@email.com', '22 años', 'Biología', 'B'),
    ('Víctor Morales', 28, '555-1031', 'victor.morales@email.com', '4 años', 'Matemáticas', 'A'),
    ('Isabel Fernández', 41, '555-1032', 'isabel.fernandez@email.com', '12 años', 'Lengua Española', 'B'),
    ('Marcelo Pérez', 34, '555-1033', 'marcelo.perez@email.com', '6 años', 'Geografía', 'A'),
    ('María López', 37, '555-1034', 'maria.lopez@email.com', '9 años', 'Historia', 'B'),
    ('Antonio Jiménez', 44, '555-1035', 'antonio.jimenez@email.com', '16 años', 'Inglés', 'A'),
    ('Carlos García', 33, '555-1036', 'carlos.garcia@email.com', '8 años', 'Matemáticas', 'B'),
    ('Raquel Pérez', 39, '555-1037', 'raquel.perez@email.com', '10 años', 'Español', 'A'),
    ('Juliana Torres', 29, '555-1038', 'juliana.torres@email.com', '5 años', 'Inglés', 'B'),
    ('Ricardo Hernández', 41, '555-1039', 'ricardo.hernandez@email.com', '12 años', 'Física', 'A'),
    ('Mónica Ramírez', 36, '555-1040', 'monica.ramirez@email.com', '9 años', 'Química', 'B'),
    ('Manuel Díaz', 44, '555-1041', 'manuel.diaz@email.com', '15 años', 'Ciencias', 'A'),
    ('Eva Martínez', 30, '555-1042', 'eva.martinez@email.com', '6 años', 'Historia', 'B'),
    ('José Ramírez', 28, '555-1043', 'jose.ramirez@email.com', '4 años', 'Geografía', 'A'),
    ('Antonio Fernández', 47, '555-1044', 'antonio.fernandez@email.com', '18 años', 'Matemáticas', 'B'),
    ('Sofía Pérez', 40, '555-1045', 'sofia.perez@email.com', '13 años', 'Lengua Española', 'A');

INSERT INTO Materia (nombre, maestro, horas, tasa_aprobacion) VALUES 
    ('Matemáticas', 'Lyn', 150, '80%'),
    ('Español', 'Sain', 200, '75%'),
    ('Inglés', 'Kent', 150, '90%'),
    ('Ciencias', 'Florina', 100, '90%'),
    ('Historia', 'Will', 90, '85%'),
    ('Matemáticas I', 'Pedro Ramírez', 50, '80%'),
    ('Historia Universal', 'Ana Torres', 45, '75%'),
    ('Lengua Española', 'Luis Fernández', 40, '85%'),
    ('Física I', 'María González', 55, '70%'),
    ('Química General', 'Carlos Sánchez', 50, '80%'),
    ('Biología Básica', 'Verónica Díaz', 40, '85%'),
    ('Matemáticas II', 'Javier Martínez', 55, '80%'),
    ('Geografía Humana', 'Susana Herrera', 45, '70%'),
    ('Inglés I', 'José Pérez', 40, '90%'),
    ('Literatura Española', 'Patricia Rodríguez', 35, '85%'),
    ('Historia de México', 'Roberto López', 50, '75%'),
    ('Química Orgánica', 'Elena Álvarez', 50, '78%'),
    ('Física II', 'Ricardo Castro', 60, '70%'),
    ('Biología Molecular', 'Marta Fernández', 45, '80%'),
    ('Matemáticas III', 'Antonio Sánchez', 55, '85%'),
    ('Geografía Física', 'Laura Ramos', 50, '80%'),
    ('Inglés II', 'David Gómez', 40, '90%'),
    ('Lengua y Literatura', 'Carmen Ruiz', 45, '88%'),
    ('Historia Contemporánea', 'Raúl Díaz', 50, '77%'),
    ('Biología Celular', 'Gabriela Mendoza', 40, '82%'),
    ('Física de Materiales', 'Alejandro Martínez', 55, '75%'),
    ('Química Analítica', 'Mercedes López', 50, '80%'),
    ('Matemáticas Avanzadas', 'Juan Hernández', 60, '85%'),
    ('Geografía del Clima', 'Sofía Castro', 45, '78%'),
    ('Inglés III', 'Fernando Pérez', 40, '90%'),
    ('Lengua Española Avanzada', 'Esteban Romero', 45, '85%'),
    ('Historia del Arte', 'Lorena Jiménez', 40, '80%'),
    ('Química Industrial', 'Cristina Sánchez', 50, '76%'),
    ('Física Teórica', 'Eduardo Herrera', 55, '72%'),
    ('Biología Evolutiva', 'Natalia Martínez', 45, '80%'),
    ('Matemáticas Discretas', 'Carlos Sánchez', 50, '85%'),
    ('Geografía Económica', 'José Pérez', 40, '70%'),
    ('Inglés Académico', 'Patricia Rodríguez', 45, '90%'),
    ('Lengua y Cultura', 'Raúl Díaz', 50, '77%'),
    ('Historia de la Ciencia', 'Ana Torres', 45, '75%'),
    ('Matemáticas Financieras', 'Luis Fernández', 50, '80%');

INSERT INTO Grupo (letra, alumnos, materias, tasa_aprobacion, especialidad) VALUES 
  ('A', 48, 10, '80%', 'Programación'),
  ('B', 49, 10, '80%', 'Biología'),
  ('C', 50, 10, '80%', 'Recursos humanos'),
  ('D', 50, 10, '90%', 'Mantenimiento'),
  ('E', 47, 10, '80%', 'Automotriz'),
  ('F', 49, 10, '80%', 'Laboratorista'),
  ('A', 30, 6, '85%', 'Ciencias Sociales'),
  ('B', 28, 6, '80%', 'Matemáticas'),
  ('C', 32, 5, '88%', 'Ciencias Naturales'),
  ('D', 25, 7, '75%', 'Humanidades'),
  ('E', 27, 5, '90%', 'Ingeniería'),
  ('F', 30, 6, '82%', 'Biología'),
  ('G', 35, 6, '78%', 'Literatura'),
  ('H', 33, 5, '80%', 'Física'),
  ('I', 29, 6, '85%', 'Química'),
  ('J', 31, 5, '83%', 'Matemáticas Aplicadas'),
  ('K', 26, 6, '80%', 'Geografía'),
  ('L', 28, 7, '76%', 'Artes Plásticas'),
  ('M', 30, 5, '87%', 'Historia'),
  ('N', 32, 6, '79%', 'Medicina'),
  ('O', 27, 6, '81%', 'Derecho'),
  ('P', 34, 6, '82%', 'Ciencias de la Computación'),
  ('Q', 30, 7, '86%', 'Psicología'),
  ('R', 29, 5, '77%', 'Ingeniería Electrónica'),
  ('S', 28, 5, '84%', 'Filosofía'),
  ('T', 33, 6, '88%', 'Ingeniería Civil'),
  ('U', 25, 5, '90%', 'Economía'),
  ('V', 30, 6, '85%', 'Administración de Empresas'),
  ('W', 31, 7, '75%', 'Biotecnología'),
  ('X', 30, 5, '78%', 'Arquitectura'),
  ('Y', 32, 6, '80%', 'Educación Física'),
  ('Z', 27, 5, '85%', 'Ciencias Ambientales'),
  ('AA', 33, 7, '79%', 'Nutrición'),
  ('BB', 30, 5, '82%', 'Medicina Veterinaria'),
  ('CC', 28, 6, '76%', 'Comunicación Social'),
  ('DD', 30, 7, '84%', 'Ingeniería Mecánica'),
  ('EE', 31, 6, '81%', 'Derecho Internacional'),
  ('FF', 29, 5, '87%', 'Publicidad'),
  ('GG', 34, 6, '75%', 'Arquitectura de Paisajes'),
  ('HH', 32, 5, '86%', 'Ciencias Políticas');

-- Ejemplos de consultas

-- DISTINCT
-- Obtener los distintos grados de los estudiantes:
SELECT DISTINCT grado FROM Estudiante;

-- Obtener los distintos nombres de materias:
SELECT DISTINCT nombre FROM Materia;

-- Obtener los distintos grupos de los maestros:
SELECT DISTINCT grupo FROM Maestro;

-- LIMIT
-- Obtener los primeros 5 estudiantes con mejor calificación:
SELECT nombre, calificacion FROM Estudiante ORDER BY calificacion DESC LIMIT 5;

-- Obtener los 3 primeros maestros con más experiencia:
SELECT nombre, experiencia FROM Maestro ORDER BY experiencia DESC LIMIT 3;

-- Obtener los primeros 10 registros de la tabla Materia:
SELECT * FROM Materia LIMIT 10;

-- ORDER BY
-- Obtener los estudiantes ordenados por calificación de mayor a menor:
SELECT nombre, calificacion FROM Estudiante ORDER BY calificacion DESC;

-- Obtener los maestros ordenados por edad de menor a mayor:
SELECT nombre, edad FROM Maestro ORDER BY edad ASC;

-- Obtener los grupos ordenados por tasa de aprobación en orden descendente:
SELECT letra, tasa_aprobacion FROM Grupo ORDER BY tasa_aprobacion DESC;

-- OPERADORES DE COMPARACION
-- Obtener los estudiantes con calificación mayor a 80:
SELECT nombre FROM Estudiante WHERE calificacion > 80;

-- Obtener los maestros cuyo nombre es "Kent" o su experiencia es mayor a 10 años:
SELECT nombre FROM Maestro WHERE nombre = 'Kent' OR experiencia > '10 años';

-- Obtener los estudiantes cuya edad esté entre 15 y 20 años:
SELECT nombre FROM Estudiante WHERE edad BETWEEN 15 AND 20;

-- LIKE
-- Obtener los estudiantes cuyo nombre comienza con "A":
SELECT nombre FROM Estudiante WHERE nombre LIKE 'A%';

-- Obtener los maestros cuyo correo contiene "gmail":
SELECT nombre, correo FROM Maestro WHERE correo LIKE '%gmail%';

-- Obtener los estudiantes cuyo grupo es 'A' y cuyo nombre contiene "F":
SELECT nombre FROM Estudiante WHERE grupo = 'A' AND nombre LIKE '%F%';

-- BETWEEN
-- Obtener los estudiantes cuya calificación esté entre 70 y 90:
SELECT nombre, calificacion FROM Estudiante WHERE calificacion BETWEEN 70 AND 90;

-- Obtener los maestros cuya edad esté entre 30 y 40 años:
SELECT nombre, edad FROM Maestro WHERE edad BETWEEN 30 AND 40;

-- Obtener las materias cuya duración esté entre 40 y 60 horas:
SELECT nombre, horas FROM Materia WHERE horas BETWEEN 40 AND 60;

-- AND
-- Obtener los estudiantes que tienen calificación mayor a 80 y asistencia mayor a 30:
SELECT nombre FROM Estudiante WHERE calificacion > 80 AND asistencias > 30;

-- Obtener los maestros de la materia "Matemáticas" que tienen más de 5 años de experiencia:
SELECT nombre FROM Maestro WHERE materia = 'Matemáticas' AND experiencia > '5 años';

-- Obtener los estudiantes cuyo grado es 3 y que pertenecen al grupo 'A':
SELECT nombre FROM Estudiante WHERE grado = 3 AND grupo = 'A';

-- OR
-- Obtener los estudiantes que tienen calificación mayor a 90 o asistencia mayor a 50:
SELECT nombre FROM Estudiante WHERE calificacion > 90 OR asistencias > 50;

-- Obtener los maestros que enseñan "Historia" o "Matemáticas":
SELECT nombre FROM Maestro WHERE materia = 'Historia' OR materia = 'Matemáticas';

-- Obtener los estudiantes cuyo grado es 1 o 2:
SELECT nombre FROM Estudiante WHERE grado = 1 OR grado = 2;

-- NOT
-- Obtener los estudiantes cuya calificación no sea 10:
SELECT nombre FROM Estudiante WHERE NOT calificacion = 10;

-- Obtener los maestros que no enseñan "Ciencias":
SELECT nombre FROM Maestro WHERE materia NOT LIKE 'Ciencias';

-- Obtener los estudiantes cuyo grupo no es 'A':
SELECT nombre FROM Estudiante WHERE NOT grupo = 'A';

-- IN
-- Obtener los estudiantes cuyo grupo es 'A', 'B', o 'C':
SELECT nombre FROM Estudiante WHERE grupo IN ('A', 'B', 'C');

-- Obtener los maestros cuya materia es 'Matemáticas' o 'Historia':
SELECT nombre FROM Maestro WHERE materia IN ('Matemáticas', 'Historia');

-- Obtener los estudiantes que tienen calificación 9, 8, o 7:
SELECT nombre FROM Estudiante WHERE calificacion IN (9, 8, 7);

-- 	OPERACIONES MATEMATICAS
-- Sumar todas las calificaciones de los estudiantes:
SELECT SUM(calificacion) FROM Estudiante;

-- Obtener el promedio de edad de los estudiantes:
SELECT AVG(edad) FROM Estudiante;

-- Multiplicar el número de horas de cada materia por 2 y mostrar el resultado:
SELECT nombre, horas * 2 AS horas_dobladas FROM Materia;

-- MIN
-- Obtener la mínima calificación de los estudiantes:
SELECT MIN(calificacion) FROM Estudiante;

-- Obtener la edad mínima de los maestros:
SELECT MIN(edad) FROM Maestro;

-- Obtener el mínimo número de horas de una materia:
SELECT MIN(horas) FROM Materia;

-- MAX
-- Obtener la máxima calificación de los estudiantes:
SELECT MAX(calificacion) FROM Estudiante;

-- Obtener la edad máxima de los maestros:
SELECT MAX(edad) FROM Maestro;

-- Obtener la máxima cantidad de materias en un grupo:
SELECT MAX(materias) FROM Grupo;

-- COUNT
-- Contar el número de estudiantes:
SELECT COUNT(*) FROM Estudiante;

-- Contar el número de maestros que imparten "Matemáticas":
SELECT COUNT(*) FROM Maestro WHERE materia = 'Matemáticas';

-- Contar el número de grupos que tienen más de 30 estudiantes:
SELECT COUNT(*) FROM Grupo WHERE alumnos > 30;

-- SUM
-- Sumar todas las asistencias de los estudiantes:
SELECT SUM(asistencias) FROM Estudiante;

-- Sumar todas las horas de las materias:
SELECT SUM(horas) FROM Materia;

-- Sumar el número de alumnos en los grupos de la especialidad 'Programación':
SELECT SUM(alumnos) FROM Grupo WHERE especialidad = 'Programación';

-- AVG
-- Obtener el promedio de las calificaciones de los estudiantes:
SELECT AVG(calificacion) FROM Estudiante;

-- Obtener el promedio de edad de los maestros:
SELECT AVG(edad) FROM Maestro;

-- Obtener el promedio de horas de las materias de la especialidad 'Matemáticas':
SELECT AVG(horas) FROM Materia WHERE nombre LIKE 'Matemáticas%';

-- CONCAT
-- Concatenar el nombre y apellido de los estudiantes:
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM Estudiante;

-- Concatenar el nombre de la materia y el nombre del maestro:
SELECT CONCAT(materia, ' - ', maestro) AS materia_maestro FROM Materia;

-- Concatenar la especialidad y la letra del grupo:
SELECT CONCAT(especialidad, ' - ', letra) AS especialidad_grupo FROM Grupo;

-- UPPER
-- Mostrar los nombres de los estudiantes en mayúsculas:
SELECT UPPER(nombre) FROM Estudiante;

-- Mostrar los nombres de las materias en mayúsculas:
SELECT UPPER(nombre) FROM Materia;

-- Mostrar los correos de los maestros en mayúsculas:
SELECT UPPER(correo) FROM Maestro;

-- LOWER
-- Mostrar los nombres de los estudiantes en minúsculas:
SELECT LOWER(nombre) FROM Estudiante;

-- Mostrar los correos de los maestros en minúsculas:
SELECT LOWER(correo) FROM Maestro;

-- Mostrar las especialidades en minúsculas:
SELECT LOWER(especialidad) FROM Grupo;

-- OFFSET
-- Obtener los estudiantes comenzando desde el registro 5:
SELECT * FROM Estudiante LIMIT 10 OFFSET 5;

-- Obtener las materias comenzando desde el registro 3:
SELECT * FROM Materia LIMIT 10 OFFSET 3;

-- Obtener los maestros comenzando desde el registro 10:
SELECT * FROM Maestro LIMIT 10 OFFSET 10;

-- GROUP BY
-- Obtener el promedio de calificación por grado de los estudiantes:
SELECT grado, AVG(calificacion) FROM Estudiante GROUP BY grado;

-- Obtener el número de maestros por materia:
SELECT materia, COUNT(*) FROM Maestro GROUP BY materia;

-- Obtener el total de horas por grupo en las materias:
SELECT grupo, SUM(horas) FROM Materia GROUP BY grupo;

-- HAVING
-- Obtener los grupos con más de 30 alumnos:
SELECT letra, alumnos FROM Grupo HAVING alumnos > 30;

-- Obtener las materias con más de 50 horas:
SELECT nombre, horas FROM Materia GROUP BY nombre HAVING horas > 50;

-- Obtener los maestros con más de 10 años de experiencia:
SELECT nombre, experiencia FROM Maestro HAVING experiencia > '10 años';

-- CASE
-- Obtener el nivel de calificación de los estudiantes basado en su calificación:
SELECT nombre, 
       CASE 
           WHEN calificacion >= 9 THEN 'Excelente'
           WHEN calificacion >= 7 THEN 'Bueno'
           ELSE 'Regular'
       END AS nivel_calificacion
FROM Estudiante;

-- Obtener el rango de edad de los maestros:
SELECT nombre, 
       CASE
           WHEN edad <= 30 THEN 'Joven'
           WHEN edad <= 40 THEN 'Mediana'
           ELSE 'Mayor'
       END AS rango_edad
FROM Maestro;

-- Determinar si el maestro tiene experiencia alta o baja según sus años de experiencia:
SELECT nombre, 
       CASE 
           WHEN experiencia >= '10 años' THEN 'Experiencia Alta'
           ELSE 'Experiencia Baja'
       END AS nivel_experiencia
FROM Maestro;

-- IFNULL
-- Obtener el nombre del estudiante, mostrando "Sin nombre" si es NULL:
SELECT IFNULL(nombre, 'Sin nombre') FROM Estudiante;

-- Obtener el correo del maestro, mostrando "Sin correo" si es NULL:
SELECT IFNULL(correo, 'Sin correo') FROM Maestro;

-- Mostrar la calificación de los estudiantes, mostrando 0 si es NULL:
SELECT IFNULL(calificacion, 0) FROM Estudiante;


-- LIGA DE FUTBOL

--Creación de las tablas
CREATE TABLE Categorias (
    rango_edades VARCHAR(10),
    dia_partido VARCHAR(10),
    canchas_disponibles INT,
    horario_juego TIME
);

CREATE TABLE Arbitros (
    nombre VARCHAR(50),
    edad INT,
    disponibilidad VARCHAR(20),
    experiencia VARCHAR(10),
    promedio_satisfaccion DECIMAL(5,2),
    partidos_asistidos INT,
    salario DECIMAL(10,2)
);

CREATE TABLE Jugador (
    nombre VARCHAR(50),
    edad INT,
    equipo VARCHAR(50),
    anotaciones INT,
    salvadas INT,
    asistencias INT,
    tarjetas_amarillas INT,
    tarjetas_rojas INT
);

CREATE TABLE Equipo (
    nombre VARCHAR(50),
    cantidad_jugadores INT,
    partidos_ganados INT,
    partidos_perdidos INT,
    partidos_empatados INT
);

-- Inserción de 40 registros inventados por tabla

INSERT INTO Categorias (rango_edades, dia_partido, canchas_disponibles, horario_juego) VALUES
('>5', 'Lunes', 2, '06:00:00'),
('6-8', 'Martes', 4, '07:30:00'),
('8-10', 'Miércoles', 3, '08:15:00'),
('11-15', 'Jueves', 5, '09:45:00'),
('16-18', 'Viernes', 6, '10:00:00'),
('19-21', 'Sábado', 7, '11:30:00'),
('21-23', 'Domingo', 7, '12:00:00'),
('24-30', 'Sábado', 8, '01:15:00'),
('31-35', 'Domingo', 7, '02:00:00'),
('36-40', 'Sábado', 8, '03:30:00'),
('>40', 'Domingo', 7, '04:00:00'),
('Sub 15', 'Jueves', 5, '05:45:00'),
('Sub 18', 'Viernes', 6, '06:30:00'),
('Sub 21', 'Sábado', 8, '08:00:00'),
('Sub 24', 'Sábado', 8, '09:15:00'),
('10-15', 'Lunes', 3, '16:00:00'),
('16-20', 'Martes', 2, '18:00:00'),
('21-25', 'Miércoles', 4, '19:00:00'),
('26-30', 'Jueves', 3, '17:00:00'),
('31-35', 'Viernes', 2, '20:00:00'),
('10-15', 'Sábado', 5, '09:00:00'),
('16-20', 'Domingo', 4, '10:00:00'),
('21-25', 'Lunes', 3, '14:00:00'),
('26-30', 'Martes', 2, '15:00:00'),
('31-35', 'Miércoles', 4, '16:00:00'),
('10-15', 'Jueves', 3, '17:00:00'),
('16-20', 'Viernes', 2, '18:00:00'),
('21-25', 'Sábado', 5, '19:00:00'),
('26-30', 'Domingo', 4, '20:00:00'),
('31-35', 'Lunes', 3, '21:00:00'),
('10-15', 'Martes', 2, '09:00:00'),
('16-20', 'Miércoles', 4, '10:00:00'),
('21-25', 'Jueves', 3, '11:00:00'),
('26-30', 'Viernes', 2, '12:00:00'),
('31-35', 'Sábado', 5, '13:00:00'),
('10-15', 'Domingo', 4, '14:00:00'),
('16-20', 'Lunes', 3, '15:00:00'),
('21-25', 'Martes', 2, '16:00:00'),
('26-30', 'Miércoles', 4, '17:00:00'),
('31-35', 'Jueves', 3, '18:00:00');

INSERT INTO Arbitros (nombre, edad, disponibilidad, experiencia, promedio_satisfaccion, partidos_asistidos, salario) VALUES
('Guy', 25, 'Lunes', '7 años', 80, 30, 1000),
('Merlinus', 30, 'Miércoles', '3 años', 89, 20, 1000),
('Erk', 27, 'Viernes', '6 años', 89, 30, 1300),
('Priscilla', 22, 'Martes', '7 años', 96, 50, 1000),
('Raven', 21, 'Jueves', '2 años', 90, 60, 1100),
('Lucius', 30, 'Domingo', '4 años', 87, 47, 1000),
('Canas', 29, 'Domingo', '6 años', 80, 60, 1200),
('Dart', 28, 'Domingo', '4 años', 86, 80, 1400),
('Fiora', 21, 'Sábado', '9 años', 90, 90, 2000),
('Legault', 21, 'Sábado', '9 años', 90, 100, 2000),
('Ninian', 22, 'Lunes', '7 años', 88, 110, 2000),
('Isadora', 23, 'Miércoles', '7 años', 89, 140, 1700),
('Heath', 27, 'Sábado', '6 años', 86, 50, 1000),
('Rath', 32, 'Sábado', '8 años', 87, 60, 1500),
('Hawkeye', 40, 'Domingo', '6 años', 89, 99, 1200),
('Juan Pérez', 34, 'Alta', 'Avanzada', 4.8, 150, 2500.00),
('Carlos Gómez', 40, 'Media', 'Intermedia', 4.2, 120, 2200.00),
('Luis Fernández', 28, 'Alta', 'Básica', 3.9, 80, 1800.00),
('José Ramírez', 50, 'Baja', 'Avanzada', 4.7, 200, 3000.00),
('Miguel López', 32, 'Alta', 'Intermedia', 4.5, 130, 2400.00),
('Pedro Sánchez', 36, 'Media', 'Intermedia', 4.1, 110, 2100.00),
('Andrés Herrera', 45, 'Baja', 'Avanzada', 4.6, 190, 2800.00),
('Sergio Molina', 38, 'Alta', 'Avanzada', 4.9, 160, 2600.00),
('David Jiménez', 42, 'Media', 'Intermedia', 4.3, 140, 2300.00),
('Fernando Díaz', 29, 'Alta', 'Básica', 3.8, 90, 1700.00),
('Javier Ruiz', 33, 'Media', 'Intermedia', 4.0, 100, 2000.00),
('Gustavo Castro', 48, 'Baja', 'Avanzada', 4.5, 180, 2900.00),
('Alberto Torres', 31, 'Alta', 'Intermedia', 4.4, 125, 2350.00),
('Francisco Núñez', 39, 'Media', 'Intermedia', 4.2, 115, 2150.00),
('Oscar Mendoza', 27, 'Alta', 'Básica', 3.7, 85, 1750.00),
('Raúl Paredes', 51, 'Baja', 'Avanzada', 4.8, 210, 3100.00),
('Adrián Cordero', 35, 'Alta', 'Intermedia', 4.6, 135, 2450.00),
('Héctor Vázquez', 41, 'Media', 'Intermedia', 4.3, 125, 2250.00),
('Felipe Salazar', 30, 'Alta', 'Básica', 3.9, 95, 1850.00),
('Marcos Ortega', 47, 'Baja', 'Avanzada', 4.7, 195, 2950.00),
('Daniel Ríos', 37, 'Media', 'Intermedia', 4.1, 105, 2050.00),
('Esteban Silva', 44, 'Baja', 'Avanzada', 4.5, 175, 2750.00),
('Ricardo Muñoz', 28, 'Alta', 'Básica', 3.8, 88, 1780.00),
('Jorge Espinoza', 50, 'Baja', 'Avanzada', 4.6, 200, 3000.00),
('Salvador Peña', 43, 'Media', 'Intermedia', 4.4, 130, 2300.00);

INSERT INTO Jugador (nombre, edad, equipo, anotaciones, salvadas, asistencias, tarjetas_amarillas, tarjetas_rojas) VALUES
('Geitz', 5, 'Galacticos', 0, 2, 3, 0, 0),
('Wallace', 10, 'Cuervos fc', 1, 3, 0, 0, 0),
('Farina', 23, 'Barcelona', 2, 4, 9, 1, 0),
('Pent', 21, 'Real Madrid', 10, 3, 9, 3, 0),
('Louise', 15, 'Chelsea', 9, 5, 1, 0, 0),
('Karel', 15, 'Burnley', 9, 5, 1, 0, 0),
('Harken', 16, 'West Ham', 5, 9, 3, 1, 0),
('Nino', 7, 'Newcastle', 12, 4, 0, 0, 1),
('Jaffar', 8, 'Southampton', 15, 1, 12, 0, 0),
('Vaida', 9, 'Liverpool', 2, 5, 5, 0, 0),
('Nils', 9, 'Porto', 5, 9, 9, 2, 0),
('Karla', 20, 'Milan', 7, 8, 5, 3, 0),
('Renault', 21, 'Juventus', 8, 9, 10, 4, 0),
('Athos', 40, 'Bayern Munich', 21, 10, 4, 0, 0),
('Nergal', 35, 'Nápoli', 22, 11, 8, 3, 1),
('Jugador1', 18, 'Equipo1', 10, 5, 8, 1, 0),
('Jugador2', 19, 'Equipo2', 12, 6, 7, 2, 1),
('Jugador3', 20, 'Equipo3', 15, 4, 9, 0, 0),
('Jugador4', 21, 'Equipo4', 8, 7, 6, 3, 1),
('Jugador5', 22, 'Equipo5', 11, 5, 10, 1, 0),
('Jugador6', 23, 'Equipo1', 9, 6, 12, 2, 1),
('Jugador7', 24, 'Equipo2', 14, 3, 11, 0, 0),
('Jugador8', 25, 'Equipo3', 7, 8, 5, 3, 1),
('Jugador9', 26, 'Equipo4', 10, 4, 9, 1, 0),
('Jugador10', 27, 'Equipo5', 12, 5, 8, 2, 1),
('Jugador11', 18, 'Equipo1', 11, 6, 10, 0, 0),
('Jugador12', 19, 'Equipo2', 13, 7, 9, 3, 1),
('Jugador13', 20, 'Equipo3', 8, 4, 7, 1, 0),
('Jugador14', 21, 'Equipo4', 9, 5, 6, 2, 1),
('Jugador15', 22, 'Equipo5', 15, 3, 12, 0, 0),
('Jugador16', 23, 'Equipo1', 10, 8, 9, 3, 1),
('Jugador17', 24, 'Equipo2', 7, 5, 8, 1, 0),
('Jugador18', 25, 'Equipo3', 12, 6, 10, 2, 1),
('Jugador19', 26, 'Equipo4', 14, 4, 11, 0, 0),
('Jugador20', 27, 'Equipo5', 9, 7, 5, 3, 1),
('Jugador21', 18, 'Equipo1', 11, 5, 8, 1, 0),
('Jugador22', 19, 'Equipo2', 13, 6, 9, 2, 1),
('Jugador23', 20, 'Equipo3', 7, 4, 6, 0, 0),
('Jugador24', 21, 'Equipo4', 10, 7, 10, 3, 1),
('Jugador25', 22, 'Equipo5', 12, 5, 9, 1, 0);

INSERT INTO Equipo (nombre, cantidad_jugadores, partidos_ganados, partidos_perdidos, partidos_empatados) VALUES
('Galacticos', 15, 5, 1, 0),
('Cuervos fc', 20, 6, 6, 0),
('Barcelona', 15, 7, 5, 0),
('Real Madrid', 13, 4, 8, 1),
('Chelsea', 18, 8, 9, 2),
('Burnley', 19, 2, 9, 7),
('West Ham', 17, 6, 8, 5),
('Newcastle', 21, 1, 3, 0),
('Southampton', 23, 7, 6, 4),
('Liverpool', 20, 7, 5, 4),
('Porto', 20, 7, 4, 4),
('Milan', 15, 3, 8, 4),
('Juventus', 16, 6, 4, 2),
('Bayern Munich', 17, 6, 6, 7),
('Nápoli', 20, 8, 6, 7),
('Equipo1', 22, 10, 5, 3),
('Equipo2', 23, 8, 7, 4),
('Equipo3', 21, 12, 4, 2),
('Equipo4', 20, 9, 6, 5),
('Equipo5', 24, 11, 5, 3),
('Equipo6', 22, 7, 8, 4),
('Equipo7', 23, 10, 5, 3),
('Equipo8', 21, 9, 6, 5),
('Equipo9', 20, 11, 4, 3),
('Equipo10', 24, 8, 7, 4),
('Equipo11', 22, 12, 3, 5),
('Equipo12', 23, 9, 6, 5),
('Equipo13', 21, 10, 5, 3),
('Equipo14', 20, 11, 4, 3),
('Equipo15', 24, 7, 8, 4),
('Equipo16', 22, 8, 7, 4),
('Equipo17', 23, 12, 3, 5),
('Equipo18', 21, 9, 6, 5),
('Equipo19', 20, 11, 4, 3),
('Equipo20', 24, 7, 8, 4),
('Equipo21', 22, 10, 5, 3),
('Equipo22', 23, 8, 7, 4),
('Equipo23', 21, 12, 4, 2),
('Equipo24', 20, 9, 6, 5),
('Equipo25', 24, 11, 5, 3);

-- Ejemplos de consultas

-- DISTINCT
-- Obtener los distintos días en los que se juegan partidos
SELECT DISTINCT dia_partido FROM Categorias;

-- Obtener los distintos nombres de equipos registrados
SELECT DISTINCT equipo FROM Jugador;

-- Obtener las distintas experiencias de los árbitros
SELECT DISTINCT experiencia FROM Arbitros;

-- LIMIT
-- Obtener los primeros 3 jugadores con más anotaciones
SELECT nombre, anotaciones FROM Jugador ORDER BY anotaciones DESC LIMIT 3;

-- Obtener los 3 primeros árbitros con mejor promedio de satisfacción
SELECT nombre, promedio_satisfaccion FROM Arbitros ORDER BY promedio_satisfaccion DESC LIMIT 3;

-- Obtener los 3 primeros equipos con más partidos ganados
SELECT nombre, partidos_ganados FROM Equipo ORDER BY partidos_ganados DESC LIMIT 3;

-- ORDER BY
-- Ordenar jugadores por edad de manera descendente
SELECT nombre, edad FROM Jugador ORDER BY edad DESC;

-- Ordenar árbitros por salario de manera ascendente
SELECT nombre, salario FROM Arbitros ORDER BY salario ASC;

-- Ordenar equipos por cantidad de jugadores de manera descendente
SELECT nombre, cantidad_jugadores FROM Equipo ORDER BY cantidad_jugadores DESC;

-- COMPARACION
-- Obtener jugadores con más de 10 anotaciones
SELECT nombre, anotaciones FROM Jugador WHERE anotaciones > 10;

-- Obtener árbitros con más de 5 años de experiencia
SELECT nombre, experiencia FROM Arbitros WHERE experiencia >= '5 años';

-- Obtener equipos que hayan ganado menos de 5 partidos
SELECT nombre, partidos_ganados FROM Equipo WHERE partidos_ganados < 5;

-- LIKE
-- Buscar jugadores cuyo nombre empiece con 'J'
SELECT * FROM Jugador WHERE nombre LIKE 'J%';

-- Buscar árbitros cuyo nombre termine en 'a'
SELECT * FROM Arbitros WHERE nombre LIKE '%a';

-- Buscar equipos que contengan 'fc' en el nombre
SELECT * FROM Equipo WHERE nombre LIKE '%fc%';

-- BETWEEN
-- Obtener jugadores entre 20 y 30 años
SELECT * FROM Jugador WHERE edad BETWEEN 20 AND 30;

-- Obtener árbitros con salario entre 2000 y 3000
SELECT * FROM Arbitros WHERE salario BETWEEN 2000 AND 3000;

-- Obtener equipos con entre 15 y 20 jugadores
SELECT * FROM Equipo WHERE cantidad_jugadores BETWEEN 15 AND 20;

-- AND
-- Obtener jugadores con más de 10 anotaciones y menos de 3 tarjetas rojas
SELECT * FROM Jugador WHERE anotaciones > 10 AND tarjetas_rojas < 3;

-- Obtener árbitros con más de 5 años de experiencia y con más de 100 partidos asistidos
SELECT * FROM Arbitros WHERE experiencia > '5 años' AND partidos_asistidos > 100;

-- Obtener equipos con más de 10 partidos ganados y menos de 5 perdidos
SELECT * FROM Equipo WHERE partidos_ganados > 10 AND partidos_perdidos < 5;

-- OR
-- Obtener jugadores con más de 10 anotaciones o más de 10 asistencias
SELECT * FROM Jugador WHERE anotaciones > 10 OR asistencias > 10;

-- Obtener árbitros con más de 5 años de experiencia o con más de 150 partidos asistidos
SELECT * FROM Arbitros WHERE experiencia > '5 años' OR partidos_asistidos > 150;

-- Obtener equipos con más de 10 partidos ganados o más de 10 empatados
SELECT * FROM Equipo WHERE partidos_ganados > 10 OR partidos_empatados > 10;

-- NOT
-- Obtener jugadores que no tengan tarjetas rojas
SELECT * FROM Jugador WHERE NOT tarjetas_rojas > 0;

-- Obtener árbitros que no tengan experiencia 'Básica'
SELECT * FROM Arbitros WHERE NOT experiencia = 'Básica';

-- Obtener equipos que no tengan más de 10 partidos ganados
SELECT * FROM Equipo WHERE NOT partidos_ganados > 10;

-- IN
-- Obtener jugadores en los equipos 'Barcelona', 'Real Madrid' o 'Juventus'
SELECT * FROM Jugador WHERE equipo IN ('Barcelona', 'Real Madrid', 'Juventus');

-- Obtener árbitros con disponibilidad los días 'Lunes' o 'Miércoles'
SELECT * FROM Arbitros WHERE disponibilidad IN ('Lunes', 'Miércoles');

-- Obtener equipos con más de 10 partidos ganados en una lista específica
SELECT * FROM Equipo WHERE nombre IN ('Equipo1', 'Equipo3', 'Equipo5');

-- OPERADORES MATEMATICOS
-- Obtener jugadores con anotaciones más asistencias mayor a 20
SELECT *, (anotaciones + asistencias) AS contribucion FROM Jugador WHERE (anotaciones + asistencias) > 20;

-- Obtener el salario anual de los árbitros (asumiendo 12 meses de pago)
SELECT nombre, salario * 12 AS salario_anual FROM Arbitros;

-- Obtener la diferencia entre partidos ganados y perdidos de cada equipo
SELECT nombre, (partidos_ganados - partidos_perdidos) AS diferencia FROM Equipo;

-- MIN
-- Obtener el mínimo salario de los árbitros
SELECT MIN(salario) FROM Arbitros;

-- Obtener la menor cantidad de anotaciones registradas por un jugador
SELECT MIN(anotaciones) FROM Jugador;

-- Obtener el equipo con el menor número de partidos ganados
SELECT nombre, MIN(partidos_ganados) FROM Equipo;

-- MAX
-- Obtener el máximo salario de los árbitros
SELECT MAX(salario) FROM Arbitros;

-- Obtener el jugador con más anotaciones
SELECT MAX(anotaciones) FROM Jugador;

-- Obtener el equipo con más partidos ganados
SELECT nombre, MAX(partidos_ganados) FROM Equipo;

-- COUNT
-- Contar cuántos jugadores hay en total
SELECT COUNT(*) FROM Jugador;

-- Contar cuántos árbitros hay en la base de datos
SELECT COUNT(*) FROM Arbitros;

-- Contar cuántos equipos están registrados
SELECT COUNT(*) FROM Equipo;

-- SUM
-- Sumar todas las anotaciones de los jugadores
SELECT SUM(anotaciones) FROM Jugador;

-- Sumar la cantidad total de partidos ganados por todos los equipos
SELECT SUM(partidos_ganados) FROM Equipo;

-- Sumar los salarios de todos los árbitros
SELECT SUM(salario) FROM Arbitros;

-- AVG
-- Obtener el promedio de edad de los jugadores
SELECT AVG(edad) FROM Jugador;

-- Obtener el promedio de anotaciones de los jugadores
SELECT AVG(anotaciones) FROM Jugador;

-- Obtener el salario promedio de los árbitros
SELECT AVG(salario) FROM Arbitros;

-- CONCAT
-- Concatenar nombre y equipo de los jugadores
SELECT CONCAT(nombre, ' - ', equipo) AS jugador_equipo FROM Jugador;

-- Concatenar nombre y experiencia de los árbitros
SELECT CONCAT(nombre, ' tiene ', experiencia, ' de experiencia') FROM Arbitros;

-- Concatenar nombre y jugadores de los equipos
SELECT CONCAT(nombre, ' - ', cantidad_jugadores) FROM Equipo;

-- UPPER
-- Convertir nombres de árbitros a mayúsculas
SELECT UPPER(nombre) FROM Arbitros;

-- Convertir nombres de jugadores a mayúsculas
SELECT UPPER(nombre) FROM Jugador;

-- Convertir nombres de equipos a mayúsculas
SELECT UPPER(nombre) FROM Equipo;

-- LOWER
-- Convertir nombres de árbitros a minúsculas
SELECT LOWER(nombre) FROM Arbitros;

-- Convertir nombres de jugadores a minúsculas
SELECT LOWER(nombre) FROM Jugador;

-- Convertir nombres de equipos a minúsculas
SELECT LOWER(nombre) FROM Equipo;

-- OFFSET
-- Obtener jugadores saltando los primeros 5 registros
SELECT * FROM Jugador LIMIT 10 OFFSET 5;

-- Obtener árbitros saltando los primeros 3 registros
SELECT * FROM Arbitros LIMIT 5 OFFSET 3;

-- Obtener equipos saltando los primeros 2 registros
SELECT * FROM Equipo LIMIT 5 OFFSET 2;

-- GROUP BY
-- Obtener el promedio de edad de jugadores por equipo
SELECT equipo, AVG(edad) FROM Jugador GROUP BY equipo;

-- Obtener el número de árbitros por nivel de experiencia
SELECT experiencia, COUNT(*) FROM Arbitros GROUP BY experiencia;

-- Obtener la cantidad total de partidos ganados por cada equipo
SELECT nombre, SUM(partidos_ganados) FROM Equipo GROUP BY nombre;

-- HAVING
-- Obtener equipos con más de 5 partidos ganados
SELECT nombre, SUM(partidos_ganados) AS total_ganados 
FROM Equipo 
GROUP BY nombre 
HAVING total_ganados > 5;

-- Obtener jugadores con un promedio de anotaciones mayor a 10
SELECT equipo, AVG(anotaciones) AS promedio_anotaciones 
FROM Jugador 
GROUP BY equipo 
HAVING promedio_anotaciones > 10;

-- Obtener árbitros con un salario promedio mayor a 2500
SELECT experiencia, AVG(salario) AS salario_promedio 
FROM Arbitros 
GROUP BY experiencia 
HAVING salario_promedio > 2500;

-- CASE
-- Asignar una categoría a los jugadores según su número de anotaciones
SELECT nombre, anotaciones,
  CASE 
    WHEN anotaciones >= 15 THEN 'Goleador'
    WHEN anotaciones >= 10 THEN 'Buen jugador'
    ELSE 'Promedio'
  END AS categoria
FROM Jugador;

-- Categorizar árbitros según su experiencia
SELECT nombre, experiencia,
  CASE 
    WHEN experiencia >= '10 años' THEN 'Veterano'
    WHEN experiencia >= '5 años' THEN 'Experimentado'
    ELSE 'Novato'
  END AS categoria
FROM Arbitros;

-- Clasificar equipos según su rendimiento
SELECT nombre, partidos_ganados,
  CASE 
    WHEN partidos_ganados >= 15 THEN 'Excelente'
    WHEN partidos_ganados >= 10 THEN 'Bueno'
    ELSE 'Regular'
  END AS rendimiento
FROM Equipo;

-- IFNULL
-- Reemplazar valores NULL en asistencias por 0
SELECT nombre, IFNULL(asistencias, 0) AS asistencias FROM Jugador;

-- Reemplazar valores NULL en el salario de árbitros con 'No registrado'
SELECT nombre, IFNULL(salario, 'No registrado') AS salario FROM Arbitros;

-- Reemplazar valores NULL en la cantidad de partidos ganados por 0
SELECT nombre, IFNULL(partidos_ganados, 0) AS partidos_ganados FROM Equipo;


-- VIDEOJUEGO


-- Creación de las tablas
CREATE TABLE Personaje (
    nombre VARCHAR(50),
    configuracion VARCHAR(20),
    skins_disponibles INT,
    skins_desbloqueadas INT
);

CREATE TABLE Partida (
    resultado VARCHAR(10),
    kills INT,
    asistencias INT,
    muertes INT,
    daño INT,
	hit_rate VARCHAR(10)
);

CREATE TABLE Usuario (
    Nombre VARCHAR(50),
    Nickname VARCHAR(50),
    Edad INT,
    Partidas_jugadas INT,
    Partidas_ganadas INT,
    Win_rate VARCHAR(10)
);

-- Inserción de 40 registros inventados por tabla

INSERT INTO Personaje (nombre, configuracion, skins_disponibles, skins_desbloqueadas) VALUES
('R.O.B', 'Ligero', 4, 3),
('Lucas', 'Mediano', 3, 1),
('Ness', 'Pesado', 3, 1),
('Marth', 'Mediano', 5, 3),
('Lucina', 'Ligero', 6, 5),
('Ike', 'Pesado', 2, 1),
('Chrom', 'Mediano', 4, 3),
('Byleth', 'Pesado', 3, 1),
('Corrin', 'Ligero', 4, 3),
('Joker', 'Ligero', 1, 1),
('Min Min', 'Mediano', 3, 3),
('Terry', 'Mediano', 3, 2),
('Kazuya', 'Mediano', 4, 2),
('Mythra', 'Pesado', 3, 2),
('Pyra', 'Ligero', 4, 4),
('Guerrero Sombrío', 'Ofensivo', 10, 3),
('Maga Celestial', 'Mágico', 12, 6),
('Cazador Nocturno', 'Sigiloso', 8, 4),
('Titan de Hierro', 'Defensivo', 9, 5),
('Fénix de Fuego', 'Ofensivo', 11, 7),
('Ángel de la Muerte', 'Mágico', 13, 5),
('Lobo Solitario', 'Sigiloso', 7, 3),
('Espíritu del Bosque', 'Defensivo', 10, 4),
('Dragón Carmesí', 'Ofensivo', 12, 8),
('Hechicero Arcano', 'Mágico', 15, 9),
('Ninja Sombrío', 'Sigiloso', 6, 2),
('Caballero Sagrado', 'Defensivo', 14, 8),
('Sirena Mística', 'Mágico', 9, 4),
('Vampiro de Medianoche', 'Sigiloso', 10, 5),
('Bestia Colosal', 'Defensivo', 8, 3),
('Demonio Carmesí', 'Ofensivo', 12, 6),
('Chamán Ancestral', 'Mágico', 13, 7),
('Sombra Veloz', 'Sigiloso', 9, 5),
('Gladiador Furioso', 'Ofensivo', 11, 6),
('Guardiana de la Luz', 'Defensivo', 10, 7),
('Arquero Fantasmal', 'Sigiloso', 8, 4),
('Guerrero Estelar', 'Mágico', 14, 9),
('Bestia Lunar', 'Defensivo', 7, 3),
('Dragón Oscuro', 'Ofensivo', 13, 8),
('Hechicero del Caos', 'Mágico', 12, 6);

INSERT INTO Partida (resultado, kills, asistencias, muertes, daño, hit_rate) VALUES
('Victoria', 5, 0, 9, 1200, '40%'),
('Derrota', 2, 0, 6, 360, '20%'),
('Derrota', 2, 1, 2, 430, '18%'),
('Derrota', 3, 3, 7, 650, '40%'),
('Derrota', 2, 5, 10, 470, '20%'),
('Victoria', 5, 1, 12, 700, '40%'),
('Victoria', 10, 7, 3, 598, '60%'),
('Victoria', 14, 5, 2, 608, '20%'),
('Victoria', 13, 7, 5, 379, '48%'),
('Derrota', 7, 3, 7, 1500, '23%'),
('Victoria', 8, 2, 8, 1111, '72%'),
('Derrota', 12, 4, 4, 666, '13%'),
('Victoria', 5, 5, 7, 462, '52%'),
('Victoria', 10, 5, 2, 5000, '80%'),
('Derrota', 3, 7, 5, 2300, '65%'),
('Victoria', 15, 4, 3, 7500, '90%'),
('Derrota', 2, 6, 7, 1800, '55%'),
('Victoria', 9, 10, 1, 6200, '85%'),
('Victoria', 8, 7, 3, 5400, '78%'),
('Derrota', 1, 5, 9, 1200, '50%'),
('Victoria', 12, 3, 2, 6800, '88%'),
('Victoria', 14, 6, 4, 7200, '92%'),
('Derrota', 4, 8, 6, 2500, '60%'),
('Victoria', 11, 5, 3, 7000, '86%'),
('Derrota', 5, 9, 4, 2700, '58%'),
('Victoria', 13, 4, 2, 6900, '91%'),
('Victoria', 16, 3, 5, 8200, '94%'),
('Derrota', 2, 5, 8, 1900, '52%'),
('Victoria', 7, 10, 1, 5100, '79%'),
('Derrota', 3, 6, 5, 2100, '62%'),
('Victoria', 15, 5, 3, 7600, '93%'),
('Victoria', 9, 7, 2, 6000, '87%'),
('Derrota', 6, 8, 4, 2900, '63%'),
('Victoria', 10, 6, 2, 6400, '82%'),
('Victoria', 12, 5, 1, 7300, '89%'),
('Derrota', 2, 4, 7, 1700, '57%'),
('Victoria', 14, 8, 3, 8000, '95%'),
('Victoria', 13, 9, 2, 7800, '90%');

INSERT INTO Usuario (Nombre, Nickname, Edad, Partidas_jugadas, Partidas_ganadas, Win_rate) VALUES
('Juan', 'Loba Lunar', 20, 1500, 900, '60%'),
('Enrique', 'El Halcón', 15, 20, 5, '25%'),
('Karla', 'Chispa Rebelde', 16, 230, 200, '87%'),
('Duncan', 'Tormenta', 18, 430, 350, '81%'),
('Luis', 'Lirio Dorado', 19, 210, 150, '71%'),
('Martin', 'El Rayo', 19, 640, 500, '78%'),
('Jorge', 'Tigre Escarlata', 10, 234, 200, '85%'),
('Rodrigo', 'Sombras', 20, 700, 630, '90%'),
('Gael', 'Cielo Violeta', 19, 849, 760, '90%'),
('Gabriel', 'La Serpiente', 25, 293, 250, '85%'),
('Paola', 'Fénix Azul', 21, 540, 400, '74%'),
('María', 'Zorro Plateado', 29, 210, 150, '71%'),
('Andrea', 'Alma Errante', 26, 24, 20, '83%'),
('Natan', 'Cazador Nocturno', 23, 5, 4, '80%'),
('Caleb', 'Reina del Viento', 13, 1203, 1000, '83%'),
('Carlos', 'ShadowHunter', 21, 250, 190, '76%'),
('Lucía', 'FrostMage', 18, 340, 290, '85%'),
('Raúl', 'NightWolf', 25, 500, 430, '86%'),
('Sofía', 'SunWarrior', 20, 420, 300, '71%'),
('Andrés', 'DragonKing', 22, 600, 540, '90%'),
('Elena', 'MysticSorceress', 19, 480, 400, '83%'),
('Javier', 'DarkKnight', 27, 700, 630, '90%'),
('Mariana', 'StormRider', 24, 320, 250, '78%'),
('Alejandro', 'FirePhoenix', 26, 550, 490, '89%'),
('Valeria', 'MoonPriestess', 17, 370, 300, '81%'),
('Daniel', 'SilentAssassin', 23, 450, 390, '87%'),
('Fernanda', 'CelestialAngel', 21, 280, 210, '75%'),
('Cristian', 'IronTitan', 29, 720, 650, '91%'),
('Isabel', 'IceQueen', 18, 410, 330, '80%'),
('Luis', 'CrimsonWarlock', 20, 530, 450, '85%'),
('Patricia', 'WindDancer', 22, 340, 270, '79%'),
('José', 'ThunderClaw', 25, 610, 540, '89%'),
('Gabriela', 'SilverFang', 19, 450, 390, '86%'),
('Diego', 'SpiritHunter', 28, 730, 660, '90%'),
('Camila', 'GoldenFox', 23, 480, 420, '88%'),
('Emilio', 'Nightmare', 27, 620, 550, '89%'),
('Rocío', 'StarGuardian', 22, 390, 320, '82%'),
('Miguel', 'ShadowFury', 24, 510, 450, '88%'),
('Natalia', 'EmeraldWizard', 21, 330, 280, '85%'),
('Hugo', 'InfernoDrake', 20, 540, 460, '85%');

-- Ejemplos de consultas

-- DISTINCT
-- Obtiene todas las configuraciones únicas de los personajes  
SELECT DISTINCT configuracion FROM Personaje;  

-- Muestra los distintos resultados posibles en las partidas (Victoria o Derrota)  
SELECT DISTINCT resultado FROM Partida;  

-- Lista los diferentes porcentajes de win rate registrados en la tabla de usuarios  
SELECT DISTINCT Win_rate FROM Usuario;  

-- LIMIT
-- Obtiene solo los primeros 3 personajes de la tabla  
SELECT * FROM Personaje LIMIT 3;  

-- Muestra las 3 partidas con mayor daño infligido  
SELECT * FROM Partida ORDER BY daño DESC LIMIT 3;  

-- Lista los 3 jugadores más jóvenes registrados en la tabla  
SELECT * FROM Usuario ORDER BY Edad ASC LIMIT 3;  

-- ORDER BY
-- Ordena los usuarios por win rate de mayor a menor  
SELECT * FROM Usuario ORDER BY Win_rate DESC;  

-- Muestra las partidas ordenadas por cantidad de kills, de mayor a menor  
SELECT * FROM Partida ORDER BY kills DESC;  

-- Lista los personajes con más skins desbloqueadas primero  
SELECT * FROM Personaje ORDER BY skins_desbloqueadas DESC;  

-- COMPARACION
-- Muestra los usuarios que han jugado más de 500 partidas  
SELECT * FROM Usuario WHERE Partidas_jugadas > 500;  

-- Lista las partidas donde el daño infligido fue menor a 2000  
SELECT * FROM Partida WHERE daño < 2000;  

-- Encuentra los personajes que tienen exactamente 3 skins desbloqueadas  
SELECT * FROM Personaje WHERE skins_desbloqueadas = 3;  

-- LIKE
-- Encuentra los personajes cuyo nombre comienza con 'D'  
SELECT * FROM Personaje WHERE nombre LIKE 'D%';  

-- Muestra los usuarios cuyo nickname contiene la palabra 'Shadow'  
SELECT * FROM Usuario WHERE Nickname LIKE '%Shadow%';  

-- Encuentra las partidas cuyo resultado contiene la letra 'r' (es decir, "Derrota")  
SELECT * FROM Partida WHERE resultado LIKE '%r%';  

-- BETWEEN
-- Muestra los personajes con entre 4 y 10 skins disponibles  
SELECT * FROM Personaje WHERE skins_disponibles BETWEEN 4 AND 10;  

-- Encuentra las partidas donde el daño infligido estuvo entre 1000 y 5000  
SELECT * FROM Partida WHERE daño BETWEEN 1000 AND 5000;  

-- Lista los usuarios cuya edad está entre 18 y 25 años  
SELECT * FROM Usuario WHERE Edad BETWEEN 18 AND 25;  

-- AND
-- Encuentra personajes ligeros que tengan más de 3 skins desbloqueadas  
SELECT * FROM Personaje WHERE configuracion = 'Ligero' AND skins_desbloqueadas > 3;  

-- Muestra las partidas ganadas con más de 5 kills  
SELECT * FROM Partida WHERE resultado = 'Victoria' AND kills > 5;  

-- Encuentra usuarios que tengan más de 500 partidas jugadas y un win rate superior al 80%  
SELECT * FROM Usuario WHERE Partidas_jugadas > 500 AND Win_rate > '80%';  

-- OR
-- Muestra personajes que sean ligeros o medianos  
SELECT * FROM Personaje WHERE configuracion = 'Ligero' OR configuracion = 'Mediano';  

-- Encuentra partidas donde hubo más de 10 kills o más de 5000 de daño  
SELECT * FROM Partida WHERE kills > 10 OR daño > 5000;  

-- Lista usuarios que tengan un win rate superior al 85% o más de 500 partidas ganadas  
SELECT * FROM Usuario WHERE Win_rate > '85%' OR Partidas_ganadas > 500;  

-- NOT
-- Muestra todos los personajes que no sean de configuración 'Pesado'  
SELECT * FROM Personaje WHERE NOT configuracion = 'Pesado';  

-- Lista las partidas que no fueron derrotas  
SELECT * FROM Partida WHERE NOT resultado = 'Derrota';  

-- Encuentra usuarios que no tengan un win rate inferior al 50%  
SELECT * FROM Usuario WHERE NOT Win_rate < '50%';  

-- IN
-- Encuentra personajes que sean de configuración 'Ligero', 'Mediano' o 'Sigiloso'  
SELECT * FROM Personaje WHERE configuracion IN ('Ligero', 'Mediano', 'Sigiloso');  

-- Muestra las partidas con 5, 10 o 15 kills  
SELECT * FROM Partida WHERE kills IN (5, 10, 15);  

-- Encuentra usuarios con win rates específicos  
SELECT * FROM Usuario WHERE Win_rate IN ('80%', '85%', '90%');  

-- OPERADORES MATEMATICOS
-- Calcula la cantidad total de skins (disponibles - desbloqueadas) por personaje  
SELECT nombre, (skins_disponibles - skins_desbloqueadas) AS skins_restantes FROM Personaje;  

-- Duplica la cantidad de kills en cada partida (ejemplo hipotético)  
SELECT kills, (kills * 2) AS kills_dobladas FROM Partida;  

-- Obtiene el porcentaje de partidas ganadas sobre jugadas  
SELECT Nombre, (Partidas_ganadas * 100.0 / Partidas_jugadas) AS porcentaje_ganadas FROM Usuario;  

-- MIN 
-- Encuentra la menor cantidad de skins disponibles  
SELECT MIN(skins_disponibles) AS min_skins FROM Personaje;  

-- Encuentra la menor cantidad de kills en una partida  
SELECT MIN(kills) AS min_kills FROM Partida;  

-- Encuentra la menor edad de los usuarios  
SELECT MIN(Edad) AS edad_minima FROM Usuario;  

-- MAX
-- Encuentra la mayor cantidad de skins desbloqueadas  
SELECT MAX(skins_desbloqueadas) AS max_skins FROM Personaje;  

-- Encuentra la mayor cantidad de asistencias en una partida  
SELECT MAX(asistencias) AS max_asistencias FROM Partida;  

-- Encuentra la mayor cantidad de partidas jugadas por un usuario  
SELECT MAX(Partidas_jugadas) AS max_partidas FROM Usuario;  

-- COUNT
-- Cuenta cuántos personajes hay en total  
SELECT COUNT(*) AS total_personajes FROM Personaje;  

-- Cuenta cuántas partidas fueron victoria  
SELECT COUNT(*) AS total_victorias FROM Partida WHERE resultado = 'Victoria';  

-- Cuenta cuántos usuarios tienen un win rate mayor al 80%  
SELECT COUNT(*) AS usuarios_pro FROM Usuario WHERE Win_rate > '80%';  

-- SUM
-- Suma todas las muertes registradas en las partidas  
SELECT SUM(muertes) AS total_muertes FROM Partida;  

-- Suma la cantidad total de skins desbloqueadas por todos los personajes  
SELECT SUM(skins_desbloqueadas) AS total_skins_desbloqueadas FROM Personaje;  

-- Suma la cantidad total de partidas ganadas por los usuarios  
SELECT SUM(Partidas_ganadas) AS total_partidas_ganadas FROM Usuario;  

-- AVG
-- Calcula el promedio de skins disponibles por personaje  
SELECT AVG(skins_disponibles) AS promedio_skins FROM Personaje;  

-- Calcula el promedio de daño en las partidas  
SELECT AVG(daño) AS promedio_daño FROM Partida;  

-- Calcula el promedio de edad de los jugadores  
SELECT AVG(Edad) AS promedio_edad FROM Usuario;  

-- CONCAT
-- Concatena el nombre y el nickname del usuario  
SELECT CONCAT(Nombre, ' - ', Nickname) AS Nombre_Completo FROM Usuario;  

-- Concatena el nombre del personaje con su configuración  
SELECT CONCAT(nombre, ' - ', configuracion) AS personaje_info FROM Personaje;  

-- Concatena el resultado de la partida con su hit rate  
SELECT CONCAT(resultado, ' - ', hit_rate) AS partida_info FROM Partida;  

-- UPPER
-- Convierte todos los nombres de los personajes a mayúsculas  
SELECT UPPER(nombre) AS nombre_mayus FROM Personaje;  

-- Convierte todos los nicknames de usuario a mayúsculas  
SELECT UPPER(Nickname) AS nickname_mayus FROM Usuario;  

-- Convierte todos los resultados de las partidas a mayúsculas  
SELECT UPPER(resultado) AS resultado_mayus FROM Partida;  

-- LOWER
-- Convierte todos los nombres de los personajes a minúsculas  
SELECT LOWER(nombre) AS nombre_minus FROM Personaje;  

-- Convierte todos los nicknames de usuario a minúsculas  
SELECT LOWER(Nickname) AS nickname_minus FROM Usuario;  

-- Convierte todos los resultados de las partidas a minúsculas  
SELECT LOWER(resultado) AS resultado_minus FROM Partida;  

-- OFFSET
-- Obtiene todos los personajes pero omite los primeros 5  
SELECT * FROM Personaje LIMIT 3 OFFSET 5;  

-- Obtiene los usuarios ordenados por win rate, pero omite los primeros 10  
SELECT * FROM Usuario ORDER BY Win_rate DESC LIMIT 5 OFFSET 10;  

-- Obtiene las partidas ordenadas por daño, omitiendo las primeras 3  
SELECT * FROM Partida ORDER BY daño DESC LIMIT 2 OFFSET 3;  

-- GROUP BY
-- Cuenta cuántos personajes hay por tipo de configuración  
SELECT configuracion, COUNT(*) AS cantidad FROM Personaje GROUP BY configuracion;  

-- Cuenta cuántos usuarios hay por cada win rate  
SELECT Win_rate, COUNT(*) AS cantidad_usuarios FROM Usuario GROUP BY Win_rate;  

-- Cuenta cuántas partidas hubo por resultado  
SELECT resultado, COUNT(*) AS cantidad_partidas FROM Partida GROUP BY resultado;  

-- HAVING
-- Muestra solo las configuraciones que tengan más de 5 personajes  
SELECT configuracion, COUNT(*) FROM Personaje GROUP BY configuracion HAVING COUNT(*) > 5;  

-- Muestra solo los win rates que tengan más de 5 usuarios con el mismo porcentaje  
SELECT Win_rate, COUNT(*) FROM Usuario GROUP BY Win_rate HAVING COUNT(*) > 5;  

-- Muestra solo los resultados de partidas que sumen más de 10,000 de daño total  
SELECT resultado, SUM(daño) FROM Partida GROUP BY resultado HAVING SUM(daño) > 10000;  

-- CASE
-- Clasifica a los personajes según la cantidad de skins desbloqueadas  
SELECT nombre,  
    CASE  
        WHEN skins_desbloqueadas = skins_disponibles THEN 'Todas desbloqueadas'  
        WHEN skins_desbloqueadas > skins_disponibles / 2 THEN 'Más de la mitad'  
        ELSE 'Menos de la mitad'  
    END AS estado_skins  
FROM Personaje;  

-- Evalúa el rendimiento en cada partida según las kills  
SELECT kills,  
    CASE  
        WHEN kills >= 10 THEN 'Excelente'  
        WHEN kills >= 5 THEN 'Bueno'  
        ELSE 'Regular'  
    END AS rendimiento  
FROM Partida;  

-- Categoriza a los usuarios según su win rate  
SELECT Nickname, Win_rate,  
    CASE  
        WHEN Win_rate >= '85%' THEN 'Jugador experimentado'  
        WHEN Win_rate >= '70%' THEN 'Jugador intermedio'  
        ELSE 'Jugador principiante'  
    END AS nivel_jugador  
FROM Usuario;  

-- IFNULL
-- Si un usuario no tiene partidas ganadas registradas, se le asigna 0  
SELECT Nombre, IFNULL(Partidas_ganadas, 0) AS Partidas_ganadas FROM Usuario;  

-- Si un personaje no tiene skins desbloqueadas registradas, se le asigna 0  
SELECT nombre, IFNULL(skins_desbloqueadas, 0) AS skins_desbloqueadas FROM Personaje;  

-- Si una partida no tiene hit rate registrado, se asigna 'Desconocido'  
SELECT resultado, IFNULL(hit_rate, 'Desconocido') AS hit_rate FROM Partida;  