Table: Views
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+
There is no primary key (column with unique values) for this table, the table may have duplicate rows.
Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
Note that equal author_id and viewer_id indicate the same person.
  
Write a solution to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order.
The result format is in the following example.

Example 1:
Input: 
Views table:
+------------+-----------+-----------+------------+
| article_id | author_id | viewer_id | view_date  |
+------------+-----------+-----------+------------+
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |
+------------+-----------+-----------+------------+
Output: 
+------+
| id   |
+------+
| 4    |
| 7    |
+------+


# Code
```
# Write your MySQL query statement below
select distinct author_id as id from views
where viewer_id = author_id 
order by id;
```

# Explanation of the SQL Code
•SELECT DISTINCT author_id AS id: This ensures that only unique s are selected and they are aliased as * id*.
•FROM views: This specifies the table from which to retrieve the data.
•WHERE viewer_id = author_id: This condition filters the rows to include only those where the 'viewer id' is the same as the author id'.
•ORDER BY id: This orders the results by the id' column.

# Detailed Steps
1. Filter Records: Use the * WHERE* clause to filter records where * viewer_id' equals
2. Select Distinct Authors: Use the 'SELECT DISTINCT* clause to select unique s.
3. Order the Results: Use the ORDER clause to sort the results by * id'.
