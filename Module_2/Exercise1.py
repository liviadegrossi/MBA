# Exercise 1 - To estimate the rent value of a property. 
# Dataset: houses_modified.csv

import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

data = pd.read_csv('data/houses_modified.csv')
# print(data.head())

# Types of features
print(data.info())

# Check if there are missing values
print(f'Missing values: {data.isna()}')
print(f'Missing values: {data.isna().sum()}')

# Calculating the quartiles, mean and median of the rent amount feature
rent_amount_mean = data['rent amount (R$)'].mean()
rent_amount_median = data['rent amount (R$)'].median()
print(data['rent amount (R$)'].describe())

print(f'The mean is {rent_amount_mean} and the median is {rent_amount_median}')

data.boxplot('rent amount (R$)', showmeans = True)

skew = data['rent amount (R$)'].skew()
print(f'The skew of the rent amount is {skew}')

# Histogram
data['rent amount (R$)'].hist()

rooms_mean = data['rooms'].mean()
rooms_var = data['rooms'].var()
rent_amount_var = data['rent amount (R$)'].var()

print(f'The room feature has mean {rooms_mean} and variance {rooms_var}')
print(f'The rent amount feature has mean {rent_amount_mean} and variance {rent_amount_var}')

# Check the histogram of both feature
# The skew of the features are both positive
data[['rooms', 'rent amount (R$)']].hist()

# Calculate the correlation matriz and plot its heatmap
cor_matrix = data[['rooms', 'rent amount (R$)']].corr()
print(cor_matrix)

sns.heatmap(cor_matrix, annot=True, cmap='GnBu')