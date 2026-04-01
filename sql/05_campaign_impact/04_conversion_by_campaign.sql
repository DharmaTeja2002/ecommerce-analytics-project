-- PROBLEM: Measure conversion performance per campaign
-- PURPOSE: Identify high-performing campaigns
-- APPROACH: Join events and campaigns, calculate purchase rate

SELECT 
    c.campaign_id,
    COUNT(*) FILTER (WHERE e.event_type = 'view') AS views,
    COUNT(*) FILTER (WHERE e.event_type = 'purchase') AS purchases,
    
    COUNT(*) FILTER (WHERE e.event_type = 'purchase') * 100.0 /
    NULLIF(COUNT(*) FILTER (WHERE e.event_type = 'view'), 0) 
    AS conversion_rate

FROM events e
JOIN campaigns c 
    ON e.campaign_id = c.campaign_id
GROUP BY c.campaign_id
ORDER BY conversion_rate DESC;