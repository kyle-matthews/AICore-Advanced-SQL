/*
Join the address table to the customer` table to get the address of all customers
Now join the city table to get all cities for the address
Now join the country table to get all the countries
Filter the data to only get customer which live in the United States
*/

SELECT
    first_name,
    last_name,
    address.address,
    city.city,
    country.country
FROM
    customer

INNER JOIN
    address ON address.address_id = customer.address_id
INNER JOIN 
    city ON city.city_id = address.city_id
INNER JOIN
    country ON country.country_id = city.city_id

WHERE
    country = 'United States';