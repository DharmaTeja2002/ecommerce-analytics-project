-- PROBLEM: Calculate cumulative revenue over time
-- PURPOSE: Track business growth trend
-- APPROACH: Use SUM() with OVER() ordered by time


SELECT 
    transaction_time,
    SUM(gross_revenue::NUMERIC) AS daily_revenue,
    
    SUM(SUM(gross_revenue::NUMERIC)) 
    OVER (ORDER BY transaction_time) AS running_total

FROM transactions
GROUP BY transaction_time
ORDER BY transaction_time;