SELECT MIN(id) AS id, name
FROM albums
WHERE id>4
GROUP BY name;

-- Having 
-- used when we want to apply any condition after grouping

SELECT MIN(id) AS id, name
FROM albums
GROUP BY name
WHERE id>4;
-- will throw error


SELECT MIN(id) AS id, name
FROM albums
GROUP BY name
HAVING id>4;