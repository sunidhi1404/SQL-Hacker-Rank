/*
Write a query identifying the type of each record in the TRIANGLES table using its three side lengths.
Output one of the following statements for each record in the table:
Equilateral: It's a triangle with  sides of equal length.
Isosceles: It's a triangle with  sides of equal length.
Scalene: It's a triangle with  sides of differing lengths.
Not A Triangle: The given values of A, B, and C don't form a triangle.
The TRIANGLES table is described as follows:
COLUMN          TYPE
A             INTEGER
B             INTEGER
C             INTEGER
*/

SELECT
  CASE 
    WHEN A + B <= C or A + C <= B or B + C <= A THEN 'Not A Triangle'
    WHEN A = B AND B = C AND C = A THEN 'Equilateral'
    WHEN A = B OR A = C OR B = C THEN 'Isosceles'
    WHEN A != B AND  B != C AND C != A THEN 'Scalene'
  END 
FROM TRIANGLES;
