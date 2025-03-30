-- Consultas usando funciones de agregación y manipulación de texto en la base de datos 'sakila'
USE sakila;
--Obtener la fecha más antigua de alquiler
SELECT MIN(rental_date) FROM rental;

-- Obtener el ID de actor más bajo
SELECT MIN(actor_id) FROM actor;

-- Obtener la duración mínima de una película
SELECT MIN(length) FROM film;

-- Obtener la fecha más reciente de alquiler
SELECT MAX(rental_date) FROM rental;

-- Obtener el ID de actor más alto
SELECT MAX(actor_id) FROM actor;

-- Obtener la duración máxima de una película
SELECT MAX(length) FROM film;

-- Contar el número total de actores
SELECT COUNT(actor_id) FROM actor;

-- Contar cuántas películas tienen clasificación PG
SELECT COUNT(rating) FROM film
WHERE rating = 'PG';

-- Contar cuántos clientes hay en la tienda 1
SELECT COUNT(customer_id) FROM customer
WHERE store_id=1;

-- Sumar todos los pagos registrados
SELECT COUNT(amount) FROM payment;

-- Sumar la duración total de todas las películas
SELECT SUM(length) FROM film;

-- Sumar todos los pagos de un cliente específico (ID 5)
SELECT SUM(amount) FROM payment
WHERE customer_id = 5;

-- Calcular el promedio de duración de las películas
SELECT AVG(length) FROM film;

-- Calcular el promedio de los pagos realizados
SELECT AVG(amount) FROM payment;

-- Calcular el promedio de duración de alquiler de las películas
SELECT AVG(rental_duration) FROM film;

-- Mostrar nombres de actores con alias de nombre y apellido
SELECT first_name AS nombre, last_name AS apellido FROM actor;

-- Mostrar la cantidad total de películas con un alias
SELECT COUNT(film_id) AS cantidad_peliculas FROM film;

-- Calcular el pago total por cliente con un alias
SELECT customer_id, SUM(amount) AS pago_total
FROM payment
GROUP BY customer_id;

-- Concatenar el nombre y apellido de los actores
SELECT CONCAT(first_name, ' ', last_name) AS nombre_completo FROM actor;

-- Concatenar el título de la película con su clasificación
SELECT CONCAT(title, ' ', rating) FROM film;

-- Concatenar el nombre completo del cliente con su ID
SELECT CONCAT(first_name, ' ', last_name, ' ', customer_id) FROM customer;

-- Convertir todos los nombres de actores a mayúsculas
SELECT UPPER(first_name) FROM actor;

-- Convertir los nombres de las películas a mayúsculas
SELECT UPPER(title) FROM film;

-- Convertir el nombre del país a mayúsculas
SELECT UPPER(country) FROM country;

-- Convertir todos los nombres de actores a minúsculas
SELECT LOWER(first_name) FROM actor;

-- Convertir los nombres de las películas a minúsculas
SELECT LOWER(title) FROM film;

-- Convertir el nombre del país a minúsculas
SELECT LOWER(country) FROM country;

-- Obtener 5 películas saltando las primeras 10 en orden alfabético
SELECT title FROM film
ORDER BY title ASC
LIMIT 5 OFFSET 10;

-- Obtener 5 clientes saltando los primeros 15 en orden por apellido
SELECT first_name FROM customer
ORDER BY last_name
LIMIT 5 OFFSET 15;