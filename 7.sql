-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) 
-- from STATION. Your result cannot contain duplicates.
SELECT city FROM station
WHERE LOWER(city) LIKE 'a%'
OR LOWER(city) LIKE 'e%'
OR LOWER(city) LIKE 'i%'
OR LOWER(city) LIKE 'o%'
OR LOWER(city) LIKE 'u%';

SELECT DISTINCT city FROM station
WHERE LOWER(city) REGEXP '^[aeiou]';


-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
-- Your result cannot contain duplicates.
SELECT DISTINCT city FROM station
WHERE LOWER(city) LIKE '%a'
OR LOWER(city) LIKE '%e'
OR LOWER(city) LIKE '%i'
OR LOWER(city) LIKE '%o'
OR LOWER(city) LIKE '%u';

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) REGEXP '[aeiou]$';

-- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
-- as both their first and last characters. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) REGEXP '^[aeiou].*[aeiou]$';
-- ^: Indicates the start of the string.
-- .*: Matches any characters (including none) in between.
-- $: Indicates the end of the string.

-- Query the list of CITY names from STATION that do not start with vowels. 
-- Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) NOT REGEXP '^[aeiou]';


-- Query the list of CITY names from STATION that do not start with vowels and do not 
-- end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) NOT REGEXP '^[aeiou]' 
AND LOWER(CITY) NOT REGEXP '[aeiou]$';