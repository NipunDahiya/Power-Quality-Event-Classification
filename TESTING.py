import pandas as pd
from matplotlib import pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
f1=pd.read_csv("hht_harmonic.csv")

x=f1["Col0"]
y=f1["Col1"]


plt.scatter(y,x)
plt.show()