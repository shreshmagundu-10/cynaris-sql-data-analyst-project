
-- ==================================================
-- CYNARIS SOLUTIONS - DATA ANALYST INTERNSHIP
-- Week 1 - Day 1: SQL Fundamentals
-- Dataset: SQL Fundamentals Mini Sales Database
-- Topics: SELECT, FROM, WHERE and Operators
-- ==================================================


-- QUERY 1: Display all customer records
SELECT *
FROM Customers;


-- QUERY 2: Display selected customer information
SELECT customer_id, customer_name, city
FROM Customers;


-- QUERY 3: Find customers from Hyderabad
SELECT *
FROM Customers
WHERE city = 'Hyderabad';


-- QUERY 4: Find customers from Mumbai with Silver loyalty tier
SELECT *
FROM Customers
WHERE city = 'Mumbai'
AND loyalty_tier = 'Silver';


-- QUERY 5: Find customers from Mumbai or Chennai
SELECT *
FROM Customers
WHERE city = 'Mumbai'
OR city = 'Chennai';


-- QUERY 6: Find products that are NOT in Furniture category
SELECT *
FROM Products
WHERE NOT category = 'Furniture';


-- QUERY 7: Find customers whose names start with A
SELECT *
FROM Customers
WHERE customer_name LIKE 'A%';


-- QUERY 8: Find products in Electronics or Furniture categories
SELECT *
FROM Products
WHERE category IN ('Electronics', 'Furniture');


-- QUERY 9: Find products with prices between 1000 and 5000
SELECT *
FROM Products
WHERE unit_price BETWEEN 1000 AND 5000;


-- QUERY 10: Find customers with missing loyalty tier
SELECT *
FROM Customers
WHERE loyalty_tier IS NULL;


-- END OF WEEK 1 - DAY 1 SQL QUERIES
