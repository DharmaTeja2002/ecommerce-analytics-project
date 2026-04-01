-- PROBLEM: Calculate average revenue per transaction
-- PURPOSE: Understand customer spending behavior
-- APPROACH: Use AVG on gross_revenue


SELECT 
    AVG(gross_revenue) AS avg_order_value
FROM transactions;