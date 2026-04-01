E-Commerce Analytics Project (SQL + Python)

Project Overview

This project demonstrates an end-to-end data analytics workflow using:

PostgreSQL (SQL) → Data storage, cleaning, and analysis
Python (Pandas, Matplotlib, Seaborn) → Visualization and insight generation

The dataset simulates a real-world e-commerce platform, including:

* Customers
* Products
* Campaigns
* User events (view, click, cart, purchase)
* Transactions

Dataset Source: https://www.kaggle.com/datasets/geethasagarbonthu/marketing-and-e-commerce-analytics-dataset

🎯 Objectives

* Perform Exploratory Data Analysis (EDA) using SQL
* Understand customer behavior and funnel conversion
* Analyze revenue, products, and campaign performance
* Visualize insights using Python


Why SQL + Python Together?

| SQL                            | Python                       |
| ------------------------------ | ---------------------------- |
| Handles large data efficiently | Creates visual insights      |
| Performs joins & aggregations  | Builds charts & storytelling |
| Works at database level        | Works at presentation level  |

1. SQL = Data Processing Engine
2. Python = Insight & Visualization Layer



🔄 Project Workflow

Raw CSV Data
↓
PostgreSQL (Data Storage + SQL Analysis)
↓
SQL Queries (Joins, Aggregations, Window Functions)
↓
Python (Pandas)
↓
Visualization (Seaborn / Matplotlib)
↓
Business Insights



📂 Project Structure

ecommerce-analytics-project/
│
├── sql/
│   ├── 00_schema/
│   ├── 01_data_overview/
│   ├── 02_revenue_analysis/
│   ├── 03_customer_behavior/
│   ├── 04_funnel_analysis/
│   ├── 05_campaign_impact/
│   ├── 06_advanced_window_analysis/
│
├── notebooks/
│   └── eda_analysis.ipynb
│
├── data/
│   └── .csv
│
└── README.md


🔍 Key Analysis Performed

📊 Data Overview

* Row counts and dataset validation
* Date range analysis
* Null value inspection

💰 Revenue Analysis

* Total revenue
* Revenue by category and country
* Top products and customers

👤 Customer Behavior

* Most active users
* Event frequency analysis
* Customer segmentation

🔄 Funnel Analysis

* View → Click → Cart → Purchase flow
* Conversion rates
* Drop-off analysis

📢 Campaign Impact

* Revenue by campaign and channel
* Campaign vs non-campaign comparison
* Conversion by campaign

⚡ Advanced SQL

* Window functions (RANK, ROW_NUMBER)
* Running totals
* Product vs category comparisons


📈 Python Visualizations

* Revenue by category
* Revenue trends over time
* Funnel analysis charts
* Customer segmentation
* Campaign performance
* Heatmaps (category vs country)


⚠️ Challenges Faced & Solutions

🔴 1. Data Type Mismatch

Problem: Revenue and timestamps stored as TEXT
Solution: Converted using CAST and to_timestamp()
Learning: Always separate ingestion and transformation


🔴 2. Join Failures (product_id mismatch)

Problem: 1004.0 vs 1004
Solution: Casted using ::FLOAT::INT
Learning: Normalize keys before joins


🔴 3. Foreign Key Issues

Problem: Invalid campaign_id = 0
Solution: Removed constraints during ingestion
Learning: Load first, validate later

🧠 Key Insights

* High drop-off observed in funnel → optimization opportunity
* Certain categories drive most revenue
* Campaigns significantly impact conversion
* Few customers contribute major revenue (Pareto effect)


🛠️ Tech Stack

Database: PostgreSQL
Languages: SQL, Python
Libraries: Pandas, Matplotlib, Seaborn
Tools: pgAdmin, Jupyter Notebook


📌 How to Run

1. Load dataset into PostgreSQL
2. Run SQL queries from /sql folder
3. Open Jupyter Notebook
4. Connect to database
5. Run visualization queries


💡 Conclusion

This project demonstrates:

* Strong SQL fundamentals
* Real-world data handling
* Business-oriented analysis
* End-to-end data workflow

🙌 Author
Ailla Dharma Teja Goud