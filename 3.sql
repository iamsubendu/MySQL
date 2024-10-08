INSERT INTO albums (name,release_year,band_id)
VALUES ('Hanuman',2023,1), ('Hanuman',2023,1), ('Hanuman',2023,1);
	
INSERT INTO albums (name,release_year,band_id)
VALUES ('Bharath',2023,1), ('Hanuman',null,2), ('Bharath',null,4);

SELECT * FROM albums;

SELECT name FROM albums;

SELECT DISTINCT name FROM albums;
-- to get unique values

UPDATE albums 
SET release_year = 1982
WHERE id=1;
-- update data from table

SELECT * FROm albums
WHERE release_year < 2000;

SELECT * FROM albums
WHERE name LIKE '%ar%' OR band_id=2;
-- % means anything and any amount of characters

SELECT * FROM albums
WHERE release_year=2023 AND band_id=1;

SELECT * FROM albums
WHERE release_year BETWEEN 2000 AND 2023;

SELECT * FROM albums
WHERE release_year IS NUll;

DELETE FROM albums
WHERE id=6;







