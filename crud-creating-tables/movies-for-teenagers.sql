CREATE TABLE teenage_movies AS (
    SELECT
        title,
        description,
        release_year,
        rating

    FROM film

    WHERE rating != 'R'
    AND rating != 'NC-17'

);