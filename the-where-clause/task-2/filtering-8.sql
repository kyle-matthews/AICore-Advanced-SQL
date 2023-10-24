/*Return film titles and descriptions of films 
whose lengths are between 80 and 100 minutes,*/

SELECT
    title,
    description
FROM film

WHERE length BETWEEN 80 AND 100;