-- PROBLEM: Determine time range of transactions
-- PURPOSE: Understand data coverage period for analysis
-- APPROACH: Use MIN and MAX on transaction_time


SELECT 
    MIN(transaction_time) AS start_date,
    MAX(transaction_time) AS end_date
FROM transactions;