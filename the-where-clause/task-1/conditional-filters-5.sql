/*Return the top 10 most expensive films to rent, 
based on the rental rate per hour of the movie */

SELECT
    title,
    length / 60 AS length_in_hours,
    (rental_rate / length) / 60  AS price_per_hour
FROM film
ORDER BY price_per_hour DESC
LIMIT 10; 

