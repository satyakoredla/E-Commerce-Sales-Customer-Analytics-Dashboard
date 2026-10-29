--TO PRINT OR SHOW ENTIRE SHEET
SELECT * FROM superstore

--TO SELECT ONLY 5 ROWS
SELECT * FROM superstore
limit 5

--DISPLAY ONLY CUSTOMER NAME
SELECT "Customer Name" FROM superstore

--DISPLAY CUSTOMER NAME AND SALES
SELECT "Customer Name", "Sales" FROM superstore

--CUSTOMERS WITH SALES GREATER THAN 500
SELECT "Sales" FROM superstore
WHERE "Sales">500

--FURNITURE CATEGORY ONLY
SELECT "Category" FROM superstore
WHERE "Category"='Furniture'

--Sort Sales Highest First
SELECT "Sales" FROM superstore
ORDER BY "Sales" desc

--Top 10 Highest Sales
SELECT "Customer Name", "Sales" FROM superstore
ORDER BY "Sales" DESC
LIMIT 10;

--COUNT TOTAL ORDERS
SELECT COUNT(*) FROM superstore

--SUM COUNT OF TOTAL SALES
SELECT SUM("Sales")as Total_count FROM superstore

--AVG COUNT OF TOTAL SALES
SELECT AVG("Sales")as Average_count FROM superstore

--MAX COUNT OF TOTAL SALES
SELECT MAX("Sales")as Maximum_count FROM superstore

--MIN OF TOTAL SALES
SELECT MIN("Sales")as Minimum_count FROM superstore

--TOTAL SALES BY CATEGORY
SELECT "Category", SUM("Sales") from superstore
  GROUP BY"Category"

--AVERAGE PROFIT BY CATEGORY
SELECT "Category",avg("Profit") from superstore
GROUP BY "Category"

--NUMBER OF ORDERS IN EACH REGION
SELECT "Region",count(*) From superstore
GROUP BY "Region"

--TOTAL PROFIT BY REGION
SELECT "Region",sum("Profit") from superstore
GROUP BY "Region"

--HIGHEST SALES CATEGORY
SELECT "Category",sum("Sales") AS Total_sales from superstore
GROUP BY "Category"
ORDER BY Total_sales desc

