-- PROBLEM: Identify drop-offs between funnel stages
-- PURPOSE: Understand where users leave the funnel
-- APPROACH: Compare counts between stages


SELECT
    COUNT(*) FILTER (WHERE event_type = 'view') AS views,
    COUNT(*) FILTER (WHERE event_type = 'click') AS clicks,
    COUNT(*) FILTER (WHERE event_type = 'cart') AS carts,
    COUNT(*) FILTER (WHERE event_type = 'purchase') AS purchases,

    (COUNT(*) FILTER (WHERE event_type = 'view') -
     COUNT(*) FILTER (WHERE event_type = 'click')) AS drop_view_to_click,

    (COUNT(*) FILTER (WHERE event_type = 'click') -
     COUNT(*) FILTER (WHERE event_type = 'cart')) AS drop_click_to_cart,

    (COUNT(*) FILTER (WHERE event_type = 'cart') -
     COUNT(*) FILTER (WHERE event_type = 'purchase')) AS drop_cart_to_purchase

FROM events;