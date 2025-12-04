Layoffs Dataset – Data Cleaning Portfolio Project (SQL)
Project Title: World Layoffs Data Cleaning in MySQL
Objective: Transform a raw, messy layoffs dataset into a clean, analysis-ready table using only SQL – no Python, no Excel for cleaning (only for preview).This project demonstrates professional-grade data cleaning skills that are directly transferable to real-world data analyst and data engineer roles.Tools UsedMySQL (or MySQL Workbench / DBeaver)
Excel / Google Sheets – only for initial data exploration
Git & GitHub – version control and showcase

DatasetSource: Layoffs.fyi + Kaggle (AlexTheAnalyst’s version)
Rows in raw data: ~2,400
Columns: company, location, industry, total_laid_off, percentage_laid_off, date, stage, country, funds_raised_millionsProject Structure

layoffs-cleaning-project/
├── data/
│   ├── raw_layoffs.csv              # Original untouched file
│   └── layoffs_cleaned_final.csv    # Final exported clean data
├── sql/
│   ├── 01_create_staging_table.sql
│   ├── 02_remove_duplicates.sql
│   ├── 03_standardize_data.sql
│   ├── 04_handle_nulls_and_blanks.sql
│   └── 05_final_clean_table.sql
├── documentation/
│   └── data_issues_found.md        # Detailed log of problems discovered
└── README.md

Key Cleaning Steps Performed (100% in SQL)Step
Action Taken
1. Duplicate Removal
Identified & removed 100% of duplicate rows using ROW_NUMBER() window function
2. Text Standardization
TRIM(), proper capitalization, fixed spelling (e.g., "CryptoCurrency" → "Crypto")
3. Company Name Cleanup
Removed trailing spaces & common suffixes ("Inc.", "LLC", "GmbH") for consistency
4. Country Standardization
Removed "United States." → "United States", fixed trailing spaces
5. Date Format Fix
Converted text dates to proper DATE type (STR_TO_DATE)
6. Null & Blank Handling
Converted empty strings ('') to NULL; populated missing industries where possible
7. Column Cleanup
Removed completely empty column; dropped temporary helper columns
8. Final Clean Table
Created final analysis-ready table: layoffs_cleaned


Handled real-world CSV garbage:Loaded raw data into an all-TEXT table first → 0 import warnings
Converted messy text dates safely using STR_TO_DATE + regex checks
Cleaned literal “NULL ” strings that Excel loves to insert
Used proper staging tables (never cleaned on raw data)


Final Dataset Ready For Exploratory Data Analysis (EDA)
Visualization in Tableau / Power BI
Time-series analysis of global layoffs
Industry & country comparisons

