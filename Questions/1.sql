-- Query the two cities in STATION with the shortest and longest CITY names, 
-- as well as their respective lengths (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, choose the one that 
-- comes first when ordered alphabetically.

(SELECT name,LENGTH(name) as L FROM albums ORDER BY L DESC,name LIMIT 1)
UNION
(SELECT name,LENGTH(name) as L FROM albums ORDER BY L,name LIMIT 1);

