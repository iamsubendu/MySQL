-- Query the two cities in STATION with the shortest and longest CITY names, 
-- as well as their respective lengths (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, choose the one that 
-- comes first when ordered alphabetically.
(select name from albums order by length(name) desc limit 1)
UNION
(select name from albums order by length(name) limit 1);


