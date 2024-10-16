-- sub queries
-- nested query
-- we can write it inside
-- 1.SELECT 2.FROM  3.WHERE
-- in subquery - it should return single value , not list

SELECT column(s)
FROM tableName
WHERE colName operator
(subquery);


SELECT AVG(release_year)
FROM albums;

SELECT name, release_year
FROM albums
WHERE release_year > 2024.80;

-- to combine these both
SELECT name, release_year
FROM albums
WHERE release_year > 
(
	SELECT AVG(release_year)
	FROM albums
);

-- so to do these
-- we need to divide the steps 
--and create the sub-query accordingly


SELECT name, release_year
FROM albums
WHERE release_year =
(
	SELECT release_year
	FROM albums
    WHERE release_year%2=0
);
-- or
SELECT name, release_year
FROM albums
where release_year IN
(
	SELECT release_year
	FROM albums
    WHERE release_year%2=0
);
