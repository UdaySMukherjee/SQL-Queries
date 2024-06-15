Table: Products
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
product_id is the primary key (column with unique values) for this table.
low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.

Write a solution to find the ids of products that are both low fat and recyclable.
Return the result table in any order.
The result format is in the following example.

 
Example 1:
Input: 
Products table:
+-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+
Output: 
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+
Explanation: Only products 1 and 3 are both low fat and recyclable.



# Code
```
SELECT PRODUCT_ID
FROM PRODUCTS
WHERE LOW_FATS='Y' AND RECYCLABLE='Y';
```

# Explanation of the SQL Code
  
SELECT PRODUCT_ID: This specifies that we want to retrieve the PRODUCT column.
FROM PRODUCTS: This specifies the table from which to retrieve the data.
WHERE LOW FATS - AND RECYCLABLE - Y: This is the condition that filters the rows. It ensures that only products that are both low in fats CLOW_FATS = and recyclable ('RECYCLABLE = Y') are selected.
