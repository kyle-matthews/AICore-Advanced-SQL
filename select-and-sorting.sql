-- 1. Initial selection of actors from the database.
--SELECT * FROM actor;

-- 2. Return titles, year of release and length of all firms in database.
--SELECT title, release_year, length FROM film;

-- 3. Return all info of 30 customers. 
/*SELECT * FROM customer
LIMIT 30; */

--4. Return the first name, last name and email addresses of 30 customers
SELECT first_name, last_name, email FROM customer
LIMIT 30;