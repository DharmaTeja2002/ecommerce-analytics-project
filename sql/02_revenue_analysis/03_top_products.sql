-- PROBLEM: Identify top 10 products by revenue
-- PURPOSE: Find high-performing products for business focus
-- APPROACH: Aggregate revenue per product and sort descending

SELECT 
    p.product_id,
    p.category,
    SUM(t.gross_revenue) AS total_revenue
FROM transactions t
JOIN products p 
    ON t.product_id = p.product_id
GROUP BY p.product_id, p.category
ORDER BY total_revenue DESC
LIMIT 10;