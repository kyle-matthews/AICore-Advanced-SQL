/*Return film titles and descriptions of films whose lengths are between 80 and 100 minutes.
Further filter these results by films which have a rental period between 5 and 7 days or have a
replacement cost between $17 and $22*/

SELECT
    title,
    description
FROM film

WHERE length BETWEEN 80 AND 100
AND rental_duration BETWEEN 5 AND 7
OR replacement_cost BETWEEN 17 AND 22;