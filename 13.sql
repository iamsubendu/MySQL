SELECT MAX(name) 
FROM albums
WHERE release_year = 2025;

-- using sub query to this

SELECT MAX(name)
FROM (SELECT * FROM albums WHERE release_year=2025) as temp;
-- we need to use alias when we use sub query in FROM



SELECT (SELECT MAX(name) FROM albums) as NAMES,band_ID
FROM albums;