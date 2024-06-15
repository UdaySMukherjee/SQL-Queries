Table: World
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |
+-------------+---------+
name is the primary key (column with unique values) for this table.
Each row of this table gives information about the name of a country, the continent to which it belongs, its area, the population, and its GDP value.
A country is big if:
it has an area of at least three million (i.e., 3000000 km2), or
it has a population of at least twenty-five million (i.e., 25000000).
Write a solution to find the name, population, and area of the big countries.
Return the result table in any order.
The result format is in the following example.

Example 1:
Input: 
World table:
+-------------+-----------+---------+------------+--------------+
| name        | continent | area    | population | gdp          |
+-------------+-----------+---------+------------+--------------+
| Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
| Albania     | Europe    | 28748   | 2831741    | 12960000000  |
| Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
| Andorra     | Europe    | 468     | 78115      | 3712000000   |
| Angola      | Africa    | 1246700 | 20609294   | 100990000000 |
+-------------+-----------+---------+------------+--------------+
Output: 
+-------------+------------+---------+
| name        | population | area    |
+-------------+------------+---------+
| Afghanistan | 25500100   | 652230  |
| Algeria     | 37100000   | 2381741 |
+-------------+------------+---------+

# Code
```
# Write your MySQL query statement below
select name,population,area 
from world
where area >= 3000000 or population >= 25000000;
```

# Explanation of the SQL Code
- SELECT name, population, area: This specifies that we want to retrieve the population* , and area' columns from the world* table.
- FROM world: This specifies the table from which to retrieve the data.
- WHERE area 3000000 OR population 25000000. This condition filters the rows. It includes records where the * area* is at least or the population* is at least 25,000,000.

# Detailed Steps
1. SELECT Columns: Select the Anne*, , and area* columns from the 'world table'.
2. WHERE Clause: Apply the conditions to filter the rows:
- area 3000000: Includes countries with an area of at least 3,000,000 square kilometers.
- OR population > = 25000000: Includes countries with a population of at least
