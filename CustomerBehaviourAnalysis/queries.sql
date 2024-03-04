
SELECT COUNT(DISTINCT Customer_ID) AS total_customers
FROM customer_analysis.customer_behaviour;


SELECT Gender, COUNT(*) AS count 
FROM customer_analysis.customer_behaviour
GROUP BY Gender;


SELECT City, COUNT(*) AS count
FROM customer_analysis.customer_behaviour
GROUP BY City
ORDER BY count DESC
LIMIT 10;

SELECT Gender, AVG(Total_Spend) AS avg_spend
FROM customer_analysis.customer_behaviour
GROUP BY Gender;

SELECT Membership_Type, AVG(Total_Spend) AS avg_spend
FROM customer_analysis.customer_behaviour
GROUP BY Membership_Type;

SELECT Gender, City, COUNT(*) AS customer_count
FROM customer_analysis.customer_behaviour
GROUP BY Gender, City 
ORDER BY customer_count DESC
LIMIT 10; 

SELECT Membership_Type, 
       COUNT(DISTINCT Customer_ID) AS total_customers,
       COUNT(DISTINCT CASE WHEN Days_Since_Last_Purchase <= 30 THEN Customer_ID END) AS repeat_customers,
       (COUNT(DISTINCT CASE WHEN Days_Since_Last_Purchase <= 30 THEN Customer_ID END) / COUNT(DISTINCT Customer_ID)) * 100 AS repeat_purchase_rate
FROM customer_analysis.customer_behaviour
GROUP BY Membership_Type;

WITH avg_spend_data AS (
    SELECT AVG(Total_Spend) AS avg_total_spend
    FROM customer_analysis.customer_behaviour
)
SELECT Gender,
       CASE 
           WHEN Total_Spend >= (SELECT avg_total_spend FROM avg_spend_data) THEN 'High Spend'
           ELSE 'Low Spend'
       END AS spending_category,
       COUNT(*) as item_count
FROM customer_analysis.customer_behaviour
GROUP BY Gender, spending_category
ORDER BY item_count DESC;





