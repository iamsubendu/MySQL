-- Query a list of CITY names from STATION for cities that have an even ID number.
-- Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT city FROM station WHERE MOD(ID,2)=0;


-- Find the difference between the total number of CITY entries in the table and 
-- the number of distinct CITY entries in the table.
SELECT COUNT(city) - COUNT(DISTINCT city) AS difference FROM station;


-- Query the two cities in STATION with the shortest and longest CITY names, 
-- as well as their respective lengths (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, choose the one that 
-- comes first when ordered alphabetically.
(select name from albums order by length(name) desc limit 1)
UNION
(select name from albums order by length(name) limit 1);


