-- PROBLEM: Analyze funnel behavior per product category
-- PURPOSE: Identify which categories convert better
-- APPROACH: Join events with products and group by category


SELECT 
    p.category,
    COUNT(*) FILTER (WHERE e.event_type = 'view') AS views,
    COUNT(*) FILTER (WHERE e.event_type = 'purchase') AS purchases,
    
    COUNT(*) FILTER (WHERE e.event_type = 'purchase') * 100.0 /
    NULLIF(COUNT(*) FILTER (WHERE e.event_type = 'view'), 0) 
    AS conversion_rate

FROM events e
JOIN products p 
    ON e.product_id::FLOAT::INT = p.product_id::INT
GROUP BY p.category
ORDER BY conversion_rate DESC;