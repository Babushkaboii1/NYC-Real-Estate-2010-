# NYC 2010 Real Estate Sales Analysis

## Project Overview
This project analyzes 190 residential property sales in New York City during 2010. Utilizing SQL queries for data extraction and Tableau for visualization, it provides a comprehensive understanding of market trends, key performance indicators, and buyer preferences that shaped the NYC real estate landscape during that year.

## Dataset
The dataset includes detailed information about property sales such as sale date, borough, neighborhood, property type, number of bedrooms and bathrooms, square footage, sale price, and year built.

## Tools Used
- MySQL for querying and data analysis  
- Tableau for interactive and visual data storytelling  
- Excel/Google Sheets for initial data exploration and cleaning

## Key Insights

- 💰 **Total Sales Revenue:** The dataset reveals a substantial total sales revenue of **$114,965,000**, illustrating the volume and value of residential real estate transactions in NYC in 2010.

- 🏘️ **Top Performing Borough:** Manhattan emerged as the borough generating the highest total sales revenue, reflecting its role as the primary economic and residential hub with premium property values.

- 🌆 **Most Expensive Neighborhood:** Tribeca stands out as the neighborhood with the highest average sale price, signaling its desirability and exclusivity within the Manhattan borough.

- 🏠 **Most Common Property Type:** Condominiums dominated the sales, indicating a strong market preference for this type of residential property among buyers in 2010.

- 🛏️ **Bedroom Demand:** Properties with 2 bedrooms were the most frequently sold, highlighting the demand for moderately sized homes suitable for small families, couples, or investors.

- 📈 **Sales Trends:** May 2010 marked the peak month for property sales, suggesting seasonal buying patterns or market conditions favorable to real estate transactions during this period.

- 🏗️ **Impact of Property Age:** Properties constructed before 1950 commanded the highest average prices, which may be attributed to their historic value, architectural uniqueness, or location in established neighborhoods.

## Questions & Answers

### What is the total sales revenue for the dataset?  
**Answer:** The analysis uncovered a significant total sales revenue of **$114,965,000**, underscoring the sizeable investment and transactional volume in NYC's 2010 residential property market.

### Which borough generated the highest revenue?  
**Answer:** Manhattan was identified as the top-performing borough by sales revenue, reflecting its status as the center for high-value real estate and premium market activity.

### What neighborhood was the most expensive on average?  
**Answer:** Tribeca was the most expensive neighborhood on average, highlighting its luxury appeal and exclusivity that attract premium buyers.

### What property type was sold most often?  
**Answer:** Condominiums were the most common property type sold, revealing buyer preference toward ownership models offering convenience, amenities, and urban living.

### Which bedroom count was most sold?  
**Answer:** Two-bedroom properties were the leading choice among buyers, pointing to a market trend favoring homes that balance space and affordability.

### When did sales peak during the year?  
**Answer:** The highest volume of sales occurred in May 2010, indicating possible seasonal market trends or increased buyer activity in spring.

### Which age range of properties commanded the highest average price?  
**Answer:** Homes built before 1950 commanded the highest average prices, possibly due to their historic significance, craftsmanship, and desirable locations.

## SQL Queries

```sql
-- 1. Total sales revenue
SELECT SUM(Sale_Price) AS total_revenue FROM real_estate;

-- 2. Total number of transactions
SELECT COUNT(*) AS total_sales FROM real_estate;

-- 3. Top borough by total revenue
SELECT Borough, SUM(Sale_Price) AS total_revenue
FROM real_estate
GROUP BY Borough
ORDER BY total_revenue DESC
LIMIT 1;

-- 4. Most expensive neighborhood by average price
SELECT Neighborhood, AVG(Sale_Price) AS avg_price
FROM real_estate
GROUP BY Neighborhood
ORDER BY avg_price DESC
LIMIT 1;

-- 5. Most common property type
SELECT Property_Type, COUNT(*) AS sales_count
FROM real_estate
GROUP BY Property_Type
ORDER BY sales_count DESC
LIMIT 1;

-- 6. Most sold bedroom count
SELECT Bedrooms, COUNT(*) AS total_units_sold
FROM real_estate
GROUP BY Bedrooms
ORDER BY total_units_sold DESC
LIMIT 1;

-- 7. Peak sales month
SELECT DATE_FORMAT(Sale_Date, '%Y-%m') AS sale_month, COUNT(*) AS sales_count
FROM real_estate
GROUP BY sale_month
ORDER BY sales_count DESC
LIMIT 1;

-- 8. Year built range with highest average price
SELECT
  CASE 
    WHEN Year_Built < 1950 THEN 'Pre-1950'
    WHEN Year_Built BETWEEN 1950 AND 1979 THEN '1950-1979'
    ELSE '1980+'
  END AS year_built_range,
  AVG(Sale_Price) AS avg_price
FROM real_estate
GROUP BY year_built_range
ORDER BY avg_price DESC
LIMIT 1;

## Contact
Feel free to reach out for questions or collaboration!
Email: mndiayetech@gmail.com

