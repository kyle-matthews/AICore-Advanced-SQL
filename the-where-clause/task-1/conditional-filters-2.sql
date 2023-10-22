--Return the 10 longest films who's rating are G
SELECT title FROM film
WHERE rating = 'G'
ORDER BY length
LIMIT 10;