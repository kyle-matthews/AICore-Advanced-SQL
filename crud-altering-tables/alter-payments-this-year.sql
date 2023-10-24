/* TODO: In the payments_this_year table you create in the previous notebook
Alter the payment_date column and remove the millisecond from the timestamp
Drop the payment_id column
Set the staff_id to 1 where amount = 3.99 and customer_id = 87 and 137`
There was a service charge of 50 pence added after '2007-03-22'. Update the amount columns rows with the service charge after this date.
rename the amount column to total_payment_taken */ 

/* UPDATE payments_this_year
CONVERT(DATETIME2(0), payment_date); */

ALTER TABLE payments_this_year
DROP payment_id;

UPDATE payments_this_year
SET
    staff_id = 1
WHERE
    amount = 3.99
    AND customer_id = 87
    OR customer_id = 137;

UPDATE payments_this_year
SET
    amount + 0.5
WHERE
    payment_date > 2007-03-22;


