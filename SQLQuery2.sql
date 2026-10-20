select *
from cleaned_telco_churn_v2


SELECT
    COLUMN_NAME,
    DATA_TYPE,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'cleaned_telco_churn_v2'
ORDER BY ORDINAL_POSITION;


--Churn Rate by Internet Service Type
SELECT 
    internet_service,
    ROUND(AVG(CAST(churn AS FLOAT)) * 100, 2) AS churn_rate_percentage
FROM 
    cleaned_telco_churn_v2
GROUP BY 
    internet_service
ORDER BY 
    churn_rate_percentage DESC;

--High-Value Customer Churn

SELECT 
    COUNT(customerid) AS high_value_churners,
    ROUND(SUM(CAST(monthly_charges AS FLOAT)), 2) AS monthly_revenue_lost
FROM 
    cleaned_telco_churn_v2
WHERE 
    CAST(churn AS INT) = 1 
    AND CAST(cltv AS FLOAT) > (SELECT AVG(CAST(cltv AS FLOAT)) FROM cleaned_telco_churn_v2);

    
    --Average Tenure of Churned vs. Active Customers

    SELECT 
    churn,
    ROUND(AVG(CAST(tenure_months AS FLOAT)), 1) AS avg_tenure_months
FROM 
    cleaned_telco_churn_v2
GROUP BY 
    churn;



--Impact of Tech Support on Retention

SELECT 
    tech_support,
    ROUND(AVG(CAST(churn AS FLOAT)) * 100, 2) AS churn_rate_percentage
FROM 
    cleaned_telco_churn_v2
GROUP BY 
    tech_support
ORDER BY 
    churn_rate_percentage DESC;


--Revenue Loss by Payment Method

SELECT 
    payment_method,
    ROUND(SUM(CAST(monthly_charges AS FLOAT)), 2) AS revenue_lost
FROM 
    cleaned_telco_churn_v2
WHERE 
    CAST(churn AS INT) = 1
GROUP BY 
    payment_method
ORDER BY 
    revenue_lost DESC;


--Active Monthly Recurring Revenue (MRR)

SELECT 
    ROUND(SUM(CAST(monthly_charges AS FLOAT)), 2) AS active_mrr
FROM 
    cleaned_telco_churn_v2
WHERE 
    CAST(churn AS INT) = 0;


--Senior Citizen Churn Behavior

SELECT 
    senior_citizen,
    ROUND(AVG(CAST(churn AS FLOAT)) * 100, 2) AS churn_rate_percentage,
    COUNT(customerid) AS total_customers
FROM 
    cleaned_telco_churn_v2
GROUP BY 
    senior_citizen;

--Family Dependency and Loyalty

SELECT 
    dependents,
    ROUND(AVG(CAST(churn AS FLOAT)) * 100, 2) AS churn_rate_percentage
FROM 
    cleaned_telco_churn_v2
GROUP BY 
    dependents;


--Paperless Billing Risk

SELECT 
    paperless_billing,
    ROUND(AVG(CAST(churn AS FLOAT)) * 100, 2) AS churn_rate_percentage
FROM 
    cleaned_telco_churn_v2
GROUP BY 
    paperless_billing;


--Validating the Churn Score (Predictive Accuracy)

SELECT 
    churn,
    ROUND(AVG(CAST(churn_score AS FLOAT)), 1) AS avg_churn_score
FROM 
    cleaned_telco_churn_v2
GROUP BY 
    churn;


