Table: Customer
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
In SQL, id is the primary key column for this table.
Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
Find the names of the customer that are not referred by the customer with id = 2.
Return the result table in any order.
The result format is in the following example.

Example 1:
Input: 
Customer table:
+----+------+------------+
| id | name | referee_id |
+----+------+------------+
| 1  | Will | null       |
| 2  | Jane | null       |
| 3  | Alex | 2          |
| 4  | Bill | null       |
| 5  | Zack | 1          |
| 6  | Mark | 2          |
+----+------+------------+
Output: 
+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+


# Code
```
# Write your MySQL query statement below
select name from customer
where referee_id is null or referee_id != 2;
```

# Explanation of the SQL Code
- SELECT name: This specifies that we want to retrieve the column.
- FROM customer: This specifies the table from which to retrieve the data.
- WHERE referee id IS NULL OR referee id 2: This condition filters the rows. It includes customers where the referee is either null (meaning they have no referee) or not equal to 2.
  
# Detailed Steps
1. SELECT name: Select the column from the table.
2. WHERE clause: Apply the conditions to filter the rows:
- referee id IS NULL: Includes customers who do not have a referee.
- OR referee id 2: Includes customers whose *referee id' is not equal to 2.
