-- Create the database
CREATE DATABASE IF NOT EXISTS olist_store;

-- Use the database
USE olist_store;
select * from orders;
select count(*) from orders;

-- ___________________________________________________________________________________________________________________________________________________________________________
-- 1. Weekday Vs Weekend Payment Statistics
-- a. Total orders: Weekday Vs Weekend

SELECT 
    CASE 
        WHEN DAYOFWEEK(order_purchase_timestamp) IN (1,7) THEN 'Weekend'
        ELSE 'Weekday'
    END AS Day_Type,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY Day_Type;
-- This query categorizes orders based on whether they were made on weekdays or weekends and then counts the total number of orders for each category.--


-- b. Average payment value: Weekday Vs Weekend
SELECT 
    CASE 
        WHEN DAYOFWEEK(order_purchase_timestamp) IN (1, 7) THEN 'Weekend'
        ELSE 'Weekday'
    END AS Day_Type,
    ROUND(AVG(payment_value), 2) AS Average_Payment_Value
FROM orders
GROUP BY Day_Type;

-- Selects the day type (Weekend or Weekday) based on the day of the week of the order purchase timestamp.
-- Calculates the average payment value for each day type.
-- Rounds the average payment value to two decimal places.
-- Groups the results by the day type.
-- ___________________________________________________________________________________________________________________________________________________________________________

-- 2. Total Number of Orders with Review Score 5 and Payment Type as Credit Card
SELECT 
    COUNT(*) AS Total_Orders_Review_Score_5_Credit_Card
FROM orders
WHERE review_score = 5 AND payment_type = 'credit_card';

-- Counts the total number of orders with a review score of 5 and payment type as credit card.
-- ___________________________________________________________________________________________________________________________________________________________________________

-- 3. Average Number of Days Taken for Order Delivery (Pet Shop)
SELECT 
    ROUND(AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp))) AS Average_Delivery_Duration_Pet_Shop
FROM orders
WHERE product_category_name = 'pet_shop';

-- Calculate the average delivery duration for orders in the 'pet_shop' category
-- Round the result to the nearest integer
-- DATEDIFF calculates the difference in days between delivery date and purchase date
-- ___________________________________________________________________________________________________________________________________________________________________________

-- 4. Average Price and Payment Values from Customers of Sao Paulo City
SELECT 
    ROUND(AVG(price), 2) AS Average_Price_Sao_Paulo,
    ROUND(AVG(payment_value), 2) AS Average_Payment_Value_Sao_Paulo
FROM orders
WHERE customer_city = 'Sao Paulo';
-- Calculate the average price and payment value for orders from Sao Paulo city
-- Round the average price and payment value to two decimal places
-- Filter the data to include only orders from Sao Paulo city

-- ___________________________________________________________________________________________________________________________________________________________________________
-- 5. Relationship Between Shipping Days Vs Review Scores
SELECT 
    review_score,
    round(AVG(`Shipping Days/Order Fulfillment Time`)) AS Average_Shipping_Days
FROM orders
GROUP BY review_score;
-- Calculates the average shipping days for each review score.

-- ___________________________________________________________________________________________________________________________________________________________________________

-- 6. Top 10 Highest Selling Products
SELECT 
    product_id,
    COUNT(*) AS Total_Sales
FROM orders
GROUP BY product_id
ORDER BY Total_Sales DESC
LIMIT 10;
-- Count total sales for each product, list the top 10 products by total sales

-- ___________________________________________________________________________________________________________________________________________________________________________

-- 7. Top 10 Lowest Selling Products
SELECT 
    product_id,
    COUNT(*) AS Total_Sales
FROM orders
GROUP BY product_id
ORDER BY Total_Sales ASC
LIMIT 10;

-- Count total sales for each product ID
-- Group results by product ID
-- Sort results by total sales in ascending order
-- Limit results to top 10 products with the lowest sales
-- ___________________________________________________________________________________________________________________________________________________________________________

-- 8. Percentage of Orders with Payment Type
SELECT 
    payment_type,
    COUNT(*) AS Total_Orders,
    ROUND((COUNT(*) / (SELECT COUNT(*) FROM orders)) * 100, 2) AS Percentage_of_Orders
FROM orders
GROUP BY payment_type;

-- Select payment type, count of orders, and percentage of orders for each payment type
-- Calculate percentage of orders by dividing count of orders for each payment type by total count of orders, then multiply by 100
-- Round the percentage to two decimal places
-- Group the results by payment type

-- ___________________________________________________________________________________________________________________________________________________________________________

-- 9. Top 10 Average Payment Value per Product Category
SELECT 
    product_category_name,
    ROUND(AVG(payment_value), 2) AS Average_Payment_Value
FROM orders
GROUP BY product_category_name
ORDER BY Average_Payment_Value DESC
LIMIT 10;

-- Select product category name and round the average payment value to two decimal places
-- Calculate the average payment value for each product category
-- Group the results by product category name
-- Arrange the results in descending order of average payment value
-- Limit the output to the top 10 product categories with the highest average payment value

-- ___________________________________________________________________________________________________________________________________________________________________________

-- 10. Cancellation Rate by Day of Week
SELECT 
    DAYNAME(order_purchase_timestamp) AS Day_of_Week,
    SUM(CASE WHEN order_status = 'canceled' THEN 1 ELSE 0 END) AS Total_Canceled_Orders,
    COUNT(*) AS Total_Orders,
    ROUND((SUM(CASE WHEN order_status = 'canceled' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS Cancellation_Rate
FROM orders
GROUP BY Day_of_Week;

-- Calculate cancellation rate by day of the week
-- Day_of_Week: Extract day of the week from order_purchase_timestamp
-- Total_Canceled_Orders: Count the number of orders with 'canceled' status
-- Total_Orders: Count total number of orders
-- Cancellation_Rate: Calculate cancellation rate as (Total_Canceled_Orders / Total_Orders) * 100, rounded to 2 decimal places
-- ___________________________________________________________________________________________________________________________________________________________________________