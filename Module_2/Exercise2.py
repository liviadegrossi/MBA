# Dataset: clv_heart_disease.csv

import pandas as pd

heart_disease = pd.read_csv('data/clv_heart_disease.csv')
print(heart_disease.info())

#  Checking for missing data
print(f'Missing values: {heart_disease.isna().sum()}')