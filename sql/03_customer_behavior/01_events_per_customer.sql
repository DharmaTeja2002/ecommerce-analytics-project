-- PROBLEM: Count total events per customer
-- PURPOSE: Measure user engagement level
-- APPROACH: Group events by customer_id


SELECT 
    customer_id,
    COUNT(*) AS total_events
FROM events
GROUP BY customer_id
ORDER BY total_events DESC
LIMIT 10;