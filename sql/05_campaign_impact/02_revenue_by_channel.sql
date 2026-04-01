-- PROBLEM: Analyze revenue contribution by marketing channel
-- PURPOSE: Identify most effective acquisition channels
-- APPROACH: Group revenue by campaign channel


SELECT 
    c.channel,
    SUM(t.gross_revenue::NUMERIC) AS total_revenue
FROM transactions t
JOIN campaigns c 
    ON t.campaign_id = c.campaign_id
GROUP BY c.channel
ORDER BY total_revenue DESC;