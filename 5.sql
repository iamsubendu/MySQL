SELECT AVG(release_year) FROM albums;
-- calculate average data from column

SELECT SUM(release_year) FROM albums;
-- sum all the data in column

SELECT * FROM record_company.albums;

SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id;
-- takes all records and push them in a single row


SELECT MAX(a.id) 
FROM albums a
JOIN bands b ON a.id = b.id;

SELECT a.id 
FROM albums a
JOIN bands b ON a.id = b.id
ORDER BY a.id DESC
LIMIT 1,2;