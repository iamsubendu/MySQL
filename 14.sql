-- MYSQL views
-- A view is virtual table based on the result-set of sql query

CREATE VIEW albumView AS
SELECT name,release_year FROM albums;

SELECT * FROM albumView;

-- we can use normal queries on it the

DROP VIEW albumView;