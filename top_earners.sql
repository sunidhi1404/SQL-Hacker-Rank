/*
We define an employee's total earnings to be their monthly salary * months worked, and the maximum total earnings to be the maximum total earnings for any employee in the
Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. 
Then print these values as 2 space-separated integers.
The Employee table containing employee data for a company is described as follows:
COLUMN          TYPE
employee_id     INTEGER
name            STRING
months          INTEGER
salary          INTEGER
where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, 
and salary is their monthly salary.
*/

SELECT salary * months, CONCAT(' ',COUNT(employee_id))
FROM Employee
GROUP BY salary * months
ORDER BY salary * months DESC
LIMIT 1;
