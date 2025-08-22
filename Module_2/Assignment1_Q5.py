# MBA in Artificial Intelligence and Big Data
# Module 2 - Data Science, Machine Learning and Data Mining

# Question 5 - Para essa questão, utilizaremos o dataset boston house prices.

# Ler o conjunto de dados usando os seguintes comandos:
# data_url = "http://lib.stat.cmu.edu/datasets/boston"
# raw_df = pd.read_csv(data_url, sep="\s+", skiprows=22, header=None)
# X = np.hstack([raw_df.values[::2, :], raw_df.values[1::2, :2]])
# y = raw_df.values[1::2, 2]

# Dividir o dataset em 80% treino e 20% teste (com random_state=0)
# Padronizar os dados utilizando StandardScaler
# Aplicar a técnica PCA e reduzir a dimensionalidade dos atributos para 2
# O que se pode afirmar sobre as porcentagens da variância que cada componente principal armazena:

# a) A porcentagem da 1a. componente: PCA1 = 33.45% é maior que a porcentagem da 2a. componente principal: PCA2=21%
# b) A porcentagem da 2a. componente: PCA2 = 31.11% é maior que a porcentagem da 1a. componente principal: PCA1 = 20.22%
# c) A porcentagem da 1a. componente: PCA1 = 47% é maior que a porcentagem da 2a. componente principal: PCA2=11%
# d) A porcentagem da 1a. componente: PCA1=20.22% nem sempre é maior que a da 2a. componente principal: PCA2= 31.11%.

import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.decomposition import PCA

data_url = "http://lib.stat.cmu.edu/datasets/boston"
raw_df = pd.read_csv(data_url, sep='\s+', skiprows=22, header=None)
X = np.hstack([raw_df.values[::2, :], raw_df.values[1::2, :2]])
y = raw_df.values[1::2, 2]

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.20, random_state=0)

standard_scaler = StandardScaler()

X_train_z_scaled = standard_scaler.fit_transform(X_train)
# X_train_z_scaled
pca = PCA(n_components=2)
X_train_z_scaled_pca = pca.fit_transform(X_train_z_scaled)

print('A variância de cada uma das componentes é ', pca.explained_variance_ratio_)