import pandas as pd

df = pd.read_csv('data/dataset.csv')

# Basic analysis
print(df.head())
print(df.describe())
