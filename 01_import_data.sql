-- Create new database "portfolio_project".alter
-- USE newly created database 'portfolio_project"
-- Load table data into database 'portfolio_project" 

# CREATE DATABASE
CREATE DATABASE portfolio_project;
# USE DATABASE
USE portfolio_project;

# ALLOW ALL DATA TYPES 
SET sql_mode = '';
# TO DELETE TABLE
DROP TABLE portfolio_table;

# CREATE NEW TABLE "portfolio_table" 
CREATE TABLE portfolio_table(
	company VARCHAR (255),
    location VARCHAR (255),
    industry VARCHAR (255),
    total_laid_off VARCHAR (255),
    percentage_laid_off VARCHAR (255),
    `date` VARCHAR (255),
    stage VARCHAR (255),
    country VARCHAR (255),
    funds_raised_millions VARCHAR (255)
);

# IMPORT RAW DATA
LOAD DATA LOCAL INFILE "C:\\Users\\Surface\\Documents\\DATA\\Employee_layoffs\\data\\raw_layoffs.csv"
INTO TABLE portfolio_table
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES  TERMINATED BY '\n'
IGNORE 1 ROWS;

# NEWLY IMPORTED TABLE
SELECT *
FROM portfolio_table
LIMIT 3000;
