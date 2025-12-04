-- 1.5_remove_duplicates.sql
-- REMOVE DUPLICATE DATA 

USE portfolio_project;

# VIEW TABLE
SELECT *
FROM portfolio_table;

# VIEW TOTAL COUNT BY COMPANY 
SELECT *, COUNT(*) OVER (PARTITION BY company)
FROM portfolio_table;

# VIEW NUMBER OF LAYOFF ENTRIES FOR EACH COMPANY
SELECT company, COUNT(*) ASK
FROM portfolio_table
GROUP BY company
ORDER BY ASK DESC
LIMIT 3000;

# VIEW ONLY COMPANIES THAT APPEAR MORE THAN ONCE 
SELECT company, COUNT(*) ASK 
FROM portfolio_project.portfolio_table
GROUP BY company, `date`
HAVING ASK > 1 
ORDER BY ASK DESC;

# COMPARING DUPLICATES
SELECT *
FROM portfolio_table
WHERE company LIKE 'hibob';

# DELETE DUPLICATE ROWS
DELETE 
FROM portfolio_table
WHERE company = 'hibob'
LIMIT 1;
