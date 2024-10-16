SELECT release_year, COUNT(band_id) FROM albums
GROUP BY release_year;

-- Get release year which has max count

SELECT release_year
FROM (
  SELECT release_year, COUNT(band_id) AS count
  FROM albums
  GROUP BY release_year
  ORDER BY count DESC
) AS subquery
LIMIT 1;

