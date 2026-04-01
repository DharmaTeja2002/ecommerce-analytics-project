-- PROBLEM: Calculate revenue generated per campaign
-- PURPOSE: Evaluate campaign effectiveness
-- APPROACH: Join transactions with campaigns and aggregate revenue


SELECT 
    c.campaign_id,
    c.channel,
    SUM(t.gross_revenue::NUMERIC) AS total_revenue
FROM transactions t
JOIN campaigns c 
    ON t.campaign_id = c.campaign_id
GROUP BY c.campaign_id, c.channel
ORDER BY total_revenue DESC;