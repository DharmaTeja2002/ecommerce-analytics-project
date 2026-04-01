-- PROBLEM: Calculate conversion percentage from view → purchase
-- PURPOSE: Measure overall funnel efficiency
-- APPROACH: Divide purchases by views


SELECT 
    COUNT(*) FILTER (WHERE event_type = 'purchase') * 100.0 /
    NULLIF(COUNT(*) FILTER (WHERE event_type = 'view'), 0) 
    AS conversion_rate_percentage
FROM events;