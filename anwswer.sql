-- Advanced SQL Queries and Aggregations

-- 1. Calculate the total payment amount
SELECT SUM(amount) AS total_amount
FROM payments;

-- 2. Calculate the average payment amount
SELECT AVG(amount) AS average_amount
FROM payments;

-- 3. Find the highest payment amount
SELECT MAX(amount) AS highest_amount
FROM payments;

-- 4. Find the lowest payment amount
SELECT MIN(amount) AS lowest_amount
FROM payments;

-- 5. Count the total number of payment records
SELECT COUNT(*) AS total_records
FROM payments;

-- 6. Calculate total payment for each customer
SELECT customerNumber, SUM(amount) AS total_payment
FROM payments
GROUP BY customerNumber;

-- 7. Sort customers by total payment from highest to lowest
SELECT customerNumber, SUM(amount) AS total_payment
FROM payments
GROUP BY customerNumber
ORDER BY total_payment DESC;

-- 8. Count shipped orders using conditional aggregation
SELECT
    SUM(CASE
        WHEN status = 'Shipped' THEN 1
        ELSE 0
    END) AS shipped_orders
FROM orders;

-- 9. Retrieve the 5 most expensive products
SELECT productName, buyPrice
FROM products
ORDER BY buyPrice DESC
LIMIT 5;

-- 10. Find the top 5 customers by total payment
SELECT customerNumber, SUM(amount) AS total_amount
FROM payments
GROUP BY customerNumber
ORDER BY total_amount DESC
LIMIT 5;
