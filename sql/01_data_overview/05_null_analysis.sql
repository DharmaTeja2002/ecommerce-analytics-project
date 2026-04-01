-- PROBLEM: Identify missing values in key columns
-- PURPOSE: Detect data quality issues that may affect joins and analysis
-- APPROACH: Use COUNT with FILTER to count NULL values


SELECT 
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS null_customer_id,
    COUNT(*) FILTER (WHERE product_id IS NULL) AS null_product_id,
    COUNT(*) FILTER (WHERE campaign_id IS NULL) AS null_campaign_id,
    COUNT(*) FILTER (WHERE gross_revenue IS NULL) AS null_revenue
FROM transactions;