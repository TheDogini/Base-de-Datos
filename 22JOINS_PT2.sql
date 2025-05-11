-- Repaso del uso de JOIN en consultas para la base de datos 'sakila'
-- problema 1
SELECT f.title, c.name
FROM film f
JOIN film_category fc ON f.film_id=fc.film_id
JOIN category c ON fc.category_id=c.category_id;

-- problema 2
SELECT f.title, l.name
FROM film f
LEFT JOIN language l ON f.language_id=l.language_id;

-- problema 3
SELECT c.name, COUNT(f.film_id)
FROM category c
JOIN film_category fc ON c.category_id=fc.category_id
LEFT JOIN film f ON fc.film_id=f.film_id
GROUP BY c.name;

-- problema 4
SELECT c.customer_id, SUM(p.amount)
FROM customer c
JOIN payment p ON c.customer_id=p.customer_id
WHERE IFNULL(p.amount, 0)
GROUP BY c.customer_id;

-- problema 5
SELECT a.address, s.store_id
FROM address a
LEFT JOIN store s ON a.address_id=s.address_id
GROUP BY a.address_id;

-- problema 6
SELECT r.rental_date, f.title
FROM rental r
JOIN inventory i ON r.inventory_id=i.inventory_id
JOIN film f ON i.film_id=f.film_id;

-- problema 7
SELECT CONCAT(sta.first_name, ' ',sta.last_name) AS empleados, sto.store_id
FROM staff sta
LEFT JOIN store sto ON sta.store_id=sto.store_id
WHERE IFNULL(sto.store_id, "NULL")
GROUP BY sta.staff_id;

-- problema 8
SELECT c.city, COUNT(cu.customer_id)
FROM city c
JOIN address a ON c.city_id=a.city_id
LEFT JOIN customer cu ON a.address_id=cu.address_id
WHERE IFNULL(cu.customer_id, 0)
GROUP BY c.city_id;

-- problema 9
SELECT CONCAT(c.first_name, ' ',c.last_name) AS customer, f.title
FROM customer c
JOIN rental r ON c.customer_id=r.customer_id
JOIN inventory i ON r.inventory_id=i.inventory_id
JOIN film f ON i.film_id=f.film_id;

-- problema 10
SELECT f.title, COUNT(rental_id) AS veces_rentadas
FROM film f
JOIN inventory i ON f.film_id=i.film_id
RIGHT JOIN rental r ON i.inventory_id=r.inventory_id
GROUP BY f.film_id;

-- problema 11
SELECT CONCAT(a.first_name, ' ', a.last_name) AS actor, COUNT(f.film_id)
FROM actor a
JOIN film_actor fa ON a.actor_id=fa.actor_id
LEFT JOIN film f ON fa.film_id=f.film_id
GROUP BY a.actor_id;

-- problema 12
SELECT s.store_id, CONCAT(st.first_name, ' ',st.last_name) AS staff
FROM store s
LEFT JOIN staff st ON s.manager_staff_id=st.staff_id
GROUP BY s.store_id;