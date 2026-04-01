-- PROBLEM: Identify best-performing marketing channel by conversion
-- PURPOSE: Optimize marketing strategy
-- APPROACH: Group by channel and calculate conversion rate


SELECT 
    c.channel,
    COUNT(*) FILTER (WHERE e.event_type = 'view') AS views,
    COUNT(*) FILTER (WHERE e.event_type = 'purchase') AS purchases,
    
    COUNT(*) FILTER (WHERE e.event_type = 'purchase') * 100.0 /
    NULLIF(COUNT(*) FILTER (WHERE e.event_type = 'view'), 0) 
    AS conversion_rate

FROM events e
JOIN campaigns c 
    ON e.campaign_id = c.campaign_id
GROUP BY c.channel
ORDER BY conversion_rate DESC;