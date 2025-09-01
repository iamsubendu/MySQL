INSERT INTO albums (name,release_year,band_id)
VALUES ('Hanuman',2023,1), ('Hanuman',2023,1), ('Hanuman',2023,1);
	
INSERT INTO albums (name,release_year,band_id)
VALUES ('Bharath',2023,1), ('Hanuman',null,2), ('Bharath',null,4);

SELECT * FROM albums;

SELECT name FROM albums;

SELECT DISTINCT name FROM albums;
-- to get unique values

SELECT * FROM albums
WHERE release_year < 2000;
-- The WHERE clause is used to filter records before any groupings are made. 
-- It specifies conditions on individual rows in a table.

SELECT * FROM albums
WHERE name LIKE '%ar%' OR band_id=2;
-- % means anything and any amount of characters
-- forward and backward
-- as it placed on both side of ar

