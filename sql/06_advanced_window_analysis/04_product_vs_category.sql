-- PROBLEM: Compare product revenue with category average
-- PURPOSE: Identify outperforming or underperforming products
-- APPROACH: Use window function AVG() partitioned by category


SELECT 
    p.product_id,
    p.category,
    SUM(t.gross_revenue::NUMERIC) AS product_revenue,
    
    AVG(SUM(t.gross_revenue::NUMERIC)) 
    OVER (PARTITION BY p.category) AS category_avg_revenue

FROM transactions t
JOIN products p 
    ON t.product_id::INT = p.product_id::INT
GROUP BY p.product_id, p.category;