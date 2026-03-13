# Healthcare Diabetes Risk Analysis

## Project Overview
End-to-end data analysis project to identify key risk factors associated 
with diabetes in patients using a real-world healthcare dataset of 2,768 records.

## Business Problem
Early identification of high-risk diabetic patients can significantly improve 
healthcare outcomes. This project analyses patient health indicators to identify 
patterns and risk profiles that support early intervention decisions.

## Tools Used
- **Microsoft Excel** — Data cleaning and feature engineering
- **MySQL** — Data analysis and insight generation
- **Power BI** — Interactive dashboard and data visualisation

## Data Cleaning (Excel)
- Identified and replaced biologically impossible zero values in Glucose, 
  BloodPressure and BMI columns using mean imputation
- Created AgeGroup column (Young / Middle-Aged / Senior)
- Created BMICategory column (Underweight / Normal / Overweight / Obese)
- Final dataset: 2,768 rows × 12 columns

## Key SQL Insights
- 34.39% of patients tested positive for diabetes (952 out of 2,768)
- Obese patients have 44.69% diabetes rate vs 7% for Normal BMI patients
- Middle-Aged and Senior patients show ~49% diabetes rate vs 20.75% for Young
- 155 high-risk patients identified with Glucose > 140, BMI > 30 and Age > 40
- Average glucose in diabetic patients (142.5) is 28% higher than non-diabetic (111)

## Dashboard Highlights
- KPI Cards: Total Patients, Diabetic Patients, Average Glucose Level
- Donut Chart: Diabetic vs Non-Diabetic patient split
- Bar Charts: Diabetes rate by Age Group and BMI Category
- Scatter Plot: Glucose vs BMI pattern by outcome

## Files in this Repository
- `diabetes_cleaned.xlsx` - Cleaned and enriched dataset
- `diabetes_analysis.sql` - All SQL queries used for analysis
- `Diabetes_Dashboard.pdf` - Final Power BI dashboard export
- `dashboard_screenshot.png` - Dashboard preview
