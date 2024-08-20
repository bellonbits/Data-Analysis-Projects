-- Step 1: Create the database
CREATE DATABASE weather_data;

-- Step 2: Use the newly created database
USE weather_data;

-- Step 3: Create the table structure to match the CSV file
CREATE TABLE weatherdata (
    `Date/Time` TEXT,
    `Temp_C` DOUBLE,
    `Dew Point Temp_C` DOUBLE,
    `Rel Hum_%` INT,
    `Wind Speed_km/h` INT,
    `Visibility_km` DOUBLE,
    `Press_kPa` DOUBLE,
    `Weather` TEXT
);

-- Step 4: Import the CSV data using the MySQL Workbench Table Data Import Wizard

-- Step 5: Run the SQL queries to answer the questions

-- Query 1: Find all records where the weather was exactly clear
SELECT * FROM weatherdata WHERE Weather = 'Clear';

-- Query 2: Find the number of times the wind speed was exactly 4 km/hr
SELECT COUNT(*) FROM weatherdata WHERE `Wind Speed_km/h` = 4;

-- Query 3: Check if there are any NULL values present in the dataset
SELECT * FROM weatherdata WHERE 
    `Date/Time` IS NULL OR
    `Temp_C` IS NULL OR
    `Dew Point Temp_C` IS NULL OR
    `Rel Hum_%` IS NULL OR
    `Wind Speed_km/h` IS NULL OR
    `Visibility_km` IS NULL OR
    `Press_kPa` IS NULL OR
    `Weather` IS NULL;

-- Query 4: Rename the column "Weather" to "Weather_Condition"
ALTER TABLE weatherdata CHANGE COLUMN Weather Weather_Condition TEXT;
