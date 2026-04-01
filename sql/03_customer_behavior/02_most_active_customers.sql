-- PROBLEM: Identify most active users
-- PURPOSE: Find highly engaged users for targeting
-- APPROACH: Rank customers by event count


SELECT 
    customer_id,
    COUNT(*) AS total_events
FROM events
GROUP BY customer_id
ORDER BY total_events DESC
LIMIT 20;