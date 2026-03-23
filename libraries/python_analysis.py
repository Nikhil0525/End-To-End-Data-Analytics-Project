import pandas as pd

# Load dataset
df = pd.read_csv('data/sales_data.csv')

# Preview data
print(df.head())

# Summary statistics
print(df.describe())

# Total sales
print("Total Sales:", df['Sales'].sum())

# Top customers
top_customers = df.groupby('Customer_Name')['Sales'].sum().sort_values(ascending=False).head(5)
print(top_customers)

# Monthly trend
df['Order_Date'] = pd.to_datetime(df['Order_Date'])
df['Month'] = df['Order_Date'].dt.month

monthly_sales = df.groupby('Month')['Sales'].sum()
print(monthly_sales)
