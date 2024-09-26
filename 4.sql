USE record_company;

SELECT * FROM bands
JOIN albums ON bands.id = albums.band_id;
-- joining 2 tables together according to given condition


SELECT * FROM bands
INNER JOIN albums ON bands.id = albums.band_id;
-- same as join works
-- inner join joins table from left i.e bands
-- and table on right i.e albums
-- it only return values which match the condition


SELECT * FROM bands
LEFT JOIN albums ON bands.id = albums.band_id;
-- LEFT JOIN will allow all bands to show
-- which won't match to any albums


SELECT * FROM bands
RIGHT JOIN albums ON bands.id = albums.band_id;
-- RIGHT JOIN will allow all albums to show
-- which won't match to any bands
