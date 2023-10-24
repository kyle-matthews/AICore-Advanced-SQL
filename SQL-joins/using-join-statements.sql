/*  TODO
1. Find the addresses of all the stores in the Pagila database
2. Return the first names, last names, addresses, districts and postal code for all the staff in the database
3.Return the first names, last names, addresses, districts and cities of customers who have rented a film
4. Return the first names, last names, addresses, districts and cities of customers who have rented a film
between 26/05/2005 and 29/05/2005. Limit the results to 25 customers and sort the results by the
last names in ascending order */

-- 1.
SELECT address FROM address;

-- 2
SELECT
    first_name,
    last_name,
    address.address_id,
    address.district,
    address.postal_code
FROM 
    staff
INNER JOIN 
    address ON staff.address_id = address.address_id;