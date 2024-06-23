-- 29. Query the following two values from the STATION table:
-- 1) The sum of all values in LAT_N rounded to a scale of 2 decimal places.
-- 2) The sum of all values in LONG_W rounded to a scale of 2 decimal places.

SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;


-- 30. Query the sum of Northern Latitudes (LAT_N) from STATION having 
-- values greater than 38.7880 and less than 137.2345. 
-- Truncate your answer to 4 decimal places.

SELECT ROUND(SUM(LAT_N), 4) FROM STATION
WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;


-- 31. Query the greatest value of the Northern Latitudes (LAT_N) from STATION 
-- that is less than 137.2345. Truncate your answer to 4 decimal places.

SELECT ROUND(MAX(LAT_N), 4) FROM STATION
WHERE LAT_N < 137.2345;


-- 32. Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) 
-- in STATION that is less than 137.2345. Round your answer to 4 decimal places.

SELECT ROUND(LONG_W, 4) FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC LIMIT 1;


-- 33. Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. 
-- Round your answer to 4 decimal places.

SELECT ROUND(LAT_N, 4) FROM STATION
WHERE LAT_N > 38.7780 
ORDER BY LAT_N ASC LIMIT 1;


-- 34. Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION 
-- is greater than 38.7780. Round your answer to 4 decimal places.

SELECT ROUND(LONG_W, 4) FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N ASC LIMIT 1;


