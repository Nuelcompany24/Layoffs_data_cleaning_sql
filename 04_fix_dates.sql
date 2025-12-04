-- FIX DATES
-- PURPOSE IS TO STANDARDIZE DATES TO SINGLE FORMAT

# SELECT AND VIEW ALL ROWS__1993 ROWS RETURNED
SELECT *
FROM portfolio_table
LIMIT 3000;

# CHECK THE TYPE OF VELUE IN `date` COLUMN__'varchar(255)'
SHOW COLUMNS 
FROM portfolio_table LIKE 'date';

# SELECT `date` IN UNIFORM `date` FORMAT
SELECT `date`, STR_TO_DATE(`date`, '%d/%m/%y')
FROM portfolio_table;

# CHANGE `date` TO UNIFORM `date` FORMAT
UPDATE portfolio_table
SET `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

# CHANGE `date` TYPE TO date__1993 ROWS AFFECTED
ALTER TABLE portfolio_table
MODIFY COLUMN `date` DATE;
