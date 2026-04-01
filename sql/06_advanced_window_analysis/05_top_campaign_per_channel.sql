-- PROBLEM: Identify best campaign within each channel
-- PURPOSE: Optimize marketing strategy per channel
-- APPROACH: Use ROW_NUMBER() partitioned by channel


SELECT *
FROM (
    SELECT 
        c.channel,
        c.campaign_id,
        SUM(t.gross_revenue::NUMERIC) AS total_revenue,
        
        ROW_NUMBER() OVER (
            PARTITION BY c.channel 
            ORDER BY SUM(t.gross_revenue::NUMERIC) DESC
        ) AS rank

    FROM transactions t
    JOIN campaigns c 
        ON t.campaign_id = c.campaign_id

    GROUP BY c.channel, c.campaign_id
) ranked
WHERE rank = 1;