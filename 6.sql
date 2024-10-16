SELECT id, name
FROM albums
GROUP BY name;
-- will throw error
-- When you group by name, SQL needs to know how to handle the id 
-- column because it doesn't know which id to show for each name.

-- In SQL, when you group data, you can only select:
-- Columns that you are grouping by (like name), or
-- Columns that are summarized (like using SUM, COUNT, etc.).

SELECT id, name
FROM albums
GROUP BY id, name;

-- or

SELECT MIN(id) AS id, name
FROM albums
GROUP BY name;