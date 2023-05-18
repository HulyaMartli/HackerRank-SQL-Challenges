# HACKERRANK SQL CHALLENGES

[HackerRank SQL Challenges](https://www.hackerrank.com/domains/sql?badge_type=sql) - Questions and Solutions

[BASIC SELECT](#BASIC-SELECT)

[AGGREGATION](#AGGREGATION)

<hr>

## BASIC SELECT

1. [Revising the Select Query I](#1.-Revising-the-Select-Query-I)
1. [Revising the Select Query II](#Revising-the-Select-Query-II)
1. [Select All](#Select-All)
1. [Select By ID](#Select-By-ID)
1. [Japanese Cities' Attributes](#Japanese-Cities-Attributes)
1. [Japanese Cities' Names](#Japanese-Cities-Names)
1. [Weather Observation Station 1](#Weather-Observation-Station-1)
1. [Weather Observation Station 3](#Weather-Observation-Station-3)
1. [Weather Observation Station 4](#Weather-Observation-Station-4)
1. [Weather Observation Station 5](#Weather-Observation-Station-5)
1. [Weather Observation Station 6](#Weather-Observation-Station-6)
1. [Weather Observation Station 7](#Weather-Observation-Station-7)
1. [Weather Observation Station 8](#Weather-Observation-Station-8)
1. [Weather Observation Station 9](#Weather-Observation-Station-9)
1. [Weather Observation Station 10](#Weather-Observation-Station-10)
1. [Weather Observation Station 11](#Weather-Observation-Station-11)
1. [Weather Observation Station 12](#Weather-Observation-Station-12)
1. [Higher Than 75 Marks](#Higher-Than-75-Marks)
1. [Employee Names](#Employee-Names)
1. [Employee Salaries](#Employee-Salaries)

<hr>

### 1. Revising the Select Query I

[HackerRank Page](https://www.hackerrank.com/challenges/revising-the-select-query/)

Query all columns for all American cities in the **CITY** table with populations larger than `100000`. The **CountryCode** for America is `USA`.

The **CITY** table is described as follows:

| Field       | Type         |
| ----------- | ------------ |
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |

**SOLUTION**

~~~~
SELECT * FROM city WHERE countrycode='USA' and population>100000;
~~~~

<hr>

### 2. Revising the Select Query II

[HackerRank Page](https://www.hackerrank.com/challenges/revising-the-select-query-2/)

Query the **NAME** field for all American cities in the **CITY** table with populations larger than `120000`. The *CountryCode* for America is `USA`.

The **CITY** table is described as in [Revising the Select Query I](#Revising-the-Select-Query-I).

**SOLUTION**

~~~~
SELECT name FROM city WHERE countrycode='USA' and population>120000;
~~~~

<hr>

### 3. Select All

[HackerRank Page](https://www.hackerrank.com/challenges/select-all-sql/)

Query all columns (attributes) for every row in the **CITY** table.

The **CITY** table is described as in [Revising the Select Query I](#Revising-the-Select-Query-I).

**SOLUTION**

~~~~
SELECT * FROM city;
~~~~

<hr>

### 4. Select By ID

[HackerRank Page](https://www.hackerrank.com/challenges/select-by-id/)

Query all columns for a city in **CITY** with the *ID* `1661`.

The **CITY** table is described as in [Revising the Select Query I](#Revising-the-Select-Query-I).

**SOLUTION**

~~~~
SELECT * FROM city WHERE id=1661;
~~~~

<hr>

### 5. Japanese Cities Attributes

[HackerRank Page](https://www.hackerrank.com/challenges/japanese-cities-attributes/)

Query all attributes of every Japanese city in the **CITY** table. The **COUNTRYCODE** for Japan is `JPN`.

The **CITY** table is described as in [Revising the Select Query I](#Revising-the-Select-Query-I).

**SOLUTION**

~~~~
SELECT * FROM city WHERE countrycode='JPN';
~~~~

<hr>

### 6. Japanese Cities' Names

[HackerRank Page](https://www.hackerrank.com/challenges/japanese-cities-name/)

Query the names of all the Japanese cities in the **CITY** table. The **COUNTRYCODE** for Japan is `JPN`.
The **CITY** table is described as follows:

The **CITY** table is described as in [Revising the Select Query I](#Revising-the-Select-Query-I).

**SOLUTION**

~~~~
SELECT name FROM city WHERE countrycode='JPN';
~~~~

<hr>

### 7. Weather Observation Station 1

[HackerRank Page](https://www.hackerrank.com/challenges/weather-observation-station-1/)

Query a list of **CITY** and **STATE** from the **STATION** table.
The **STATION** table is described as follows:

| Field  | Type         |
| ------ | ------------ |
| ID     | NUMBER       |
| CITY   | VARCHAR2(21) |
| STATE  | VARCHAR2(2)  |
| LAT_N  | NUMBER       |
| LONG_W | NUMBER       |

where **LAT_N** is the northern latitude and **LONG_W** is the western longitude.

**SOLUTION**

~~~~
SELECT city , STATE FROM station;
~~~~

<hr>

### 8. Weather Observation Station 3

[HackerRank Page](https://www.hackerrank.com/challenges/weather-observation-station-3/)

Query a list of **CITY** names from **STATION** for cities that have an even **ID** number. Print the results in any order, but exclude duplicates from the answer.

The **STATION** table is described as in [Weather Observation Station 1](#Weather-Observation-Station-1).

**SOLUTION**

~~~~
SELECT DISTINCT(city) FROM station WHERE MOD(id,2)=0;
~~~~

<hr>

### 9. Weather Observation Station 4

[HackerRank Page](https://www.hackerrank.com/challenges/weather-observation-station-4/)

Find the difference between the total number of **CITY** entries in the table and the number of distinct **CITY** entries in the table.

The **STATION** table is described as in [Weather Observation Station 1](#Weather-Observation-Station-1).

**SOLUTION**

~~~~
SELECT COUNT(city) - COUNT(DISTINCT(city)) 
AS duplicatecount FROM station;
~~~~

<hr>

### 10. Weather Observation Station 5

[HackerRank Page](https://www.hackerrank.com/challenges/weather-observation-station-5/)

Query the two cities in **STATION** with the shortest and longest *CITY* names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

The **STATION** table is described as in [Weather Observation Station 1](#Weather-Observation-Station-1).

**SOLUTION**

~~~~
SELECT city , LENGTH(city) FROM (SELECT city FROM station 
ORDER BY LENGTH(city) ASC) 
AS subtable
WHERE LENGTH(city)=(SELECT MIN(LENGTH(city)) FROM station) 
ORDER BY city ASC 
LIMIT 1;

SELECT city , LENGTH(city) FROM (SELECT city FROM station 
ORDER BY LENGTH(city) DESC) 
AS subtable
WHERE LENGTH(city)=(SELECT MAX(LENGTH(city)) FROM station) 
ORDER BY city ASC 
LIMIT 1;
~~~~

<hr>

### 11. Weather Observation Station 6

[HackerRank Page](https://www.hackerrank.com/challenges/weather-observation-station-6/)

Query the list of *CITY* names starting with vowels (i.e., `a`, `e`, `i`, `o`, or `u`) from **STATION**. Your result *cannot* contain duplicates.

The **STATION** table is described as in [Weather Observation Station 1](#Weather-Observation-Station-1).

**SOLUTION**

~~~~
SELECT city FROM station WHERE city LIKE 'A%' 
or city LIKE 'E%' 
or city LIKE 'I%' 
or city LIKE 'O%' 
or city LIKE 'U%';
~~~~

<hr>

### 12. Weather Observation Station 7

[HackerRank Page](https://www.hackerrank.com/challenges/weather-observation-station-7/)

Query the list of *CITY* names ending with vowels (a, e, i, o, u) from **STATION**. Your result *cannot* contain duplicates.

The **STATION** table is described as in [Weather Observation Station 1](#Weather-Observation-Station-1).

**SOLUTION**

~~~~
SELECT DISTINCT(city) FROM station WHERE city LIKE '%a' 
or city LIKE '%e' 
or city LIKE '%i' 
or city LIKE '%o' 
or city LIKE '%u';
~~~~

<hr>

### 13. Weather Observation Station 8

[HackerRank Page](https://www.hackerrank.com/challenges/weather-observation-station-8/)

Query the list of *CITY* names from **STATION** which have vowels (i.e., *a*, *e*, *i*, *o*, and *u*) as both their first *and* last characters. Your result cannot contain duplicates.

The **STATION** table is described as in [Weather Observation Station 1](#Weather-Observation-Station-1).

**SOLUTION**

~~~~
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
~~~~

<hr>

### 14. Weather Observation Station 9

[HackerRank Page](https://www.hackerrank.com/challenges/weather-observation-station-9/)

Query the list of *CITY* names from **STATION** that *do not start* with vowels. Your result cannot contain duplicates.

The **STATION** table is described as in [Weather Observation Station 1](#Weather-Observation-Station-1).

**SOLUTION**

~~~~
SELECT DISTINCT(city) FROM station 
WHERE (SUBSTR(city, 1, 1)) NOT IN ('A', 'E', 'I', 'O', 'U');
~~~~

<hr>

### 15. Weather Observation Station 10

[HackerRank Page](https://www.hackerrank.com/challenges/weather-observation-station-10/)

Query the list of *CITY* names from **STATION** that *do not end* with vowels. Your result cannot contain duplicates.

The **STATION** table is described as in [Weather Observation Station 1](#Weather-Observation-Station-1).

**SOLUTION**

~~~~
SELECT DISTINCT(city) FROM station 
WHERE (SUBSTR(city, -1)) NOT IN ('a', 'e', 'i', 'o', 'u');
~~~~

<hr>

### 16. Weather Observation Station 11

[HackerRank Page](https://www.hackerrank.com/challenges/weather-observation-station-11/)

Query the list of *CITY* names from **STATION** that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

The **STATION** table is described as in [Weather Observation Station 1](#Weather-Observation-Station-1).

**SOLUTION**

~~~~
SELECT DISTINCT(city) FROM station 
WHERE (SUBSTR(city, 1, 1)) NOT IN ('A', 'E', 'I', 'O', 'U')
OR (SUBSTR(city, -1)) NOT IN ('a', 'e', 'i', 'o', 'u');
~~~~

<hr>

### 17. Weather Observation Station 12

[HackerRank Page](https://www.hackerrank.com/challenges/weather-observation-station-12/)

Query the list of *CITY* names from **STATION** that *do not start* with vowels and *do not end* with vowels. Your result cannot contain duplicates.

The **STATION** table is described as in [Weather Observation Station 1](#Weather-Observation-Station-1).

**SOLUTION**

~~~~
SELECT DISTINCT(city) FROM station 
WHERE (SUBSTR(city, 1, 1)) NOT IN ('A', 'E', 'I', 'O', 'U')
AND (SUBSTR(city, -1)) NOT IN ('a', 'e', 'i', 'o', 'u');
~~~~

<hr>

### 18. Higher Than 75 Marks

[HackerRank Page](https://www.hackerrank.com/challenges/more-than-75-marks/)

Query the *Name* of any student in **STUDENTS** who scored higher than 75 *Marks*. Order your output by the *last three characters* of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending *ID*.

The **STUDENTS** table is described as follows:

| Column | Type    |
| ------ | ------- |
| ID     | Integer |
| Name   | String  |
| Marks  | Integer |

The *Name* column only contains uppercase (`A`-`Z`) and lowercase (`a`-`z`) letters.

**SOLUTION**

~~~~
SELECT name FROM students where marks>75 
ORDER BY SUBSTR(name,LENGTH(Name)-2,3),id ASC;
~~~~

<hr>

### 19. Employee Names

[HackerRank Page](https://www.hackerrank.com/challenges/name-of-employees/)

Write a query that prints a list of employee names (i.e.: the *name* attribute) from the **Employee** table in alphabetical order.

The **Employee** table containing employee data for a company is described as follows:

| Column      | Type    |
| ----------- | ------- |
| employee_id | Integer |
| name        | String  |
| months      | Integer |
| salary      | Integer |

where *employee_id* is an employee's ID number, *name* is their name, *months* is the total number of months they've been working for the company, and *salary* is their monthly salary.

**SOLUTION**

~~~~
SELECT name FROM employee ORDER BY name; 
~~~~

### 20. Employee Salaries

[HackerRank Page](https://www.hackerrank.com/challenges/salary-of-employees/)

Write a query that prints a list of employee names (i.e.: the *name* attribute) for employees in **Employee** having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending *employee_id*.

The **Employee** table containing employee data for a company is described as in [Employee Names](#Employee-Names).

**SOLUTION**

~~~~
SELECT name FROM employee WHERE salary>2000 and months<10 
ORDER BY employee_id ASC;
~~~~

<hr>

## AGGREGATION

1. [The Blunder](#The-Blunder)
2. 

### 1. The Blunder

 
