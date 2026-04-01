-- PROBLEM: Calculate total revenue generated
-- PURPOSE: Understand overall business performance
-- APPROACH: Aggregate gross_revenue from transactions


SELECT 
    SUM(gross_revenue) AS total_revenue
FROM transactions;