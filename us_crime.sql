-- creating database conatining case_number, primary_type, description, location_description, arrest
CREATE DATABASE USCRIME;
-- use databasedata_science_team
USE USCRIME;
-- count values in database
SELECT COUNT(*) FROM crime_2ndus;
-- return those data where primary_type is theft and description is over$500
SELECT * FROM crime_2ndus WHERE `Primary Type` = "THEFT" AND `Description` = "OVER $500";
-- create a table which contain crime theft over $500
CREATE TABLE crime_theft_over_500 AS SELECT * FROM crime_2ndus WHERE `Primary Type` = "THEFT" AND `Description` = "OVER $500";
-- count all values in crime over theft 500
SELECT COUNT(*) FROM crime_theft_over_500;
-- determin overall number of cases
SELECT `Primary Type`, COUNT(*) AS Total FROM crime_theft_over_500 GROUP BY `Primary Type`;
SELECT `Primary Type`, COUNT(*) AS Total FROM crime_theft_over_500 GROUP BY `Primary Type` ORDER BY Total DESC;
