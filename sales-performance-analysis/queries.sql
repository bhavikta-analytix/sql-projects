-- View first 10 rows
SELECT *
FROM sales_data
LIMIT 10;

-- Monthly sales trend
SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;

-- Top 5 products by revenue
SELECT 
    product_name,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- Region wise sales distribution
SELECT 
    region,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;
