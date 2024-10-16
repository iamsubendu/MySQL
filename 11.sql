
-- Left exclusive join 
-- all data on table A and no data from B
SELECT *
FROM albums as a
LEFT JOIN bands as b
ON a.band_ID = b.id
WHERE b.id IS NULL;
-- checking null as the data won't match

-- Right exclusive join 
-- all data on table B and no data from A
SELECT *
FROM albums as a
RIGHT JOIN bands as b
ON a.band_ID = b.id
WHERE a.band_ID IS NULL;


-- JOIN/ Self Join
-- A SELF JOIN is a type of JOIN that allows you to join a 
-- table with itself, as if it were two tables. This is useful 
-- when you want to compare rows within the same table.
SELECT a.name, b.release_year
FROM albums as a
JOIN albums as b
ON a.band_ID = b.id;
-- ex 
-- 1. Hierarchical data: to retrieve data from a table that has a 
-- hierarchical structure, like an organizational chart.
-- 2. Recursive queries: to perform recursive operations on a 
-- table, like finding all descendants of a node.
-- 3. Data aggregation: to aggregate data from a table, like 
-- calculating the total sales of each region.