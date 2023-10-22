/*Find all the actors whose first name doesn't 
end in “EN” and have an ID greater than 100 */

SELECT actor FROM actor
WHERE first_name NOT LIKE '%en'
AND actor_id > 100;