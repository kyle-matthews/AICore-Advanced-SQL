--Find all the actors whose first name doesn't end in “EN”

SELECT actor FROM actor
WHERE first_name NOT LIKE '%en';