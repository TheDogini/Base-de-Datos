-- Ejercicios para la práctica del INNER JOIN usando la base de datos 'sakila' 
-- problema 1
SELECT i.film_id, f.title, f.description
FROM inventory i
INNER JOIN film f ON i.film_id=f.film_id;

-- problema 2
SELECT f.film_id, f.title, CONCAT(a.first_name, ' ', a.last_name) AS nombre_completo
FROM film f
INNER JOIN film_actor fa ON f.film_id=fa.film_id
INNER JOIN actor a ON a.actor_id=fa.actor_id;

-- problema 3
SELECT CONCAT(a.first_name, ' ', a.last_name) AS nombre_completo, f.title
FROM actor a
INNER JOIN film_actor fa ON a.actor_id=fa.actor_id
INNER JOIN film f ON f.film_id=fa.film_id;

-- problema 4
SELECT CONCAT(c.first_name, ' ', c.last_name) AS nombre_completo, f.title
FROM customer c
INNER JOIN rental r ON c.customer_id=r.customer_id
INNER JOIN inventory i ON i.inventory_id=r.inventory_id
INNER JOIN film f ON f.film_id=i.film_id;

-- problema 5
SELECT COUNT(c.customer_id) AS numero_clientes, CONCAT(s.first_name, ' ', s.last_name) AS nombre_staff
FROM staff s
INNER JOIN store st ON s.store_id=st.store_id
INNER JOIN customer c ON c.store_id=st.store_id
GROUP BY s.staff_id;

-- problema 6
SELECT SUM(p.amount), a.*
FROM staff st
INNER JOIN payment p ON st.staff_id=p.staff_id
INNER JOIN store s ON s.store_id=st.store_id
INNER JOIN address a ON a.address_id=s.address_id
GROUP BY a.address;