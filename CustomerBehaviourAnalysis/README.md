Customer behaviour Analysis Project

Overview

This project analyzes customer behaviour patterns within an e-commerce dataset to uncover actionable insights for business strategies.

Dataset

Source: E-commerce Customer behaviour Dataset (from https://www.kaggle.com/datasets/uom190346a/e-commerce-customer-behavior-dataset)
Preprocessing: Column names were edited to remove spaces for smoother SQL querying (e.g., "Customer ID" became "Customer_ID").
Key Columns:
Customer_ID
Gender
Age
City
Membership_Type (Gold, Silver, Bronze)
Total_Spend
Items_Purchased
Days_Since_Last_Purchase
Key Questions

How many unique customers are in the dataset, and how are they distributed across genders?
Which cities have the highest customer concentration?
How does average spending differ across genders and membership tiers?
Are there distinct city preferences based on gender?
What are the repeat purchase rates for each membership tier?
How do spending preferences (high vs. low) distribute across genders?
SQL Queries

See attached queries.sql file for detailed queries
Results & Insights

Total Customers: 350 unique customers.
Gender Balance: Perfectly balanced distribution between female and male customers (50/50 split).
City Concentration: Significant customer concentration in major cities (New York, Los Angeles, San Francisco, Chicago, Houston).
Gender Spending Gap: Female customers demonstrated lower average spending compared to male customers.
Tiered Spending: Gold tier customers exhibit significantly higher average spending compared to Silver and Bronze.
City & Gender: Top cities show differences based on gender (e.g., male customers favor San Francisco, Miami).
Strong Retention: All membership tiers show good repeat purchase rates, with the Gold tier exhibiting the highest.
Spending Preferences: Both men and women distribute similarly across 'High Spend' and 'Low Spend' categories.
Next Steps

Expand Beyond Top Cities: Develop marketing strategies to attract customers outside the current major hubs.
Understanding the Gender Gap: Investigate factors behind the lower average spending by female customers.
Optimize Membership Tiers: Analyze Gold tier benefits to potentially adapt for Silver and Bronze tiers to encourage upgrades.
Data Enrichment: If possible, consider adding product category data and order dates to deepen analysis.
Contact

Joshua Amade
Customer Behaviour Analysis on E-commerce Dataset
joshamade35@gmail.com