-- Query the Name of any student in STUDENTS who scored higher than  Marks. 
-- Order your output by the last three characters of each name. If two or
-- more students both have names ending in the same last three characters 
-- (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
SELECT name FROM students
WHERE marks>75
ORDER BY RIGHT(name,3), ID;
-- RIGHT(NAME, 3): Extracts the last three characters of each name.


-- Given the CITY and COUNTRY tables, query the names of all the continents 
-- (COUNTRY.Continent) and their respective average city populations 
-- (CITY.Population) rounded down to the nearest integer.
SELECT ct.continent, FLOOR(AVG(c.population))
FROM city c
JOIN country ct 
ON c.countrycode = ct.code
GROUP BY ct.continent;