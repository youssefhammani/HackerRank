/*
Problem : Query the two cities in STATION with the shortest and longest CITY names,
            as well as their respective lengths (i.e.: number of characters in the name).
        If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

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

Sample Input

For example, CITY has four entries: DEF, ABC, PQRS and WXY.

Sample Output

+--------------------------------------+
|                                      |
|   ABC 3                              | 
|   PQRS 4                             |
|                                      |
+--------------------------------------+

Explanation

When ordered alphabetically, the CITY names are listed as ABC, DEF, PQRS, and WXY, with lengths 3,3,4 and 3.
The longest name is PQRS, but there are  options for shortest named city. Choose ABC, because it comes first alphabetically.

Note: You can write two separate queries to get the desired output. It need not be a single query.

*/

-- Solution : MySQL

    -- first method
select city, length(city) from station where length(city) = (select min(length(city)) from station) order by city asc limit 1;
select city, length(city) from station where length(city) = (select max(length(city)) from station) order by city desc limit 1;

    -- second method
select city, length(city) from station order by length(city) asc, city limit 1;
select city, length(city) from station order by length(city) desc, city asc limit 1;