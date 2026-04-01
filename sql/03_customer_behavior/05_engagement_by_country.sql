-- PROBLEM: Measure user engagement across countries
-- PURPOSE: Identify regions with high activity
-- APPROACH: Join events with customers and group by country


SELECT 
    c.country,
    COUNT(e.event_id) AS total_events
FROM events e
JOIN customers c 
    ON e.customer_id = c.customer_id
GROUP BY c.country
ORDER BY total_events DESC;