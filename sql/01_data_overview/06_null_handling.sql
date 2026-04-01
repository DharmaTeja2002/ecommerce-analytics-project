-- PROBLEM: Handle NULL values in key columns
-- PURPOSE: Ensure joins and aggregations work correctly
-- APPROACH: Replace or filter NULLs contextually


-- Fix NULL product_id (remove rows)
DELETE FROM transactions
WHERE product_id IS NULL;

DELETE FROM events
WHERE product_id IS NULL;

-- Fix NULL customer_id
DELETE FROM transactions
WHERE customer_id IS NULL;

DELETE FROM events
WHERE customer_id IS NULL;

-- Fix NULL campaign_id → treat as '0' (no campaign)
UPDATE transactions
SET campaign_id = '0'
WHERE campaign_id IS NULL;

UPDATE events
SET campaign_id = '0'
WHERE campaign_id IS NULL;

-- Fix NULL revenue → treat as 0
UPDATE transactions
SET gross_revenue = '0'
WHERE gross_revenue IS NULL;

SELECT 
    COUNT(*) FILTER (WHERE product_id IS NULL) AS null_product_id,
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS null_customer_id,
    COUNT(*) FILTER (WHERE campaign_id IS NULL) AS null_campaign_id,
    COUNT(*) FILTER (WHERE gross_revenue IS NULL) AS null_revenue
FROM transactions;