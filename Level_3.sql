-- AGGREGATION


-- 21. Query a count of the number of cities in CITY having a Population larger than .

SELECT COUNT(NAME) FROM CITY
WHERE POPULATION > 100000;


-- 22. Query the total population of all cities in CITY where District is California.

SELECT SUM(POPULATION) FROM CITY
WHERE DISTRICT = 'California';


-- 23. Query the average population of all cities in CITY where District is California.

SELECT AVG(POPULATION) FROM CITY
WHERE DISTRICT = 'California';


-- 24. Query the average population for all cities in CITY, 
-- rounded down to the nearest integer.

SELECT ROUND(AVG(POPULATION)) FROM CITY;


-- 25. Query the sum of the populations for all Japanese cities in CITY. 
-- The COUNTRYCODE for Japan is JPN.

SELECT SUM(POPULATION) FROM CITY
WHERE COUNTRYCODE = 'JPN';


-- 26. Query the difference between the maximum and minimum populations in CITY.

SELECT MAX(POPULATION) - MIN(POPULATION) FROM CITY;


-- 27. Samantha was tasked with calculating the average monthly salaries for 
-- all employees in the EMPLOYEES table, but did not realize her keyboard's 0 key
-- was broken until after completing the calculation. She wants your help finding 
-- the difference between her miscalculation (using salaries with any zeros removed), 
-- and the actual average salary.
-- Write a query calculating the amount of error (i.e.: ACTUAL - MISCALCULATED)
-- average monthly salaries), and round it up to the next integer.

SELECT CEIL(AVG(SALARY) - AVG(REPLACE(SALARY, 0, ""))) FROM EMPLOYEES;


-- 28. We define an employee's total earnings to be their monthly SALARY x MONTHS worked, 
-- and the maximum total earnings to be the maximum total earnings for any employee 
-- in the Employee table. Write a query to find the maximum total earnings for all 
-- employees as well as the total number of employees who have maximum total earnings. 
-- Then print these values as 2 space-separated integers.

SELECT MONTHS * SALARY AS SAL, COUNT(*) FROM EMPLOYEE
GROUP BY SAL ORDER BY SAL DESC LIMIT 1;



