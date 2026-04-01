-- PROBLEM: Calculate revenue distribution across countries
-- PURPOSE: Identify strong geographic markets
-- APPROACH: Join transactions with customers and group by country


SELECT 
    c.country,
    SUM(t.gross_revenue) AS total_revenue
FROM transactions t
JOIN customers c 
    ON t.customer_id = c.customer_id
GROUP BY c.country
ORDER BY total_revenue DESC;