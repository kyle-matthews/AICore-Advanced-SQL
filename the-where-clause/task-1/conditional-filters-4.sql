-- Return the (replacement) cost per minute of every movie

SELECT 
    title,
    replacement_cost / length AS replacement_cost_per_minute
FROM film;