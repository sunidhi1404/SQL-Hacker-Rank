/*
Query a count of the number of cities in CITY having a Population larger than 100000 .
The CITY table is described as follows:
COLUMN          TYPE
ID              NUMBER
NAME            VARCHAR2(17)
COUNTRYCODE     VARCHAR2(3)      
DISTRICT        VARCHAR2(20)
POPULATION      NUMBER
*/

SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;
