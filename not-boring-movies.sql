Table: Cinema
+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| id             | int      |
| movie          | varchar  |
| description    | varchar  |
| rating         | float    |
+----------------+----------+
id is the primary key (column with unique values) for this table.
Each row contains information about the name of a movie, its genre, and its rating.
rating is a 2 decimal places float in the range [0, 10]
Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
Return the result table ordered by rating in descending order.
The result format is in the following example.
Example 1:
Input: 
Cinema table:
+----+------------+-------------+--------+
| id | movie      | description | rating |
+----+------------+-------------+--------+
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |
+----+------------+-------------+--------+
Output: 
+----+------------+-------------+--------+
| id | movie      | description | rating |
+----+------------+-------------+--------+
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |
+----+------------+-------------+--------+
Explanation: 
We have three movies with odd-numbered IDs: 1, 3, and 5. The movie with ID = 3 is boring so we do not include it in the answer.



# Code
```
# Write your MySQL query statement below
select * from cinema
where id%2 != 0 and description != 'boring'
order by rating desc;
```

# Explanation of the SQL Code
- *SELECT* This selects all columns from the *cinema* table.
- FROM cinema: This specifies the cinema* table.
- WHERE id % 2 O: This condition filters the rows to include only those where the *id* is odd.
- AND description 'boring': This further filters the rows to exclude those where the 'description' is 'boring'.
- ORDER BY rating DESC: This orders the filtered results by the *rating* column in descending order.
