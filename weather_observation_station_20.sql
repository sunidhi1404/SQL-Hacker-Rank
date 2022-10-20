/*
Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and  
are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.
Query the Euclidean Distance between points P1 and P2 and format your answer to display  decimal digits.
The STATION table is described as follows:
FIELD           TYPE
ID              NUMBER
CITY            VARCHAR2(21)
STATE           VARCHAR2(2)
LAT_N           NUMBER
LONG_W          NUMBER
where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

SELECT ROUND(SQRT(POWER(MAX(LAT_N) - MIN(LAT_N),2) + POWER(MAX(LONG_W) - MIN(LONG_W), 2)),4)
FROM STATION;
