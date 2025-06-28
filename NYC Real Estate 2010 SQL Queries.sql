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

