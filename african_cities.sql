/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

The CITY table is described as follows:
COLUMN          TYPE
ID              NUMBER
NAME            VARCHAR2(17)
COUNTRYCODE     VARCHAR2(3)      
DISTRICT        VARCHAR2(20)
POPULATION      NUMBER

The COUNTRY table is described as follows:
COLUMN          TYPE
CODE            VARCHAR2(3)
NAME            VARCHAR2(44)
CONTINENT       VARCHAR2(13)      
REGION          VARCHAR2(25)
SURFACEAREA     NUMBER
INDEPYEAR       VARCHAR2(5)
POPULATION      NUMBER
LIFEEXPECTANCY  VARCHAR2(4)      
GNP             NUMBER
GNPOLD          VARCHAR2(9)
LOCALNAME       VARCHAR2(44)
GOVERNMENTFORM  VARCHAR2(44)      
HEADOFSTATE     VARCHAR2(32)
*/

SELECT C.NAME
FROM CITY C
JOIN COUNTRY CO ON C.COUNTRYCODE = CO.CODE
WHERE CO.CONTINENT = 'Africa';
