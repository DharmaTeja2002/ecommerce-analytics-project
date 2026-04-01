-- PROBLEM: Calculate revenue contribution by product category
-- PURPOSE: Identify top-performing categories
-- APPROACH: Join transactions with products and group by category


SELECT 
    p.category,
    SUM(t.gross_revenue) AS total_revenue
FROM transactions t
JOIN products p 
    ON t.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;