# HACKERRANK SQL CHALLENGES

[BASIC SELECT](#BASIC-SELECT)

## BASIC SELECT

1. [Revising the Select Query I](###Revising-the-Select-Query-I)
1. [Revising the Select Query II](###Revising-the-Select-Query-II)
1. [Select All](###Select-All)
1. [Select By ID](###Select-By-ID)
1. [Japanese Cities' Attributes](###Japanese-Cities-Attributes)
1. [Japanese Cities' Names](###Japanese-Cities-Names)
1. [Weather Observation Station 1](###Weather-Observation-Station-1)
1. [Weather Observation Station 3](###Weather-Observation-Station-3)
1. [Weather Observation Station 4](###Weather-Observation-Station-4)
1. [Weather Observation Station 5](Weather-Observation-Station-5)
1. [Weather Observation Station 6](###Weather-Observation-Station-6)

### Revising the Select Query I

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
Select * from CITY where COUNTRYCODE='USA' and POPULATION>100000;
~~~~

### Revising the Select Query II

[HackerRank Page](https://www.hackerrank.com/challenges/revising-the-select-query-2/)

Query the **NAME** field for all American cities in the **CITY** table with populations larger than `120000`. The *CountryCode* for America is `USA`.

The **CITY** table is described as in [Revising the Select Query I](###Revising-the-Select-Query-I).

**SOLUTION**

~~~~
Select NAME from CITY where COUNTRYCODE='USA' and POPULATION>120000;
~~~~

### Select All

Query all columns (attributes) for every row in the **CITY** table.

The **CITY** table is described as in [Revising the Select Query I](###Revising-the-Select-Query-I).

**SOLUTION**

~~~~
Select * from CITY;
~~~~

### Select By ID

Query all columns for a city in **CITY** with the *ID* `1661`.

The **CITY** table is described as in [Revising the Select Query I](###Revising-the-Select-Query-I).

**SOLUTION**

~~~~
Select * from CITY where ID=1661;
~~~~

### Japanese Cities Attributes

Query all attributes of every Japanese city in the **CITY** table. The **COUNTRYCODE** for Japan is `JPN`.

The **CITY** table is described as in [Revising the Select Query I](###Revising-the-Select-Query-I).

**SOLUTION**

~~~~
Select * from CITY where COUNTRYCODE='JPN';
~~~~

### Japanese Cities' Names

Query the names of all the Japanese cities in the **CITY** table. The **COUNTRYCODE** for Japan is `JPN`.
The **CITY** table is described as follows:

The **CITY** table is described as in [Revising the Select Query I](###Revising-the-Select-Query-I).

**SOLUTION**

~~~~
Select NAME from CITY where COUNTRYCODE='JPN';
~~~~

### Weather Observation Station 1

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
Select CITY , STATE from STATION;
~~~~

### Weather Observation Station 3

Query a list of **CITY** names from **STATION** for cities that have an even **ID** number. Print the results in any order, but exclude duplicates from the answer.

The **STATION** table is described as in [Weather Observation Station 1](###Weather-Observation-Station-1).

**SOLUTION**

~~~~
Select DISTINCT(CITY) from STATION where MOD(ID,2)=0;
~~~~

### Weather Observation Station 4 

Find the difference between the total number of **CITY** entries in the table and the number of distinct **CITY** entries in the table.

The **STATION** table is described as in [Weather Observation Station 1](###Weather-Observation-Station-1).

**SOLUTION**

~~~~
Select COUNT(CITY) - COUNT(DISTINCT(CITY)) as DUPLICATECOUNT from STATION;
~~~~

### Weather Observation Station 5

Query the two cities in **STATION** with the shortest and longest *CITY* names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

The **STATION** table is described as in [Weather Observation Station 1](###Weather-Observation-Station-1).

**SOLUTION**

~~~~
Select CITY , LENGTH(CITY) from (Select CITY from STATION order by LENGTH(CITY) asc) as SUBTABLE where LENGTH(CITY)=(Select MIN(LENGTH(CITY)) from STATION) order by CITY asc limit 1;

Select CITY , LENGTH(CITY) from (Select CITY from STATION order by LENGTH(CITY) desc) as SUBTABLE where LENGTH(CITY)=(Select MAX(LENGTH(CITY)) from STATION) order by CITY asc limit 1;
~~~~

### Weather Observation Station 6

Query the list of *CITY* names starting with vowels (i.e., `a`, `e`, `i`, `o`, or `u`) from **STATION**. Your result *cannot* contain duplicates.

The **STATION** table is described as in [Weather Observation Station 1](###Weather-Observation-Station-1).

**SOLUTION**

~~~~
Select CITY from STATION where CITY LIKE 'A%' or CITY LIKE 'E%' or CITY LIKE 'I%' or CITY LIKE 'O%' or CITY LIKE 'U%';
~~~~

