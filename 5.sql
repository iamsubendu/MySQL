-- Aggregate functions

SELECT AVG(release_year) FROM albums;
-- calculate average data from column

SELECT SUM(release_year) FROM albums;
-- sum all the data in column

SELECT COUNT(release_year) FROM albums;

SELECT MAX(release_year) FROM albums;

SELECT MIN(release_year) FROM albums;

SELECT name, band_ID FROM albums WHERE MOD(ID,2)=0;

SELECT COUNT(band_ID) - COUNT(DISTINCT band_ID) AS difference FROM albums;