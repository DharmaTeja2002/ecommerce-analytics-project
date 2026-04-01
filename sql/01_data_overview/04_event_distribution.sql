-- PROBLEM: Analyze distribution of user events
-- PURPOSE: Understand user behavior across funnel stages
-- APPROACH: Group by event_type and count occurrences


SELECT 
    event_type,
    COUNT(*) AS total_events
FROM events
GROUP BY event_type
ORDER BY total_events DESC;