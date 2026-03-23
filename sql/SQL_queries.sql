-- Total Sales
SELECT SUM(sales) AS total_sales FROM dataset;

-- Top 5 Customers
SELECT customer_name, SUM(sales) AS total_sales
FROM dataset
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 5;

-- Monthly Revenue
SELECT MONTH(order_date) AS month, SUM(sales) AS revenue
FROM dataset
GROUP BY MONTH(order_date)
ORDER BY month;
