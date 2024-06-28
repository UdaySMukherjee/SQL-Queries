Table: Employee
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| empId       | int     |
| name        | varchar |
| supervisor  | int     |
| salary      | int     |
+-------------+---------+
empId is the column with unique values for this table.
Each row of this table indicates the name and the ID of an employee in addition to their salary and the id of their manager.
Table: Bonus
+-------------+------+
| Column Name | Type |
+-------------+------+
| empId       | int  |
| bonus       | int  |
+-------------+------+
empId is the column of unique values for this table.
empId is a foreign key (reference column) to empId from the Employee table.
Each row of this table contains the id of an employee and their respective bonus.
Write a solution to report the name and bonus amount of each employee with a bonus less than 1000.
Return the result table in any order.
The result format is in the following example.
Example 1:
Input: 
Employee table:
+-------+--------+------------+--------+
| empId | name   | supervisor | salary |
+-------+--------+------------+--------+
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |
+-------+--------+------------+--------+
Bonus table:
+-------+-------+
| empId | bonus |
+-------+-------+
| 2     | 500   |
| 4     | 2000  |
+-------+-------+
Output: 
+------+-------+
| name | bonus |
+------+-------+
| Brad | null  |
| John | null  |
| Dan  | 500   |
+------+-------+


# Code
```
# Write your MySQL query statement below
select e.name, b.bonus
from employee e 
left join bonus b on e.empid = b.empid
where b.bonus<1000 or bonus is null;
```

# Explanation of the SQL Code
- SELECT e.name, b.bonus: This specifies that we want to retrieve the name* from the * employee* table and the bonus* from the bonus* table.
- FROM employee e: This specifies the employee' table and assigns it an alias e*.
- LEFT JOIN bonus b ON e.empid = b.empid: This performs a *LEFT JOIN* with the bonus* table on the empid* column, ensuring all employees are included.
- WHERE b.bonus < 1000 OR b.bonus IS NULL• This condition filters the rows to include only those with a bonus less than 1000 or no bonus (null).

# Detailed Steps
1. Alias Tables: Use and as aliases for and , respectively.
2. Join Tables: Perform a LEFT JOIN* on and using the column to
include all employees.
3. Filter Results: Use the clause to filter the results to include only those employees with a
bonus less than 1000 or no bonus.
4. Select Columns: Select the from the ' table and bonus* from the
table.
