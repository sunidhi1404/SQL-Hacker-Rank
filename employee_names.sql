/*
Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
The Employee table containing employee data for a company is described as follows:
COLUMN          TYPE
employee_id     INTEGER
name            STRING
months          INTEGER
salary          INTEGER
where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, 
and salary is their monthly salary.
*/

SELECT name FROM EMPLOYEE
ORDER BY name;
