/* TODO: In your previously create teenage_movies table in the previous notebook
Alter the rating column to be of type TEXT
Drop the release_year column
Add a new column film_id of type INTEGER
Create a foreign key constraint which links the film_id columns in the teenage_movies table with the film_id in the film table.
Film ratings have been updated, set all columns with a rating of NC-17 to PG-13 */

ALTER TABLE teenage_movies
ALTER COLUMN rating TYPE TEXT;

ALTER TABLE teenage_movies
DROP COLUMN release_year;

ALTER TABLE teenage_movies
ADD COLUMN film_id INTEGER;

ALTER TABLE teenage_movies
ADD CONSTRAINT fk_film
FOREIGN KEY (film_id) REFERENCES film(film_id);

UPDATE teenage_movies
    SET rating = 'PG-13'
    WHERE rating = 'NC-17';