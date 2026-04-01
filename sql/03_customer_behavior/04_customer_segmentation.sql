-- PROBLEM: Segment customers based on activity level
-- PURPOSE: Classify users into low, medium, high engagement
-- APPROACH: Use CASE statement on event count

SELECT 
    customer_id,
    COUNT(*) AS total_events,
    CASE 
        WHEN COUNT(*) < 10 THEN 'Low Activity'
        WHEN COUNT(*) BETWEEN 10 AND 50 THEN 'Medium Activity'
        ELSE 'High Activity'
    END AS activity_segment
FROM events
GROUP BY customer_id
ORDER BY total_events DESC;