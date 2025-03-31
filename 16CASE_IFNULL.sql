-- Ejercicios de práctica con el uso de las funciones CASE e IFNULL en una base de datos de práctica

-- CASE

-- 1. Mostrar el nombre y una columna llamada rango_precio que clasifique los productos según su precio
SELECT nombre,
    CASE
        WHEN precio < 100 THEN 'Económico'
        WHEN precio BETWEEN 100 AND 500 THEN 'Moderado'
        WHEN precio > 500 THEN 'Caro'
    END AS rango_precio
FROM productos;

-- 2. Mostrar el nombre del producto y una columna disponibilidad según el stock
SELECT nombre,
    CASE
        WHEN stock = 0 THEN 'Sin Stock'
        WHEN stock < 20 THEN 'Bajo Stock'
        ELSE 'Disponible'
    END AS disponibilidad
FROM productos;

-- 3. Agregar una columna calculada llamada descuento basada en el precio
SELECT nombre, precio,
    CASE
        WHEN precio > 1000 THEN precio * 0.10
        WHEN precio BETWEEN 500 AND 1000 THEN precio * 0.05
        ELSE 0
    END AS descuento
FROM productos;

-- 4. Actualizar la columna stock_status de la tabla productos según el stock
UPDATE productos
SET stock_status = CASE
    WHEN stock = 0 THEN 'Sin Stock'
    WHEN stock < 20 THEN 'Bajo'
    ELSE 'Disponible'
END;

-- 5. Actualizar la categoría de los productos según el precio
UPDATE productos
SET categoria = CASE
    WHEN precio > 1000 THEN 'Alta Gama'
    WHEN precio BETWEEN 500 AND 1000 THEN 'Gama Media'
    ELSE 'Gama Baja'
END;

-- 6. Ordenar los productos mostrando primero los "Sin Stock", luego "Bajo Stock" y finalmente "Disponible"
SELECT nombre, stock_status
FROM productos
ORDER BY 
    CASE stock_status
        WHEN 'Sin Stock' THEN 1
        WHEN 'Bajo' THEN 2
        WHEN 'Disponible' THEN 3
    END;

-- 7. Ordenar los productos por precio según la prioridad especificada
SELECT nombre, precio
FROM productos
ORDER BY 
    CASE
        WHEN precio > 1000 THEN 1
        WHEN precio BETWEEN 500 AND 1000 THEN 2
        ELSE 3
    END;

-- 8. Mostrar una lista de productos con una columna oferta_especial basada en la categoría y el stock
SELECT nombre, categoria, stock,
    CASE
        WHEN categoria = 'Muebles' AND stock < 10 THEN 'Sí'
        ELSE 'No'
    END AS oferta_especial
FROM productos;

--IFNULL

-- 1. Mostrar todos los productos y su stock, mostrando 0 si el stock es NULL
SELECT nombre, IFNULL(stock, 0) AS stock
FROM productos;

-- 2. Mostrar el nombre del producto y el precio_final considerando el descuento, si es NULL usar 0
SELECT nombre, precio, precio - IFNULL(descuento, 0) AS precio_final
FROM productos;

-- 3. Mostrar el nombre y una columna categoria_segura con "Desconocida" si la categoría es NULL
SELECT nombre, IFNULL(categoria, 'Desconocida') AS categoria_segura
FROM productos;

-- 4. Actualizar el campo stock para que, si es NULL, se establezca en 0
UPDATE productos
SET stock = IFNULL(stock, 0);

-- 5. Actualizar el campo descuento para que, si es NULL, se establezca en 0
UPDATE productos
SET descuento = IFNULL(descuento, 0);

-- 6. Mostrar todos los productos ordenados por stock, considerando los NULL como 0
SELECT nombre, IFNULL(stock, 0) AS stock
FROM productos
ORDER BY IFNULL(stock, 0);