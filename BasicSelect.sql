-- BASIC SELECT
-- 1. Revising the Select Query I: Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT * FROM city WHERE countrycode='USA' and population>100000;

-- 2. Revising the Select Query II: Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT name FROM city WHERE countrycode='USA' and population>120000;

-- 3. Select All: Query all columns (attributes) for every row in the CITY table.
SELECT * FROM city;

-- 4. Select By ID: Query all columns for a city in CITY with the ID 1661.
SELECT * FROM city WHERE id=1661;

-- 5. Japanese Cities Attributes: Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM city WHERE countrycode='JPN';

-- 6. Japanese Cities' Names: Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT name FROM city WHERE countrycode='JPN';

-- 7. Weather Observation Station 1: Query a list of CITY and STATE from the STATION table.
SELECT city , STATE FROM station;

-- 8. Weather Observation Station 3: Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT(city) FROM station WHERE MOD(id,2)=0;

-- 9. Weather Observation Station 4: Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT COUNT(city) - COUNT(DISTINCT(city)) AS duplicatecount FROM station;

-- 10. Weather Observation Station 5: Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
SELECT city , LENGTH(city) FROM (SELECT city FROM station ORDER BY LENGTH(city) ASC) 
AS subtable
WHERE LENGTH(city)=(SELECT MIN(LENGTH(city)) FROM station) 
ORDER BY city ASC 
LIMIT 1;

SELECT city , LENGTH(city) FROM (SELECT city FROM station ORDER BY LENGTH(city) DESC) 
AS subtable
WHERE LENGTH(city)=(SELECT MAX(LENGTH(city)) FROM station) 
ORDER BY city ASC 
LIMIT 1;

-- 11. Weather Observation Station 6: Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
SELECT city FROM station WHERE city LIKE 'A%' 
or city LIKE 'E%' 
or city LIKE 'I%' 
or city LIKE 'O%' 
or city LIKE 'U%';

