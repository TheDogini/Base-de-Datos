-- Ejercicios de consultas usando subqueries para la base da tos 'sakila'
-- problema 1
SELECT title 
FROM film
WHERE length = (
	SELECT length
    FROM film
    WHERE title='ALIEN CENTER'
);

-- problema 2
SELECT CONCAT(first_name, ' ',last_name) AS  customer
FROM customer
WHERE EXISTS(
	SELECT 1
    FROM customer c
    JOIN payment p ON c.customer_id=p.customer_id
	WHERE amount>5
);

-- problema 3
SELECT title 
FROM film
WHERE rental_rate = (
	SELECT rental_rate
    FROM film
    WHERE title = 'ZOOLANDER FICTION'
);

-- problema 4
SELECT CONCAT(first_name, ' ',last_name) AS actor
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id
AND title = 'GHOSTBUSTERS ELF';

-- problema 5
SELECT title, length
FROM film
WHERE length > (
	SELECT AVG(length)
	FROM film
);

-- problema 6
SELECT CONCAT(c.first_name, ' ',c.last_name) AS customers
FROM customer c
WHERE EXISTS(
	SELECT 1
	FROM payment p
    WHERE c.customer_id = p.customer_id
);

-- problema 7
SELECT title
FROM film f
WHERE NOT EXISTS(
	SELECT 1
    FROM inventory i
    JOIN rental r ON r.inventory_id = i.inventory_id
    WHERE i.film_id = f.film_id
);

-- problema 8
SELECT name, COUNT(*) AS cantidad
FROM (
	SELECT fc.category_id
	FROM film_category fc
) AS sub,
category c
WHERE sub.category_id = c.category_id
GROUP BY c.name
HAVING COUNT(*)>50;

-- problema 9
SELECT CONCAT(s.first_name, ' ',s.last_name) AS empleados
FROM staff s
WHERE s.store_id = (
	SELECT store_id
    FROM inventory
    GROUP BY store_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

-- problema 10
SELECT title
FROM film 
WHERE rating = (
	SELECT rating
    FROM film
    WHERE title = 'ACADEMY DINOSAUR'
);

-- problema 11
SELECT CONCAT(a.first_name, ' ',a.last_name) AS actor
FROM actor a
WHERE a.actor_id IN (
	SELECT fa.actor_id
    FROM film_actor fa
    GROUP BY fa.actor_id
    HAVING COUNT(fa.film_id) > 20
);

-- problema 12
SELECT title
FROM film
WHERE replacement_cost = (
	SELECT replacement_cost
    FROM film
    WHERE title = 'CRUSADE HONEY'
);