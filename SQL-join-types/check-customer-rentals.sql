/* 
    1.Join the customer table to the rental table to check when customers were making rentals
    2.Now join the inventory table to get the film_ids of the films rented
    3.Now join the film table to get the names of all films rented by customers
*/

SELECT
    first_name,
    last_name,
    rental.rental_date,
    inventory.film_id,
    film.title
FROM
    customer

INNER JOIN
    rental ON rental.customer_id = customer.customer_id
INNER JOIN
    inventory ON rental.inventory_id = inventory.inventory_id
INNER JOIN
    film ON inventory.film_id = film.film_id;