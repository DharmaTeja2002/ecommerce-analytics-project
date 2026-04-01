-- PROBLEM: Calculate number of events before a purchase
-- PURPOSE: Understand user journey length
-- APPROACH: Join events and transactions by customer_id


SELECT 
    t.customer_id,
    COUNT(e.event_id) AS total_events_before_purchase
FROM transactions t
JOIN events e 
    ON t.customer_id = e.customer_id
GROUP BY t.customer_id
ORDER BY total_events_before_purchase DESC
LIMIT 20;