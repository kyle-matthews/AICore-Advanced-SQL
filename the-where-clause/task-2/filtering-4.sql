/*Find all the actors whose first name doesn't end in “EN”, have an ID greater than 100, and have a
last name that ends in “D”. Order the results by the last name in descending order.*/

SELECT 
    first_name,
    last_name
FROM actor

WHERE 
    first_name NOT LIKE '%EN'
    AND actor_id > 100
    AND last_name LIKE '%D'
ORDER BY
    last_name DESC;