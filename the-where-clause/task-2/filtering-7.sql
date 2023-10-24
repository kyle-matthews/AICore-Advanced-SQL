SELECT
    first_name,
    last_name
FROM actor
WHERE 
    first_name LIKE 'MI%'
    OR last_name LIKE '%ING';


SELECT 
    first_name,
    last_name 
FROM actor
WHERE 
    first_name LIKE 'MI%'
    AND last_name LIKE '%ING';

--Using AND instead of OR returns more results as it is a more precise filter than the OR operator. 