/*  TODO
1. Find the addresses of all the stores in the Pagila database
2. Return the first names, last names, addresses, districts and postal code for all the staff in the database
3.Return the first names, last names, addresses, districts and cities of customers who have rented a film
4. Return the first names, last names, addresses, districts and cities of customers who have rented a film
between 26/05/2005 and 29/05/2005. Limit the results to 25 customers and sort the results by the
last names in ascending order */

-- Selects all address from the address table.
SELECT address FROM address;

-- 2 Gives staff name and address information, joining on the address_id id.
SELECT
    first_name,
    last_name,
    address.district,
    address.postal_code
FROM 
    staff
INNER JOIN 
    address ON staff.address_id = address.address_id;

-- 3. Retrieves customer name, district and city. Joining on address_id and city_id.
SELECT
    first_name,
    last_name,
    address.district,
    city.city
FROM
    customer
INNER JOIN
    address ON address.address_id = customer.address_id
INNER JOIN
    city ON city.city_id = address.city_id;

-- 4. 

SELECT
    first_name,
    last_name,
    address.address,
    address.district,
    city.city
FROM
    customer
INNER JOIN
    address ON address.address_id = customer.address_id
INNER JOIN
    city ON city.city_id = address.city_id
INNER JOIN
    rental ON rental.customer_id = customer.customer_id 
WHERE
    rental.rental_date BETWEEN '2005-05-26' AND '2005-05-29';
