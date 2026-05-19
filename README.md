# Healthcare Patient Analysis

## What this project is about
I analysed a dataset of 55,500 hospital patient records 
to understand admission patterns, treatment costs and 
clinical outcomes. The goal was to answer real business 
questions a hospital manager would ask.

## Tools I used
- SQL (SSMS) — to query and analyse the raw data
- Power BI — to build an interactive dashboard
- Excel — for initial data exploration

## About the dataset
The dataset contains 55,500 patient records with 15 columns 
including age, medical condition, admission type, billing 
amount and test results. I sourced it from Kaggle.

## What I found
- Arthritis and Diabetes are the most common conditions 
  with around 9,300 patients each
- 82% of patients are aged 30 and above — the hospital 
  primarily serves a middle aged to elderly population
- 1 in 3 patients has abnormal test results — Arthritis 
  patients show the highest rate at 34.3%
- Emergency, Elective and Urgent admissions are almost 
  equally split at around 33% each
- Obesity patients have the highest average treatment 
  cost at $25,805
- Patients under 30 cost significantly less to treat 
  at $5,578 average — 78% less than older patients

## Dashboard
![Dashboard](dashboard_screenshot.png)

## SQL queries
I wrote 5 queries to answer specific business questions 
including window functions for percentage calculations 
and CASE WHEN for age group segmentation.

## Files in this repository
- healthcare_queries.sql — all 5 SQL queries
- Healthcare_Patient_Analysis.pbix — Power BI dashboard
