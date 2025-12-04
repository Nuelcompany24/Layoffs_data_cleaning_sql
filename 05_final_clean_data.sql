-- FINAL_CLEAN_DATA
-- VIEW FINAL CLEANED DATA

# SELECT AND VIEW ALL ROWS
SELECT *
FROM portfolio_table;

# COUNT ALL ROWS OF CLEANED DATA__1 ROW RETURNED 
SELECT COUNT(*)
FROM portfolio_table;

# SELECT SUM OF 'total_laid_off' PER COMPANY
SELECT company, SUM(total_laid_off), COUNT(*)
FROM portfolio_table
GROUP BY company;

# SELECT COMPANY AND SUM OF "total_laid_off" PER COMPANY
SELECT company, SUM(total_laid_off) Sum_p
FROM portfolio_table
WHERE YEAR(`date`) = 2022
GROUP BY company
ORDER BY Sum_p DESC;

# SELECT SUM OF 'total_laid_off' IN YEAR 2023
SELECT company, SUM(total_laid_off) Sum_p
FROM portfolio_table
WHERE YEAR(`date`) = 2023
GROUP BY company;