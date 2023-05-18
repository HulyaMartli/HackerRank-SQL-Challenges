-- BASIC SELECT
-- 1. Revising the Select Query I: Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
Select * from CITY where COUNTRYCODE='USA' and POPULATION>100000;

-- 2. Revising the Select Query II: Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
Select NAME from CITY where COUNTRYCODE='USA' and POPULATION>120000;

-- 3. Select All: Query all columns (attributes) for every row in the CITY table.
Select * from CITY;

-- 4. Select By ID: Query all columns for a city in CITY with the ID 1661.
Select * from CITY where ID=1661;

-- 5. Japanese Cities Attributes: Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
Select * from CITY where COUNTRYCODE='JPN';

-- 6. Japanese Cities' Names: Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
Select NAME from CITY where COUNTRYCODE='JPN';

-- 7. Weather Observation Station 1: Query a list of CITY and STATE from the STATION table.
Select CITY , STATE from STATION;

-- 8. Weather Observation Station 3: Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
Select DISTINCT(CITY) from STATION where MOD(ID,2)=0;

-- 9. Weather Observation Station 4: Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
Select COUNT(CITY) - COUNT(DISTINCT(CITY)) as DUPLICATECOUNT from STATION;

-- 10. Weather Observation Station 5: Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
Select CITY , LENGTH(CITY) from (Select CITY from STATION order by LENGTH(CITY) asc) 
as SUBTABLE 
where LENGTH(CITY)=(Select MIN(LENGTH(CITY)) from STATION) 
order by CITY asc 
limit 1;

Select CITY , LENGTH(CITY) from (Select CITY from STATION order by LENGTH(CITY) desc) 
as SUBTABLE 
where LENGTH(CITY)=(Select MAX(LENGTH(CITY)) from STATION) 
order by CITY asc 
limit 1;

-- 11. Weather Observation Station 6: Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
Select CITY from STATION where CITY LIKE 'A%' 
or CITY LIKE 'E%' 
or CITY LIKE 'I%' 
or CITY LIKE 'O%' 
or CITY LIKE 'U%';