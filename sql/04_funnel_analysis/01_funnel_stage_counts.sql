-- PROBLEM: Count number of events at each funnel stage
-- PURPOSE: Understand user flow through product funnel
-- APPROACH: Group events by event_type


SELECT 
    event_type,
    COUNT(*) AS total_events
FROM events
GROUP BY event_type
ORDER BY total_events DESC;