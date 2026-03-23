-- Total Sales
SELECT SUM(Sales) AS Total_Sales FROM sales_data;

-- Total Profit
SELECT SUM(Profit) AS Total_Profit FROM sales_data;

-- Top 5 Customers
SELECT Customer_Name, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT MONTH(Order_Date) AS Month, SUM(Sales) AS Revenue
FROM sales_data
GROUP BY MONTH(Order_Date)
ORDER BY Month;

-- Region-wise Sales
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Top Products
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM sales_data
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;
