CREATE DATABASE supermarket_analysis;
USE supermarket_analysis;

SELECT *
FROM supermarket_sales ; 

SELECT branch, SUM(Total) AS total_revenue_branch
FROM supermarket_sales
GROUP BY branch 
ORDER BY total_revenue_branch DESC;


SELECT `Product line`,  SUM(Total) AS total_value 
FROM supermarket_sales
GROUP  BY `Product line`
ORDER BY total_value DESC;


SELECT payment, COUNT(Total) AS total
FROM supermarket_sales
GROUP BY payment 
ORDER BY Total DESC ;

SELECT rating,branch,
ROUND (avg(total), 2 ) Total_avg_rating
FROM supermarket_sales
GROUP BY rating, branch 
ORDER BY TOTAL DESC;

SELECT `Customer type`, AVG(Total) Total
FROM supermarket_sales
GROUP BY `Customer type`
ORDER BY Total DESC;


SELECT SUM(Quantity) AS total_quantity_sold
FROM supermarket_sales;

SELECT SUM(total) AS Total_revenue
FROM supermarket_sales;

  
SELECT COUNT(branch)
FROM supermarket_sales ;

ALTER TABLE supermarket_analysis.supermarket_sales
RENAME COLUMN `ï»¿Invoice ID` TO `Invoice ID`;

SELECT
    SUM(Total) / COUNT(DISTINCT `Invoice ID`)
    AS average_transaction_value
FROM supermarket_sales;

SELECT 
    COUNT(DISTINCT `Invoice ID`) AS Transaction_value
FROM
    supermarket_sales;

SELECT COUNT(DISTINCT Branch) AS number_of_branches
FROM supermarket_sales;

SELECT rating, branch, AVG(total) TOTAL
FROM supermarket_sales
GROUP BY rating, branch
ORDER BY TOTAL DESC;

