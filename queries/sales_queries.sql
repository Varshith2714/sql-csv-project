Loading data:
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sales_data.csv'
INTO TABLE sales_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
IGNORE 1 ROWS
(@dummy, order_id, product, quantity_ordered, price_each, order_date, purchase_address, @dummy, @dummy, @dummy, @dummy);

-- Query 1: Total sales by region
SELECT region, SUM(sales_amount) AS total_sales
FROM sales
GROUP BY region;

-- Query 2: Top 5 products by revenue
SELECT product_name, SUM(sales_amount) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;

-- Query 3: Monthly sales trend
SELECT DATE_FORMAT(sale_date, '%Y-%m') AS month, SUM(sales_amount) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;
