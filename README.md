# customer_orders_retention-powerbi
This project encompasses cohort-based retention analysis, sales trend visualization, and key performance insights to inform strategic business decisions.​

This repository contains the SQL queries, Power BI visualizations. The goal was to analyze customer orders, payments, and retention trends using SQL and visualize key insights using Power BI.

Files Included
customer_orders.csv – Order data.
payments.csv – Payment data.
SQL_Queries.sql – All queries used for analysis.
PowerBI_Report.pbix – Dashboard with 9 visuals.
Summary_of_Findings.pdf – Final report.


Analysis Approach

1. Order and Sales Analysis
Extracted monthly order trends using SQL.
Analyzed order_status to determine fulfillment efficiency.
Aggregated sales by order_date to identify revenue trends.

2. Customer Analysis
Identified repeat vs one-time customers.
Grouped customer orders to observe behavioral patterns.
Segmented users by their first order month (cohort analysis).

3. Payment Status Analysis
Joined payments.csv with orders.
Counted successful vs failed transactions.
Identified patterns in payment failures.

4. Order Details Report
Created a flat view joining order + payment + customer behavior data.
Included key columns: customer_id, order_id, order_date, order_status, order_amount, payment_status.

Tools Used

- SQL (MSSQL-MSBI)
- Power BI for data modeling and dashboards
