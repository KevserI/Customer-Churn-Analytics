# Customer-Churn-Analytics
End-to-end customer churn analytics pipeline using AWS, dbt, and Power BI
# Customer Churn Analytics Pipeline

## Project Overview
This project is an end-to-end customer churn analytics pipeline built using AWS, dbt, and Power BI.

Raw customer data is stored in Amazon S3, cataloged with AWS Glue, queried in Athena, transformed with dbt, and visualized in Power BI.

## Architecture
S3 → Glue → Athena → dbt → Power BI

## Tech Stack
- AWS S3
- AWS Glue Crawler
- Amazon Athena
- dbt
- Power BI
- SQL

## Data Modeling
The project includes the following layers:

- `stg_customers` → cleaned raw customer data
- `dim_customer_profile` → customer profile attributes
- `fct_customer_status` → financial and behavioral metrics
- `customer_churn_analysis` → final analytics-ready dataset

## Analysis
The project analyzes customer churn across:
- Geography
- Age Group
- Activity Status

## Dashboard
![Dashboard](dashboard/dashboard.png)

## Key Insights
- Churn rate differs across geographies
- Inactive customers are more likely to churn
- Certain age groups show higher churn risk

## Project Structure
```text
my_dbt_project/
├── models/
│   ├── staging/
│   ├── marts/
│   └── analytics/
├── dbt_project.yml

dashboard/
├── customer_churn_dashboard.pbix
└── dashboard.png
