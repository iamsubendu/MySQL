USE record_company;

INSERT INTO bands (name) VALUES ('Ram');

INSERT INTO bands (name) VALUES ('Laxman'),('Bharath'),('Shatrughna');
-- The round brackets are must for entering multiple values

SELECT * FROM bands;

SELECT * FROM bands LIMIt 2;

SELECT name FROM bands;

SELECT id AS 'ID', name AS 'Band Name' FROM bands;
-- aliases for column names
-- Aliases allow you to rename a column in the result set

SELECT * FROM bands ORDER BY name;

SELECT * FROM bands ORDER BY name DESC;

SELECT * FROM bands ORDER BY name ASC;