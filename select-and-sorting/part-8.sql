/* Write a query which:
Returns 100 films, ordered by title first, and rental rate (descending) second
Returns 100 films, ordered by rental rate (descending) first, and title second
What's the difference in the results when comparing the two? */

SELECT title, rental_rate FROM film
ORDER BY title ASC, rental_rate DESC
LIMIT 100;

SELECT title, rental_rate FROM film
ORDER BY rental_rate DESC, title ASC
LIMIT 100;