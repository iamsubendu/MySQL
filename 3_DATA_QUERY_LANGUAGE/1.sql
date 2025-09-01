-- DQL (Data Query Language)
-- Commands: SELECT
-- Purpose: Retrieve data from database

SELECT * FROM bands;
-- Avoid SELECT *, specify only needed columns

SELECT * FROM bands LIMIT 2;
-- LIMIT 2 → restricts the result to only 2 rows.

SELECT name FROM bands;

SELECT id AS 'ID', name AS 'Band Name' FROM bands;
-- aliases for column names
-- Aliases allow you to rename a column in the result set

SELECT * FROM bands ORDER BY name;

SELECT * FROM bands ORDER BY name DESC;

SELECT * FROM bands ORDER BY name ASC;

SELECT * FROM Products LIMIT 20 OFFSET 40;
-- Always use LIMIT for large result sets
-- OFFSET 40 → Skips the first 40 rows.