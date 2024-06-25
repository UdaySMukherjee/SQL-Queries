Table: Visits
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| visit_id    | int     |
| customer_id | int     |
+-------------+---------+
visit_id is the column with unique values for this table.
This table contains information about the customers who visited the mall.
Table: Transactions
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| transaction_id | int     |
| visit_id       | int     |
| amount         | int     |
+----------------+---------+
transaction_id is column with unique values for this table.
This table contains information about the transactions made during the visit_id.
Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
Return the result table sorted in any order.
The result format is in the following example.
Example 1:
Input: 
Visits
+----------+-------------+
| visit_id | customer_id |
+----------+-------------+
| 1        | 23          |
| 2        | 9           |
| 4        | 30          |
| 5        | 54          |
| 6        | 96          |
| 7        | 54          |
| 8        | 54          |
+----------+-------------+
Transactions
+----------------+----------+--------+
| transaction_id | visit_id | amount |
+----------------+----------+--------+
| 2              | 5        | 310    |
| 3              | 5        | 300    |
| 9              | 5        | 200    |
| 12             | 1        | 910    |
| 13             | 2        | 970    |
+----------------+----------+--------+
Output: 
+-------------+----------------+
| customer_id | count_no_trans |
+-------------+----------------+
| 54          | 2              |
| 30          | 1              |
| 96          | 1              |
+-------------+----------------+
Explanation: 
Customer with id = 23 visited the mall once and made one transaction during the visit with id = 12.
Customer with id = 9 visited the mall once and made one transaction during the visit with id = 13.
Customer with id = 30 visited the mall once and did not make any transactions.
Customer with id = 54 visited the mall three times. During 2 visits they did not make any transactions, and during one visit they made 3 transactions.
Customer with id = 96 visited the mall once and did not make any transactions.
As we can see, users with IDs 30 and 96 visited the mall one time without making any transactions. Also, user 54 visited the mall twice and did not make any transactions.

# Code
```
# Write your MySQL query statement below
select customer_id, count(*) as count_no_trans 
from Visits v LEFT JOIN Transactions t 
ON v.visit_id = t.visit_id 
where t.transaction_id is null 
group by customer_id
```

# Explanation of the SQL Code
- SELECT v.customer_id, COUNT(*) AS count_no_trans: This selects the customer_id and counts the number of visits without transactions, aliasing the count as count_no_trans.
- FROM Visits v: This specifies the Visits table and assigns it an alias v.
- LEFT JOIN Transactions t ON v.visit_id = t.visit_id: This performs a LEFT JOIN with the Transactions table on the visit_id column.
- WHERE t.transaction_id IS NULL: This condition filters the rows to include only those visits that do not have a corresponding transaction.
- GROUP BY v.customer_id: This groups the results by customer_id to count the number of visits for each customer.

# Detailed Steps
- Alias Tables: Use v and t as aliases for Visits and Transactions, respectively.
- Join Tables: Perform a LEFT JOIN on Visits and Transactions using the visit_id column to include all visits.
- Filter Non-Transactions: Use the WHERE clause to filter visits where transaction_id is null.
- Group and Count: Group the results by customer_id and count the number of non-transactional visits for each customer.
