-- Table - 1: customers.csv
CREATE TABLE customers (
    customer_id TEXT PRIMARY KEY,
    signup_date DATE,
    country TEXT,
    age INT,
    gender TEXT,
    loyalty_tier TEXT,
    acquisition_channel TEXT
);

-- Table - 2: campaigns.csv
CREATE TABLE campaigns (
    campaign_id TEXT PRIMARY KEY,
    channel TEXT,
    objective TEXT,
    start_date DATE,
    end_date DATE,
    target_segment TEXT,
    expected_uplift NUMERIC
);

-- Table - 3: products.csv
CREATE TABLE products (
    product_id TEXT PRIMARY KEY,
    category TEXT,
    brand TEXT,
    base_price NUMERIC,
    launch_date DATE,
    is_premium BOOLEAN
);
drop table events;
-- Table - 4: events.csv
CREATE TABLE events (
    event_id TEXT PRIMARY KEY,
    event_time TEXT,
    customer_id TEXT,
    session_id TEXT,
    event_type TEXT,
    product_id TEXT,
    device_type TEXT,
    traffic_source TEXT,
    campaign_id TEXT,
    page_category TEXT,
    session_duration_sec NUMERIC,
    experiment_group TEXT
);

-- Converting Timestamp from Text
ALTER TABLE events
ALTER COLUMN event_time TYPE TIMESTAMP
USING (
    CASE 
        WHEN event_time LIKE '__-__-____%' THEN 
            to_timestamp(event_time, 'DD-MM-YYYY HH24:MI')
        ELSE 
            event_time::timestamp
    END
);

--Table - 5: Transactions.csv
CREATE TABLE transactions (
    transaction_id TEXT PRIMARY KEY,
    transaction_time TEXT,
    customer_id TEXT,
    product_id TEXT,
    quantity INT,
    discount_applie TEXT,
    gross_revenue TEXT,
    campaign_id TEXT,
    refund_flag TEXT
);

ALTER TABLE transactions
ALTER COLUMN gross_revenue TYPE NUMERIC
USING gross_revenue::NUMERIC;

ALTER TABLE events
ALTER COLUMN product_id TYPE INT
USING product_id::FLOAT::INT;