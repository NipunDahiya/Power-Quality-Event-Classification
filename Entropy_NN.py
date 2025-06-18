import tensorflow as tf
import numpy as np
import pandas as pd
mnist = tf.keras.datasets.mnist
from sklearn.model_selection import train_test_split
#(x_train ,y_train),(x_test,y_test)=mnist.load_data()
#print(type(x_train))

sin1 = pd.read_csv('wen_sin1.csv')
sag1 = pd.read_csv('wen_sag1.csv')
swell1=pd.read_csv("wen_swell1.csv")
harmonic1=pd.read_csv("wen_harmonic1.csv")


sin2=pd.read_csv("wen_sin2.csv")
sin3=pd.read_csv("wen_sin3.csv")
sin4=pd.read_csv("wen_sin4.csv")
sin5=pd.read_csv("wen_sin5.csv")
sin6=pd.read_csv("wen_sin6.csv")
sin7=pd.read_csv("wen_sin7.csv")
sin8=pd.read_csv("wen_sin8.csv")
sin9=pd.read_csv("wen_sin9.csv")
sin10=pd.read_csv("wen_sin10.csv")
sin11=pd.read_csv("wen_sin11.csv")
sin12=pd.read_csv("wen_sin12.csv")



sag2=pd.read_csv("wen_sag2.csv")
sag3=pd.read_csv("wen_sag3.csv")
sag4=pd.read_csv("wen_sag4.csv")
sag5=pd.read_csv("wen_sag5.csv")
sag6=pd.read_csv("wen_sag6.csv")
sag7=pd.read_csv("wen_sag7.csv")
sag8=pd.read_csv("wen_sag8.csv")
sag9=pd.read_csv("wen_sag9.csv")
sag10=pd.read_csv("wen_sag10.csv")
sag11=pd.read_csv("wen_sag11.csv")
sag12=pd.read_csv("wen_sag12.csv")
sag13=pd.read_csv("wen_sag13.csv")
sag14=pd.read_csv("wen_sag14.csv")
sag15=pd.read_csv("wen_sag15.csv")
sag16=pd.read_csv("wen_sag16.csv")
sag17=pd.read_csv("wen_sag17.csv")
sag18=pd.read_csv("wen_sag18.csv")

swell2=pd.read_csv("wen_swell2.csv")
swell3=pd.read_csv("wen_swell3.csv")
swell4=pd.read_csv("wen_swell4.csv")
swell5=pd.read_csv("wen_swell5.csv")
swell6=pd.read_csv("wen_swell6.csv")
swell7=pd.read_csv("wen_swell7.csv")
swell8=pd.read_csv("wen_swell8.csv")
swell9=pd.read_csv("wen_swell9.csv")
swell10=pd.read_csv("wen_swell10.csv")
swell11=pd.read_csv("wen_swell11.csv")
swell12=pd.read_csv("wen_swell12.csv")
swell13=pd.read_csv("wen_swell13.csv")
swell14=pd.read_csv("wen_swell14.csv")
swell15=pd.read_csv("wen_swell15.csv")
swell16=pd.read_csv("wen_swell16.csv")
swell17=pd.read_csv("wen_swell17.csv")
swell18=pd.read_csv("wen_swell18.csv")
swell19=pd.read_csv("wen_swell19.csv")
swell20=pd.read_csv("wen_swell20.csv")
swell21=pd.read_csv("wen_swell21.csv")
swell22=pd.read_csv("wen_swell22.csv")
swell23=pd.read_csv("wen_swell23.csv")
swell24=pd.read_csv("wen_swell24.csv")
swell25=pd.read_csv("wen_swell25.csv")
swell26=pd.read_csv("wen_swell26.csv")
swell27=pd.read_csv("wen_swell27.csv")
swell28=pd.read_csv("wen_swell28.csv")
swell29=pd.read_csv("wen_swell29.csv")
swell30=pd.read_csv("wen_swell30.csv")
swell31=pd.read_csv("wen_swell31.csv")
swell32=pd.read_csv("wen_swell32.csv")
swell33=pd.read_csv("wen_swell33.csv")
swell34=pd.read_csv("wen_swell34.csv")
swell35=pd.read_csv("wen_swell35.csv")
swell36=pd.read_csv("wen_swell36.csv")




