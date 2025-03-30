-- Consultas usando operadores matemáticos en la base de datos 'sakila'
USE sakila;
SELECT amount*1.10 AS comision
FROM payment
WHERE MONTH(payment_date)=5
AND customer_id=2;

SELECT amount*1.10 AS comision
FROM payment
WHERE MONTH(payment_date)=5
AND customer_id=1;

SELECT rental_id, payment_date, amount, (amount*1.10)+1 AS comision
FROM payment
WHERE DAY(payment_date)=30 
AND MONTH(payment_date)=5
AND (amount*1.10)+1 <= amount*0.5;

SELECT customer_id, rental_id, amount, amount*0.20 AS descuento, amount-(amount*0.20) AS nuevo_precio
FROM payment
WHERE DAY(payment_date)=30
OR DAY(payment_date)=31;

SELECT customer_id, rental_id, rental_date, DATE_ADD(return_date, INTERVAL 3 DAY) AS fecha_entrega
FROM rental
WHERE DAYNAME(rental_date)="monday";

SELECT rental_id, DATEDIFF(return_date, rental_date) AS dias_transcurridos
FROM rental;

SELECT rental_id, customer_id, rental_date
FROM rental
WHERE DAYNAME(rental_date)="sunday";

SELECT rental_id, customer_id, rental_date
FROM rental
WHERE MONTHNAME(rental_date)="may";

SELECT rental_id, customer_id, rental_date, return_date
FROM rental
WHERE DAYNAME(return_date)="sunday"
AND MONTHNAME(return_date)="june";