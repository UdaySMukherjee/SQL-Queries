Table: Tweets
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| tweet_id       | int     |
| content        | varchar |
+----------------+---------+
tweet_id is the primary key (column with unique values) for this table.
This table contains all the tweets in a social media app.
Write a solution to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.
Return the result table in any order.
The result format is in the following example.
Example 1:
Input: 
Tweets table:
+----------+----------------------------------+
| tweet_id | content                          |
+----------+----------------------------------+
| 1        | Vote for Biden                   |
| 2        | Let us make America great again! |
+----------+----------------------------------+
Output: 
+----------+
| tweet_id |
+----------+
| 2        |
+----------+
Explanation: 
Tweet 1 has length = 14. It is a valid tweet.
Tweet 2 has length = 32. It is an invalid tweet.

  
# Code
```
# Write your MySQL query statement below
select tweet_id from tweets
where LENGTH(content) > 15;
```

# Explanation of the SQL Code
- SELECT tweet_id: This specifies that we want to retrieve the column from the tweets' table.
- FROM tweets: This specifies the table from which to retrieve the data.
- WHERE LENGTH(content) > 15: This condition filters the rows to include only those where the length of content' is greater than 15 characters.
# Detailed Steps
1. Filter Records: Use the 
• WHERE* clause to filter records based on the length of content*.
• LENGTH(content) > 15: This checks if the length of the content* field is greater than 15 characters.
2. Select Tweet IDs: Use the *SELECT' statement to select the *tweet id' of the tweets that meet the condition.
