/*
Problem : Query a list of CITY names from STATION for cities that have an even ID number.
            Print the results in any order, but exclude duplicates from the answer.

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

-- Solution : MySQL

select distinct city from station where mod(id, 2) = 0;