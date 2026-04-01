-- PROBLEM: Calculate conversion rates between funnel stages
-- PURPOSE: Identify drop-offs in user journey
-- APPROACH: Use conditional aggregation for each stage


SELECT
    COUNT(*) FILTER (WHERE event_type = 'view') AS views,
    COUNT(*) FILTER (WHERE event_type = 'click') AS clicks,
    COUNT(*) FILTER (WHERE event_type = 'cart') AS carts,
    COUNT(*) FILTER (WHERE event_type = 'purchase') AS purchases
FROM events;