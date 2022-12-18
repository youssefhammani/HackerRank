/*
Problem : Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
            Your result cannot contain duplicates.
            
    Input Format

    The STATION table is described as follows:

           STATION
+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMBER     |
| LONG_W      | NUMBER     |
+-------------+------------+

where LAT_N is the northern latitude and LONG_W is the western longitude.

*/

-- Solution MySQL

    -- first method
select distinct city from station where city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%';

    -- second method
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aeiouAEIOU]';