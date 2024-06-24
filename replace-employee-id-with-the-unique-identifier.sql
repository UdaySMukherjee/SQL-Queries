Table: Employees
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains the id and the name of an employee in a company.
Table: EmployeeUNI
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| unique_id     | int     |
+---------------+---------+
(id, unique_id) is the primary key (combination of columns with unique values) for this table.
Each row of this table contains the id and the corresponding unique id of an employee in the company.
Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.
Return the result table in any order.
The result format is in the following example.
Example 1:
Input: 
Employees table:
+----+----------+
| id | name     |
+----+----------+
| 1  | Alice    |
| 7  | Bob      |
| 11 | Meir     |
| 90 | Winston  |
| 3  | Jonathan |
+----+----------+
EmployeeUNI table:
+----+-----------+
| id | unique_id |
+----+-----------+
| 3  | 1         |
| 11 | 2         |
| 90 | 3         |
+----+-----------+
Output: 
+-----------+----------+
| unique_id | name     |
+-----------+----------+
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |
+-----------+----------+
Explanation: 
Alice and Bob do not have a unique ID, We will show null instead.
The unique ID of Meir is 2.
The unique ID of Winston is 3.
The unique ID of Jonathan is 1.


# Code
```
# Write your MySQL query statement below
SELECT e.unique_id, f.name
FROM EmployeeUNI e
RIGHT JOIN Employees f ON e.id = f.id;
```


# Explanation of the SQL Code
- SELECT e.unique_id, f.name: This specifies that we want to retrieve the unique_id from EmployeeUNI and the name from Employees.
- FROM EmployeeUNI e: This specifies the EmployeeUNI table and assigns it an alias e.
- RIGHT JOIN Employees f: This specifies the Employees table and assigns it an alias f. The RIGHT JOIN ensures that all rows from Employees are included.
- ON e.id = f.id: This specifies the join condition, matching rows where e.id equals f.id.

# Detailed Steps
- Alias Tables: Use e and f as aliases for EmployeeUNI and Employees, respectively, to make the query more readable.
- Join Tables: Use a RIGHT JOIN to include all rows from the Employees table and the matching rows from the EmployeeUNI table based on the id column.
- Select Columns: Select the unique_id from EmployeeUNI and name from Employees.
