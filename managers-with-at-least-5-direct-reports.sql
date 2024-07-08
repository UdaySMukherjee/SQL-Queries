Table: Employee
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the name of an employee, their department, and the id of their manager.
If managerId is null, then the employee does not have a manager.
No employee will be the manager of themself.
Write a solution to find managers with at least five direct reports.
Return the result table in any order.
The result format is in the following example.
Example 1:
Input: 
Employee table:
+-----+-------+------------+-----------+
| id  | name  | department | managerId |
+-----+-------+------------+-----------+
| 101 | John  | A          | null      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |
+-----+-------+------------+-----------+
Output: 
+------+
| name |
+------+
| John |
+------+

# Code
```
# Write your MySQL query statement below
select e.name from employee e
inner join employee m on e.id = m.managerid
group by m.managerid
having count(m.managerid) >= 5;
```

# Explanation of the SQL Code
- SELECT e.name: This specifies that we want to retrieve the name* of the employee from the *employee* table alias
- FROM employee e: This specifies the employee* table and assigns it an alias *e*.
-INNER JOIN employee m ON e.id = m.managerid: This performs an inner join on the *employee* table alias where the of matches the of , pairing each manager with their subordinates.
- GROUP BY e.name: This groups the results by the managers name.
- HAVING COUNT(m.id) > = 5: This filters the grouped results to include only those managers who supervise at least 5 employees.
