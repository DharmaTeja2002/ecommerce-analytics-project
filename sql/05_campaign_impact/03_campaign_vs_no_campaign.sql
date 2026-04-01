-- PROBLEM: Compare revenue from campaign vs non-campaign traffic
-- PURPOSE: Measure campaign impact on revenue
-- APPROACH: Use CASE to separate campaign vs non-campaign


SELECT 
    CASE 
        WHEN campaign_id = '0' OR campaign_id IS NULL THEN 'No Campaign'
        ELSE 'Campaign'
    END AS campaign_type,
    SUM(gross_revenue::NUMERIC) AS total_revenue
FROM transactions
GROUP BY campaign_type;