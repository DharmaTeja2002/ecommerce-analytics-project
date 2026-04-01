-- PROBLEM: Verify that all tables are created and data is loaded correctly
-- PURPOSE: Ensure data ingestion was successful before analysis
-- APPROACH: Check table existence and preview sample data

-- Check all tables
SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public';

-- Preview sample data
SELECT * FROM customers LIMIT 5;
SELECT * FROM campaigns LIMIT 5;
SELECT * FROM products LIMIT 5;
SELECT * FROM events LIMIT 5;
SELECT * FROM transactions LIMIT 5;