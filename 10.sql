-- Joins
-- 1. Inner Join - common data

SELECT COLUMN(S)
FROM tableA
INNER JOIN tableB
ON tableA.colName = tableB.colName;

SELECT *
FROM albums
INNER JOIN bands
ON albums.band_ID = bands.id;

-- using alias(as)
SELECT *
FROM albums as a
INNER JOIN bands as b
ON a.band_ID = b.id;

-- 2. Outer Joins 
-- Left Join - all data on table A and common data betwen A & B
SELECT *
FROM albums as a
LEFT JOIN bands as b
ON a.band_ID = b.id;

-- Right Join - all data on table B and common data betwen A & B
SELECT *
FROM albums as a
RIGHT JOIN bands as b
ON a.band_ID = b.id;

-- Full Join - all the data's in A & B
SELECT *
FROM albums as a
LEFT JOIN bands as b
ON a.band_ID = b.id
UNION
SELECT *
FROM albums as a
RIGHT JOIN bands as b
ON a.band_ID = b.id;
-- their is no FULL JOIN in sql
-- thus we get 2 queries of left and right
-- and unite them with union