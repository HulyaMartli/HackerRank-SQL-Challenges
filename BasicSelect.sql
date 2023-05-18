-- BASIC SELECT
-- 1. Revising the Select Query I: Query all columns for all American cities in the CITY table with populations larger than 100000. 
The CountryCode for America is USA.
SELECT * FROM city WHERE countrycode='USA' and population>100000;

-- 2. Revising the Select Query II: Query the NAME field for all American cities in the CITY table with populations larger than 120000. 
The CountryCode for America is USA.
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

-- 8. Weather Observation Station 3: Query a list of CITY names from STATION for cities that have an even ID number. 
Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT(city) FROM station WHERE MOD(id,2)=0;

-- 9. Weather Observation Station 4: Find the difference between the total number of CITY entries in the table and the number of distinct 
CITY entries in the table.
SELECT COUNT(city) - COUNT(DISTINCT(city)) AS duplicatecount FROM station;

-- 10. Weather Observation Station 5: Query the two cities in STATION with the shortest and longest CITY names, as well as their respective 
lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when 
ordered alphabetically.
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

-- 11. Weather Observation Station 6: Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates.
SELECT city FROM station WHERE city LIKE 'A%' 
or city LIKE 'E%' 
or city LIKE 'I%' 
or city LIKE 'O%' 
or city LIKE 'U%';

-- 12. Weather Observation Station 7: Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
Your result cannot contain duplicates.
SELECT DISTINCT(city) FROM station WHERE city LIKE '%a' 
or city LIKE '%e' 
or city LIKE '%i' 
or city LIKE '%o' 
or city LIKE '%u';

-- 13. Weather Observation Station 8: Query the list of CITY names from STATION which have vowels (i.e., *a*, *e*, *i*, *o*, and *u*) 
as both their first and last characters. Your result cannot contain duplicates.
-- BETTER SOLUTION:
-- SUBSTR(string,start,length)
SELECT DISTINCT(city) FROM station 
WHERE (SUBSTR(city, 1, 1)) IN ('A', 'E', 'I', 'O', 'U') 
AND (SUBSTR(city, -1)) IN ('a', 'e', 'i', 'o', 'u');


-- SOLUTION 2:
SELECT DISTINCT(city) FROM station WHERE city LIKE 'A%a'
or city LIKE 'A%e'
or city LIKE 'A%i'
or city LIKE 'A%o'
or city LIKE 'A%u'
or city LIKE 'E%a'
or city LIKE 'E%e'
or city LIKE 'E%i'
or city LIKE 'E%o'
or city LIKE 'E%u'
or city LIKE 'I%a'
or city LIKE 'I%e'
or city LIKE 'I%i'
or city LIKE 'I%o'
or city LIKE 'I%u'
or city LIKE 'O%a'
or city LIKE 'O%e'
or city LIKE 'O%i'
or city LIKE 'O%o'
or city LIKE 'O%u'
or city LIKE 'U%a'
or city LIKE 'U%e'
or city LIKE 'U%i'
or city LIKE 'U%o'
or city LIKE 'U%u';

-- 14. Weather Observation Station 9: Query the list of CITY names from STATION that do not start with vowels. 
Your result cannot contain duplicates.
SELECT DISTINCT(city) FROM station 
WHERE (SUBSTR(city, 1, 1)) NOT IN ('A', 'E', 'I', 'O', 'U');

-- 15. Weather Observation Station 10: Query the list of CITY names from STATION that do not end with vowels. 
Your result cannot contain duplicates.
SELECT DISTINCT(city) FROM station 
WHERE (SUBSTR(city, -1)) NOT IN ('a', 'e', 'i', 'o', 'u');

-- 16. Weather Observation Station 11: Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. 
Your result cannot contain duplicates.
SELECT DISTINCT(city) FROM station 
WHERE (SUBSTR(city, 1, 1)) NOT IN ('A', 'E', 'I', 'O', 'U')
OR (SUBSTR(city, -1)) NOT IN ('a', 'e', 'i', 'o', 'u');

-- 17. Weather Observation Station 12: Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
Your result cannot contain duplicates.
SELECT DISTINCT(city) FROM station 
WHERE (SUBSTR(city, 1, 1)) NOT IN ('A', 'E', 'I', 'O', 'U')
AND (SUBSTR(city, -1)) NOT IN ('a', 'e', 'i', 'o', 'u');

-- 18. Higher Than 75 Marks: Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three 
characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), 
secondary sort them by ascending ID.
SELECT name FROM students where marks>75 
ORDER BY SUBSTR(name,LENGTH(Name)-2,3),id ASC;

-- 19. Employee Names: Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table 
in alphabetical order.
SELECT name FROM employee ORDER BY name;

-- 20. Employee Salaries: Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a 
salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
SELECT name FROM employee WHERE salary>2000 and months<10 ORDER BY employee_id ASC;
