# Telco-Customer-Churn-Analysis
Telco Customer Churn Analytics using Python, SQL Server, and an interactive HTML dashboard. Includes data cleaning, KPI analysis, business SQL queries, churn drivers, revenue insights, customer segmentation, retention recommendations, and a detailed project report.

# Telco Customer Churn Analytics

## Overview

This project analyzes customer churn for a telecommunications company to identify churn patterns, understand customer behavior, evaluate revenue exposure, and recommend strategies to improve customer retention.

The project follows an end-to-end data analytics workflow, from data exploration and cleaning in Python to SQL-based business analysis, interactive dashboard development using Claude AI, and business reporting.

## Business Objectives

- Measure the overall customer churn rate.
- Identify customer segments with high churn rates.
- Analyze customer behavior across contracts, services, tenure, and payment methods.
- Calculate key performance indicators (KPIs) using SQL Server.
- Evaluate monthly charges associated with churned customers.
- Provide actionable recommendations to support customer retention.

## Dataset

The dataset contains **7,032 customer records and 32 columns** covering customer demographics, services, account information, billing details, and churn status.

Key data fields include:
- Customer ID and demographics
- Tenure and contract type
- Internet and additional services
- Payment method and monthly charges
- Customer lifetime value (CLTV)
- Churn status and recorded churn reasons

*Note: The analysis uses a single dataset snapshot without a reporting date, so time-series churn trends cannot be evaluated.*

## Tools & Technologies

- **Python:** Data loading, data cleaning, exploratory data analysis (EDA), and validation
- **Pandas:** Data manipulation and preprocessing
- **Jupyter Notebook:** Python analysis workflow
- **SQL Server:** Business questions, KPI calculations, aggregations, and customer segmentation
- **Claude AI:** Assistance with interactive HTML dashboard development
- **HTML, CSS, JavaScript, Chart.js:** Dashboard presentation and visualizations
- **Microsoft Excel:** Dataset inspection and review
- **PDF:** Final business analysis report

## Project Workflow

### 1. Data Loading and Exploration
- Imported the dataset into Python using Pandas.
- Examined the dataset structure, column names, data types, and distributions.
- Checked missing values, duplicate records, and customer ID uniqueness.

### 2. Data Cleaning
- Validated data quality and consistency.
- Reviewed redundant columns and churn-related fields.
- Prepared the cleaned dataset for SQL analysis and dashboard development.

### 3. SQL Analysis Using SQL Server
- Developed SQL queries to answer business questions.
- Calculated customer churn and revenue-related KPIs.
- Analyzed churn across contract types, internet services, tenure, and payment methods.
- Identified high-value churned customers and customer segments requiring attention.
- Validated key results against independent Python calculations.

### 4. Interactive Dashboard
- Developed an interactive HTML dashboard with assistance from Claude AI.
- Presented executive KPIs, charts, customer segments, and key findings.
- Included filters and customer-level analysis to explore churn patterns.

### 5. Business Report
- Summarized the business problem, methodology, KPIs, and key findings.
- Presented recommendations for improving customer retention.
- Documented analytical limitations and suggested next steps.

## Dashboard

**Live Dashboard:** [Add your deployed dashboard URL here]

The dashboard presents key churn indicators, customer segments, revenue exposure, and recorded churn reasons through interactive visualizations.

## Key Results

| KPI / Finding | Result |
|---|---:|
| Total Customers | 7,032 |
| Churned Customers | 1,869 |
| Retained Customers | 5,163 |
| Overall Churn Rate | 26.6% |
| Monthly Charges of Churned Customers | $139,131 |
| Active Monthly Charges (Proxy) | $316,530 |
| High-Value Churned Customers | 858 |

### Key Insights

- **Contract Type:** Month-to-month customers had a churn rate of 42.7%, compared with 2.8% for two-year contract customers.
- **Customer Tenure:** Customers with 12 months or less of tenure had a churn rate of 47.7%.
- **Internet Service:** Fiber optic customers had a churn rate of 41.9%.
- **Payment Method:** Electronic check customers had a churn rate of 45.3%.
- **Customer Support:** Customers without tech support had a churn rate of 41.6%.

### Business Recommendations

- Encourage month-to-month customers to consider longer-term contracts.
- Strengthen onboarding and engagement during the first year.
- Review fiber optic pricing, service quality, and competitive offers.
- Evaluate tech support and online security bundles.
- Encourage automatic payment methods through suitable incentives.
- Prioritize high-value churned customers for targeted win-back campaigns.

*Interpretation note: Monthly charges associated with churned customers represent revenue exposure in the dataset, not verified accounting losses. The findings describe associations and do not establish causation.*

## Repository Structure

```text
telco-customer-churn-dashboard/
│
├── data/
│   └── cleaned_telco_churn_v2.csv
│
├── python/
│   └── customer_churn.ipynb
│
├── sql/
│   └── SQLQuery2.sql
│
├── dashboard/
│   └── index.html
│
├── reports/
│   └── Telco_Churn_Analytics_Report.pdf
│
└── README.md
```

*Adjust the filenames and folders to match your actual GitHub repository.*

## How to Run

### Python Analysis
1. Clone or download this repository.
2. Install Python and Jupyter Notebook.
3. Install the required packages:

   ```bash
   pip install pandas numpy matplotlib seaborn jupyter
   ```

4. Open `customer_churn.ipynb` in Jupyter Notebook.
5. Update the dataset path if necessary and run the notebook cells.

### SQL Server Analysis
1. Open SQL Server Management Studio (SSMS).
2. Import or load the cleaned dataset into a SQL Server table.
3. Update the database and table references in `SQLQuery2.sql` if required.
4. Execute the queries to reproduce the business analysis.

### HTML Dashboard
1. Open `dashboard/index.html` in a modern web browser, or visit the deployed GitHub Pages URL.
2. Use the dashboard filters and visualizations to explore churn patterns.
3. An internet connection may be required for externally hosted JavaScript libraries.

### Project Report
Open the PDF in the `reports/` folder to review the detailed analysis, findings, recommendations, and limitations.

## Limitations

- The analysis is based on a single snapshot, with no reporting date for trend analysis.
- Customer segments may overlap, and the analysis does not establish causal relationships.
- CLTV units and the methodology behind the churn score are undocumented.
- Recorded churn reasons represent customer-reported or recorded reasons, not independently verified causes.

## Conclusion

This project demonstrates an end-to-end data analytics workflow using Python, SQL Server, and an interactive HTML dashboard. It translates customer data into measurable KPIs, business insights, and actionable recommendations to support data-driven retention decisions.

## Author

**Data Analytics Portfolio Project**

Skills demonstrated: Data Cleaning, Exploratory Data Analysis, Python, SQL, KPI Development, Business Analysis, Data Visualization, Dashboard Development, and Business Reporting.
