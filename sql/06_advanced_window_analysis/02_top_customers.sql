-- PROBLEM: Identify highest spending customers
-- PURPOSE: Find valuable customers for retention
-- APPROACH: Aggregate revenue and rank customers


SELECT 
    customer_id,
    SUM(gross_revenue::NUMERIC) AS total_spent,
    RANK() OVER (ORDER BY SUM(gross_revenue::NUMERIC) DESC) AS rank
FROM transactions
GROUP BY customer_id
LIMIT 20;