harmonic2=pd.read_csv("wen_harmonic2.csv")
harmonic3=pd.read_csv("wen_harmonic3.csv")
harmonic4=pd.read_csv("wen_harmonic4.csv")
harmonic5=pd.read_csv("wen_harmonic5.csv")
harmonic6=pd.read_csv("wen_harmonic6.csv")
harmonic7=pd.read_csv("wen_harmonic7.csv")
harmonic8=pd.read_csv("wen_harmonic8.csv")
harmonic9=pd.read_csv("wen_harmonic9.csv")
harmonic10=pd.read_csv("wen_harmonic10.csv")
harmonic11=pd.read_csv("wen_harmonic11.csv")
harmonic12=pd.read_csv("wen_harmonic12.csv")
harmonic13=pd.read_csv("wen_harmonic13.csv")
harmonic14=pd.read_csv("wen_harmonic14.csv")
harmonic15=pd.read_csv("wen_harmonic15.csv")
harmonic16=pd.read_csv("wen_harmonic16.csv")
harmonic17=pd.read_csv("wen_harmonic17.csv")
harmonic18=pd.read_csv("wen_harmonic18.csv")


Sin=pd.concat([sin1,sin2,sin3,sin4,sin5,sin6,sin7,sin8,sin10,sin11,sin12,sin9])
Sag=pd.concat([sag1,sag2,sag3,sag4,sag5,sag6,sag7,sag8,sag9,sag10,sag11,sag12,sag13,sag14,sag15,sag16,sag17,sag18])
Swell=pd.concat([swell1,swell2,swell3,swell4,swell5,swell6,swell7,swell8,swell9,swell10,swell11,swell12,swell13,swell14,swell15,swell16,swell17,swell18,swell19,swell20,swell21,swell22,swell23,swell24,swell25,swell26,swell27,swell28,swell29,swell30,swell31,swell32,swell33,swell34,swell35,swell36])

Harmonic=pd.concat([harmonic1,harmonic2,harmonic3,harmonic4,harmonic5,harmonic6,harmonic7,harmonic8,harmonic9,harmonic10,harmonic11,harmonic12,harmonic13,harmonic14,harmonic15,harmonic16,harmonic17,harmonic18])




lst=[0]*len(Sin)
Sin["Output"]=lst


lst=[1]*len(Sag)
Sag["Output"]=lst


lst=[2]*len(Swell)
Swell["Output"]=lst
lst=[3]*len(Harmonic)
Harmonic["Output"]=lst


cols=["Col0","Col1","Col2","Col3","Col4","Col5","Col6"]
lst=[1]*len(Sin)


df0=pd.concat([Sin,Sag,Swell,Harmonic])
#print("Sin = ",Sin)
#print("sin1 = ",sin1)
#print("sin2 = ",sin2)
#print("sin3 = ",sin3)
#print("sin4 = ",sin4)
#print("sin5 = ",sin5)
#print("sin6 = ",sin6)
#print("sin7 = ",sin7)
#print("sin8 = ",sin8)
#print("sin9 = ",sin9)
#print("sin10 = ",sin10)
#print("sin11 = ",sin11)
#print("sin12 = ",sin12)





x=df0.drop(['Output'],axis='columns')
y=df0.Output

x_train,x_test,y_train,y_test= train_test_split(x,y,test_size=0.2)


x_train = tf.keras.utils.normalize(x_train,axis=1)
x_test = tf.keras.utils.normalize(x_test,axis=1)

model = tf.keras.models.Sequential()
model.add(tf.keras.layers.Flatten())
model.add(tf.keras.layers.Dense(127,activation=tf.nn.relu))
model.add(tf.keras.layers.Dense(127,activation=tf.nn.relu))
model.add(tf.keras.layers.Dense(127,activation=tf.nn.relu))
model.add(tf.keras.layers.Dense(4,activation=tf.nn.softmax))

model.compile(optimizer='adam',loss='sparse_categorical_crossentropy',metrics=['accuracy'])

#print(x_train)
#print(y_train)
model.fit(x_train,y_train,epochs=400)

val_loss,val_acc=model.evaluate(x_test,y_test)

#print(val_loss,val_acc)


model.save("model1")
new_model=tf.keras.models.load_model('model1')

predictions = new_model.predict([x_test])
#print(np.argmax(predictions[0]))



