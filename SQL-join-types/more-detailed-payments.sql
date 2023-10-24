/*
1. Join the customer table to the payment table to get the names of customer who made payments
2. Join the rental to get the inventory_ids to match with films
3. Use the inventory table to get the film_ids
4. Finally join the film table to get the names of all films and the payment made for them
*/

SELECT
    first_name,
    last_name,
    payment.amount,
    payment.payment_date,
    film.title
FROM
    customer
INNER JOIN
    payment ON customer.customer_id = payment.customer_id
INNER JOIN
    rental ON payment.rental_id = rental.rental_id
INNER JOIN
    inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN
    film ON inventory.film_id = film.film_id;