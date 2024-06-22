-- 8. Query a list of CITY names from STATION for 
-- cities that have an even ID number. 
-- Print the results in any order, but exclude duplicates from the answer.

SELECT DISTINCT(CITY) FROM STATION 
WHERE (ID%2) = 0;

SELECT DISTINCT CITY FROM STATION 
WHERE MOD(ID, 2) = 0;


-- 9. Find the difference between the total number 
-- of CITY entries in the table and the number 
-- of distinct CITY entries in the table.

SELECT COUNT(CITY) - COUNT(DISTINCT(CITY)) FROM STATION;


-- 10. Query the two cities in STATION with the shortest and 
-- longest CITY names, as well as their respective lengths 
-- (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, 
-- choose the one that comes first when ordered alphabetically.

(SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) ASC, CITY LIMIT 1)
UNION
(SELECT CITY, LENGTH(CITY) FROM STATION
ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1);


-- 11. Query the list of CITY names starting with vowels 
-- (i.e., a, e, i, o, or u) from STATION. 
-- Your result cannot contain duplicates.

SELECT DISTINCT(CITY) FROM STATION
WHERE CITY LIKE 'A%' 
OR CITY LIKE 'E%' 
OR CITY LIKE 'I%' 
OR CITY LIKE 'O%' 
OR CITY LIKE 'U%';


-- 12. Query the list of CITY names ending with 
-- vowels (a, e, i, o, u) from STATION. 
-- Your result cannot contain duplicates.
-- REMEMBER - Ending with vowels

SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%a' 
OR CITY LIKE '%e' 
OR CITY LIKE '%i' 
OR CITY LIKE '%o' 
OR CITY LIKE '%u';


-- 13. Query the list of CITY names from STATION which have vowels 
-- (i.e., a, e, i, o, and u) as both their first and last characters. 
-- Your result cannot contain duplicates.

SELECT DISTINCT(CITY) FROM STATION 
WHERE (CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%') 
AND (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');


-- 14. Query the list of CITY names from STATION that do not start with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE 'A%' 
AND CITY NOT LIKE 'E%' 
AND CITY NOT LIKE 'I%' 
AND CITY NOT LIKE 'O%' 
AND CITY NOT LIKE 'U%';


-- 15. Query the list of CITY names from STATION that do not end with vowels. 
-- Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE '%a' 
AND CITY NOT LIKE '%e' 
AND CITY NOT LIKE '%i' 
AND CITY NOT LIKE '%o' 
AND CITY NOT LIKE '%u';


-- 16. Query the list of CITY names from STATION that either do not start with 
-- vowels or do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION
WHERE 
(CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%')
OR
(CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u');


-- 17. Query the list of CITY names from STATION that do not start with 
-- vowels and do not end with vowels. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION
WHERE 
(CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%')
AND
(CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u');


