USE record_company;


SELECT AVG(release_year) FROM albums;
-- calculate average data from column



SELECT SUM(release_year) FROM albums;
-- sum all the data in column


SELECT * FROM record_company.albums;


SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id;
-- takes all records and push them in a single row
