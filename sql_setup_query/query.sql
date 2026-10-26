CREATE DATABASE ecommerce;

USE ecommerce;
SELECT 'customers' AS table_name, COUNT(*) AS total_rows FROM customers
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items;

SELECT COUNT(*) 
FROM (SELECT DISTINCT customer_city FROM customers) AS t;

SELECT count(DISTINCT customer_city) FROM customers AS total_count;