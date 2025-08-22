# MBA in Artificial Intelligence and Big Data
# Module 2 - Data Science, Machine Learning and Data Mining
# Dataset: jogadores_exercicio1.csv

# Question 1 - Com base nos valores da média e desvio padrão dos atributos weight e age podemos dizer que:
# a) o desvio padrão do atributo weight corresponde a menos de 10% da sua média
# b) o desvio padrão do atributo age corresponde a mais de 20% da sua média
# c) não há praticamente nenhuma variação nos dados dos atributos weight e age
# d) nenhuma das anteriores

import pandas as pd
import numpy as np
import seaborn as sns

data = pd.read_csv('data/jogadores_exercicio1.csv')

# data.info()

jogadores_peso = np.array(data['weight'])
jogadores_peso_mean = np.mean(jogadores_peso)
jogadores_peso_std = np.std(jogadores_peso)

jogadores_peso_mean_2 = data['weight'].mean()
jogadores_peso_std_2 = data['age'].std()

print(f'The mean weight of the players is {jogadores_peso_mean} and the standard deviation is {jogadores_peso_std}')

print('The standard deviation in relation to the mean (feature weight): ', (jogadores_peso_std / jogadores_peso_mean) * 100)

jogadores_idade = np.array(data['age'])
jogadores_idade_mean = np.mean(jogadores_idade)
jogadores_idade_std = np.std(jogadores_idade)

print(f'The mean age of the players is {jogadores_idade_mean} and the standard deviation is {jogadores_idade_std}')

print('he standard deviation in relation to the mean (feature age): ', (jogadores_idade_std / jogadores_idade_mean) * 100)

#  Question 2 - Considerando o histograma do atributo weight, podemos afirmar que:
# a) a maioria dos dados estão entre 60 e 70
# b) a maioria dos dados estão entre 65 e 85
# c) os dados apresentam uma distribuição uniforme
# d) nenhuma das anteriores

data['weight'].hist()

# Question 3 - Considerando o boxplot do atributo age, podemos afirmar que:
# a) o valor que separa 75% dos dados (terceiro quartil) é maior que 40
# b) o valor que separa 25% dos dados (primeiro quartil) é menor que 30
# c) existe ao menos um outlier nesse conjunto
# d) nenhuma das anteriores

sns.boxplot(data['age'], showmeans=True)
data['age'].describe()
