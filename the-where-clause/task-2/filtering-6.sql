--Find actors who's first name begins with “MI” or last name ends with “ING”

SELECT first_name, last_name FROM actor

WHERE 
    first_name LIKE 'MI%'
    OR last_name LIKE '%ING';
