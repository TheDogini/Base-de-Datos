-- Ejercicios usados para la práctica del RIGHT JOIN usando la base de datos 'sakila'
-- problema 1
SELECT c.city_id, c.city AS ciudad, s.store_id AS tienda
FROM store s
INNER JOIN address a ON a.address_id=s.address_id
RIGHT JOIN city c ON c.city_id=a.city_id;

-- problema 2
SELECT co.country_id, co.country AS país, ci.city AS ciudad
FROM city ci
RIGHT JOIN country co ON co.country_id=ci.country_id;

-- problema 3
SELECT c.city_id, c.city AS ciudad, COUNT(cu.customer_id)
FROM customer cu
INNER JOIN address a ON a.address_id=cu.address_id
RIGHT JOIN city c ON c.city_id=a.city_id
GROUP BY c.city_id;

-- problema 4
SELECT f.title AS pelicula
FROM film f
INNER JOIN inventory i ON i.film_id=f.film_id
RIGHT JOIN rental r ON r.inventory_id=i.inventory_id
WHERE i.store_id=1 AND r.rental_id IS NULL;

-- problema 5
SELECT a.first_name AS nombre, COUNT(fa.film_id) AS C_peliculas
FROM film_actor fa
RIGHT JOIN actor a ON a.actor_id=fa.actor_id
GROUP BY a.actor_id;

-- problema 6
SELECT f.title AS pelicula, COUNT(i.store_id) AS C_tiendas
FROM film f
RIGHT JOIN inventory i ON i.film_id=f.film_id
GROUP BY f.film_id;

-- problema 7
SELECT l.name AS idioma, COUNT(f.film_id)
FROM language l
RIGHT JOIN film f ON f.language_id=l.language_id
GROUP BY l.language_id;

-- problema 8
SELECT f.title AS pelicula, COUNT(r.rental_id) AS C_rentas
FROM film f
JOIN inventory i ON i.film_id=f.film_id
RIGHT JOIN rental r ON r.inventory_id=i.inventory_id
GROUP BY f.film_id;

-- problema 9
SELECT r.rental_id, COUNT(p.payment_id) AS C_pagos
FROM payment p
RIGHT JOIN rental r ON r.rental_id=p.rental_id
GROUP BY r.rental_id;

-- problema 10
SELECT c.customer_id, COUNT(r.rental_id) AS C_rentas
FROM rental r
RIGHT JOIN customer c ON c.customer_id=r.customer_id
GROUP BY c.customer_id;

-- problema 11
SELECT s.staff_id, COUNT(r.rental_id) AS C_rentas
FROM rental r
RIGHT JOIN staff s ON s.staff_id=r.staff_id
GROUP BY s.staff_id;

-- problema 12
SELECT c.customer_id AS id_cliente, SUM(p.amount) AS monto_total
FROM payment p
RIGHT JOIN customer c ON c.customer_id=p.customer_id
GROUP BY c.customer_id
HAVING monto_total > 10;

-- problema 13
SELECT s.staff_id AS id_empleado, SUM(p.amount) AS monto_total
FROM payment p
RIGHT JOIN staff s ON s.staff_id=p.staff_id
GROUP BY s.staff_id
HAVING monto_total > 10;

-- problema 14
SELECT c.customer_id AS id_cliente, COUNT(p.payment_id) AS montos
FROM payment p
RIGHT JOIN customer c ON c.customer_id=p.customer_id
WHERE MONTH(payment_date)=6
GROUP BY c.customer_id;

-- problema 15
SELECT rental_duration, COUNT(title)
FROM film
GROUP BY rental_duration;

-- problema 16
SELECT YEAR(payment_date), COUNT(payment_id)
FROM payment
GROUP BY YEAR(payment_date);

-- problema 17
SELECT DAYOFWEEK(payment_date) AS dia_de_la_semana, SUM(amount) AS monto_total
FROM payment
GROUP BY dia_de_la_semana;

-- problema 18
SELECT DAY(payment_date), SUM(amount) AS pago_total
FROM payment
GROUP BY DAY(payment_date)
HAVING pago_total>50;

-- problema 19
SELECT length, COUNT(film_id)
FROM film
GROUP BY length;

-- problema 20 xxxxxx
SELECT s.store_id, COUNT(p.payment_id) AS cantidad_pagos
FROM payment p
JOIN staff st ON p.staff_id = st.staff_id
JOIN store s ON st.store_id = s.store_id
GROUP BY s.store_id;


-- problema 21
SELECT customer_id, SUM(amount) AS monto_total
FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) > 5;

-- problema 22
SELECT rating, COUNT(film_id) AS cantidad_peliculas
FROM film
GROUP BY rating;

-- problema 23
SELECT customer_id, amount
FROM payment
GROUP BY customer_id
HAVING AVG(amount) > 5;

-- problema 24
SELECT rental_duration, COUNT(film_id) AS cantidad_titulos
FROM film
WHERE rental_duration > 5
GROUP BY rental_duration;

-- problema 25
SELECT YEAR(payment_date) AS año, MONTH(payment_date) AS mes, COUNT(payment_id) AS total_pagos
FROM payment
GROUP BY YEAR(payment_date), MONTH(payment_date)
HAVING COUNT(payment_id) > 100;

-- problema 26
SELECT rating, COUNT(film_id) AS cantidad_peliculas
FROM film
GROUP BY rating
HAVING COUNT(film_id) > 50;