-- Consultas básicas para la base de datos 'sakila'
USE sakila;
SELECT * FROM country;

SELECT * FROM category;

SELECT * FROM language;

SELECT country_id, country FROM country;

SELECT name FROM category;

SELECT laguange_id, name FROM language;

SELECT * FROM country ORDER BY last_update DESC;

SELECT * FROM category ORDER BY name DESC;

SELECT * FROM language ORDER BY last_update DESC;

SELECT DISTINCT * FROM actor WHERE first_name IS NOT NULL;