-- PROBLEM: Count unique entities in dataset
-- PURPOSE: Understand scale of customers, products, and campaigns
-- APPROACH: Use COUNT(DISTINCT ...) for each entity

SELECT 
    (SELECT COUNT(DISTINCT customer_id) FROM customers) AS total_customers,
    (SELECT COUNT(DISTINCT product_id) FROM products) AS total_products,
    (SELECT COUNT(DISTINCT campaign_id) FROM campaigns) AS total_campaigns;