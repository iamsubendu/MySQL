
SELECT * FROM albums
WHERE release_year=2023 AND band_id=1;

SELECT * FROM albums
WHERE release_year BETWEEN 2000 AND 2023;

SELECT * FROM albums
WHERE release_year IS NUll;

SELECT * FROM albums
WHERE band_ID IN(1,4);
-- select from particular list

SELECT * FROM albums
WHERE name IN("hanuman","sita");

SELECT * FROM albums
WHERE band_ID NOT IN(1,4);

SELECT * FROM albums LIMIT 3;
-- LIMIT -> to limit number of columns

SELECT * FROM albums 
ORDER BY band_ID;
-- default ascending order

SELECT * FROM albums 
ORDER BY ASC band_ID;
-- both works same

SELECT * FROM albums 
ORDER BY DESC band_ID;