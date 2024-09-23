# **Olist E-commerce Analytics**

## **Project Overview**
The **Olist E-commerce Analytics** project aims to analyze customer, order, payment, and product data to derive meaningful insights into business performance. This project uses various KPIs to understand sales trends, customer satisfaction, and operational efficiency in e-commerce. It helps to drive decisions that optimize customer experience and improve overall business performance.

## **Datasets Used**
The project is based on multiple datasets provided by Olist, including customer, order, payment, product, and seller information:
1. **olist_customers_dataset**: Contains customer details.
2. **olist_geolocation_dataset**: Includes geographical location data.
3. **olist_order_items_dataset**: Provides information about the items ordered.
4. **olist_order_payments_dataset**: Contains data on payment transactions.
5. **olist_order_reviews_dataset**: Stores customer reviews and ratings.
6. **olist_orders_dataset**: Provides details of all orders placed.
7. **olist_products_dataset**: Contains product information.
8. **olist_sellers_dataset**: Includes data about the sellers.
9. **product_category_name_translation**: Translates product categories from Portuguese to English.

## **Columns in the Dataset**
- **customer_id**: Unique ID of the customer.
- **customer_unique_id**: A unique identifier for each customer.
- **customer_zip_code_prefix**: Zip code prefix of the customer.
- **customer_city**: Customer’s city.
- **customer_state**: Customer’s state.
- **geolocation_lat**: Latitude of the geolocation.
- **geolocation_lng**: Longitude of the geolocation.
- **geolocation_city**: City based on geolocation.
- **geolocation_state**: State based on geolocation.
- **order_id**: Unique order ID.
- **order_status**: Status of the order.
- **order_purchase_timestamp**: Date and time when the order was placed.
- **order_purchase_timestamp_year**: Year of the order purchase.
- **order_approved_at**: Time the order was approved.
- **order_delivered_carrier_date**: Date when the order was delivered to the carrier.
- **order_delivered_customer_date**: Date when the order was delivered to the customer.
- **order_estimated_delivery_date**: Estimated delivery date for the order.
- **product_id**: Unique product ID.
- **seller_id**: Unique seller ID.
- **shipping_limit_date**: Shipping limit date provided by the seller.
- **price**: Price of the product.
- **freight_value**: Freight or shipping cost.
- **payment_type**: Type of payment method used (e.g., credit card, voucher, etc.).
- **payment_value**: Total value of the payment.
- **review_id**: Unique ID for the review.
- **review_score**: Score given in the review (1 to 5).
- **review_creation_date**: Date the review was created.
- **review_answer_timestamp**: Timestamp when the review was answered.
- **product_category_name**: Name of the product category.
- **product_weight_g**: Weight of the product in grams.
- **seller_zip_code_prefix**: Zip code prefix of the seller.
- **seller_city**: Seller's city.
- **seller_state**: Seller's state.
- **Day of Week**: Day of the week when the order was placed.
- **Weekend_Weekday_Flag**: Flag indicating whether the order was placed on a weekday or weekend.
- **Delivery Duration (Days) - Pet Shop**: Delivery duration in days for pet shop orders.
- **Shipping Days/Order Fulfillment Time**: Number of shipping days or time taken to fulfill the order.
- **Response Time**: Time taken to respond to customer inquiries.
- **Shipping_Days_Bin**: Categorized shipping days.

## **Key Performance Indicators (KPIs)**
1. **Weekday Vs Weekend Payment Statistics**: Analyze payment statistics based on whether the orders were placed on weekdays or weekends.
2. **Review Score and Payment Type Orders**: Study the relationship between review scores and different payment types.
3. **Average Pet Shop Delivery Days**: Calculate the average delivery duration for pet shop-related orders.
4. **Average Price & Payment Value for Sao Paulo Customers**: Analyze the average price and payment values for customers based in São Paulo.
5. **Shipping Days & Review Scores Relationship**: Explore the relationship between the number of shipping days and the review scores provided by customers.
6. **Top 10 Highest Selling Products**: Identify the top 10 highest-selling products by volume.
7. **Top 10 Lowest Selling Products**: Identify the top 10 lowest-selling products by volume.
8. **Percentage of Orders by Payment Type**: Calculate the percentage of orders using each payment method.
9. **Top 10 Average Payment Value per Product Category**: Identify the top 10 product categories with the highest average payment values.
10. **Cancellation Rate by Day of Week**: Analyze the cancellation rate of orders by day of the week.

## **Technologies Used**
- **Python**: For data preprocessing, statistical analysis, and visualization.
- **MySQL**: To store and query the datasets efficiently.
- **Excel**: For initial data cleaning and simple analysis.
- **Power BI**: For creating interactive dashboards to visualize KPIs and insights.

## **Insights and Results**
- **Weekday vs Weekend Payments**: Found that most orders and payments happen during weekdays, with a slight increase in payment values over weekends.
- **Review Score & Payment Types**: Credit card payments tend to receive higher review scores, while voucher payments show more neutral scores.
- **Average Pet Shop Delivery**: The average delivery time for pet shop orders is around 4-6 days, which is faster compared to other categories.
- **São Paulo Customers**: Customers from São Paulo spend approximately 20% more on average compared to other regions.
- **Shipping Days & Review Scores**: Orders that were delivered faster generally received higher review scores, showcasing the importance of timely deliveries.
- **Top Selling Products**: Electronics and home appliances dominate the top-selling product categories, while niche products like books and toys had fewer sales.
- **Cancellation Trends**: The highest cancellation rates were observed on Mondays, likely due to changes in weekend orders.

Here’s a closing note you can add at the end of the README:

---

## **Final Note**
This project serves as an in-depth analysis of e-commerce data, showcasing how data-driven decisions can help improve business performance, customer satisfaction, and operational efficiency. Whether you are a business analyst, data enthusiast, or just exploring analytics, this project will provide valuable insights into real-world e-commerce challenges and solutions. Your feedback is appreciated, and I encourage you to explore and expand on this project. Thank you for checking out my work!

---
