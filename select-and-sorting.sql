-- 1. Initial selection of actors from the database.
--SELECT * FROM actor;

-- 2. Return titles, year of release and length of all firms in database.
--SELECT title, release_year, length FROM film;

-- 3. Return all info of 30 customers. 
/*SELECT * FROM customer
LIMIT 30; */

--4. Return the first name, last name and email addresses of 30 customers
/* SELECT first_name, last_name, email FROM customer
LIMIT 30; */

-- 5. Return all information about the highest payments made
/*SELECT *
FROM payment
WHERE amount =  (SELECT MAX(amount) FROM payment); */

-- 6.Return all film titles, year of release, description and rental rate as a proportion of the rental duration
SELECT 
    title,
    release_year,
    description,
    rental_rate,
    rental_duration,
    rental_rate / rental_duration AS rental_proportion_as_proportion
FROM film;