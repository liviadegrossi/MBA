# MBA in Artificial Intelligence and Big Data
# Module 2 - Data Science, Machine Learning and Data Mining

# Question 4 - Considere os dados abaixo armazenados na variável data. Ao normalizá-los entre 0 e 1, qual o valor da segunda linha?
# a) 2, 0.85, 0.33
# b) 1.0, 0., 0.7
# c) 15.5, 0.45, 0.8
# d) nenhuma das anteriores

import numpy as np
import pandas as pd
from sklearn.preprocessing import MinMaxScaler

data = np.array([
        [15, 28, 30],
        [410, -2.5, 65],
        [5, 30, 80]
    ])

data_frame = pd.DataFrame(data)
data_frame.head()

min_max_scaler = MinMaxScaler()
data_frame_scaled = min_max_scaler.fit_transform(data_frame)

data_frame_scaled