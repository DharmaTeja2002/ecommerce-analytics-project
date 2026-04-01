-- PROBLEM: Get total number of rows in each table
-- PURPOSE: Understand dataset size and validate data completeness
-- APPROACH: Use COUNT(*) on each table and combine using UNION ALL

SELECT 'customers' AS table_name, COUNT(*) AS total_rows FROM customers
UNION ALL
SELECT 'campaigns', COUNT(*) FROM campaigns
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'events', COUNT(*) FROM events
UNION ALL
SELECT 'transactions', COUNT(*) FROM transactions;