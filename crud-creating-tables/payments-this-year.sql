CREATE TABLE payments_this_year AS (
    SELECT * FROM payment

    WHERE 
        EXTRACT(YEAR FROM payment_date) = 2007
);