import pandas as pd
from matplotlib import pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier



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






#sin1=sin1.iloc[:127]
#sin2=sin2.iloc[:127]
#sin3=sin3.iloc[:127]
#sin4=sin4.iloc[:127]
#sin5=sin5.iloc[:127]
#sin6=sin6.iloc[:127]
#sin7=sin7.iloc[:127]
#sin8=sin8.iloc[:127]
#sin9=sin9.iloc[:127]
#sin10=sin10.iloc[:127]
#sin11=sin11.iloc[:127]
#sin12=sin12.iloc[:127]
#
#
#sag1=sag1.iloc[:127]
#sag2=sag2.iloc[:127]
#sag3=sag3.iloc[:127]
#sag4=sag4.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag1=sag1.iloc[:127]
#sag18=sag18.iloc[:127]






cols=["Col0","Col1","Col2","Col3","Col4","Col5","Col6"]


import numpy as np
#for i in cols:
#    for j in range(len(sin1)):
#        str=sin1[i][j].replace("i","j")
#        sin1[i][j]=abs(complex(str))
#
#print("sin1 = ",sin1)
#for i in cols:
#    for j in range(len(sin2)):
#        str=sin2[i][j].replace("i","j")
#        sin2[i][j]=abs(complex(str))
#
#
#for i in cols:
#    for j in range(len(sin3)):
#        str=sin3[i][j].replace("i","j")
#        sin3[i][j]=abs(complex(str))
#
#for i in cols:
#    for j in range(len(sin4)):
#        str=sin4[i][j].replace("i","j")
#        sin4[i][j]=abs(complex(str))
#
#
#for i in cols:
#    for j in range(len(sin5)):
#        str=sin5[i][j].replace("i","j")
#        sin5[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sin6)):
#        str=sin6[i][j].replace("i","j")
#        sin6[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sin7)):
#        str=sin7[i][j].replace("i","j")
#        sin7[i][j]=abs(complex(str))
#
#for i in cols:
#    for j in range(len(sin8)):
#        str=sin8[i][j].replace("i","j")
#        sin8[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sin9)):
#        str=sin9[i][j].replace("i","j")
#        sin9[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sin10)):
#        str=sin10[i][j].replace("i","j")
#        sin10[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sin11)):
#        str=sin11[i][j].replace("i","j")
#        sin11[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sin12)):
#        str=sin12[i][j].replace("i","j")
#        sin12[i][j]=abs(complex(str))


#for i in cols:
#    for j in range(len(sag1)):
#        str=sag1[i][j].replace("i","j")
#        sag1[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag2)):
#        str=sag2[i][j].replace("i","j")
#        sag2[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag3)):
#        str=sag3[i][j].replace("i","j")
#        sag3[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag4)):
#        str=sag4[i][j].replace("i","j")
#        sag4[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag5)):
#        str=sag5[i][j].replace("i","j")
#        sag5[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag6)):
#        str=sag6[i][j].replace("i","j")
#        sag6[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag7)):
#        str=sag7[i][j].replace("i","j")
#        sag7[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag8)):
#        str=sag8[i][j].replace("i","j")
#        sag8[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag9)):
#        str=sag9[i][j].replace("i","j")
#        sag9[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag10)):
#        str=sag10[i][j].replace("i","j")
#        sag10[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag11)):
#        str=sag11[i][j].replace("i","j")
#        sag11[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag12)):
#        str=sag12[i][j].replace("i","j")
#        sag12[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag13)):
#        str=sag13[i][j].replace("i","j")
#        sag13[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag14)):
#        str=sag14[i][j].replace("i","j")
#        sag14[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag15)):
#        str=sag15[i][j].replace("i","j")
#        sag15[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag16)):
#        str=sag16[i][j].replace("i","j")
#        sag16[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag17)):
#        str=sag17[i][j].replace("i","j")
#        sag17[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(sag18)):
#        str=sag18[i][j].replace("i","j")
#        sag18[i][j]=abs(complex(str))


#for i in cols:
#    for j in range(len(swell1)):
#        str=swell1[i][j].replace("i","j")
#        swell1[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell2)):
#        str=swell2[i][j].replace("i","j")
#        swell2[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell3)):
#        str=swell3[i][j].replace("i","j")
#        swell3[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell4)):
#        str=swell4[i][j].replace("i","j")
#        swell4[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell5)):
#        str=swell5[i][j].replace("i","j")
#        swell5[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell6)):
#        str=swell6[i][j].replace("i","j")
#        swell6[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell7)):
#        str=swell7[i][j].replace("i","j")
#        swell7[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell8)):
#        str=swell8[i][j].replace("i","j")
#        swell8[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell9)):
#        str=swell9[i][j].replace("i","j")
#        swell9[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell10)):
#        str=swell10[i][j].replace("i","j")
#        swell10[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell11)):
#        str=swell11[i][j].replace("i","j")
#        swell11[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell12)):
#        str=swell12[i][j].replace("i","j")
#        swell12[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell13)):
#        str=swell13[i][j].replace("i","j")
#        swell13[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell14)):
#        str=swell14[i][j].replace("i","j")
#        swell14[i][j]=abs(complex(str))
#
#for i in cols:
#    for j in range(len(swell15)):
#        str=swell15[i][j].replace("i","j")
#        swell15[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell16)):
#        str=swell16[i][j].replace("i","j")
#        swell16[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell17)):
#        str=swell17[i][j].replace("i","j")
#        swell17[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell18)):
#        str=swell18[i][j].replace("i","j")
#        swell18[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell19)):
#        str=swell19[i][j].replace("i","j")
#        swell19[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell20)):
#        str=swell20[i][j].replace("i","j")
#        swell20[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell21)):
#        str=swell21[i][j].replace("i","j")
#        swell21[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell22)):
#        str=swell22[i][j].replace("i","j")
#        swell22[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell23)):
#        str=swell23[i][j].replace("i","j")
#        swell23[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell24)):
#        str=swell24[i][j].replace("i","j")
#        swell24[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell25)):
#        str=swell25[i][j].replace("i","j")
#        swell25[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell26)):
#        str=swell26[i][j].replace("i","j")
#        swell26[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell27)):
#        str=swell27[i][j].replace("i","j")
#        swell27[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell28)):
#        str=swell28[i][j].replace("i","j")
#        swell28[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell29)):
#        str=swell29[i][j].replace("i","j")
#        swell29[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell30)):
#        str=swell30[i][j].replace("i","j")
#        swell30[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell31)):
#        str=swell31[i][j].replace("i","j")
#        swell31[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell32)):
#        str=swell32[i][j].replace("i","j")
#        swell32[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell33)):
#        str=swell33[i][j].replace("i","j")
#        swell33[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell34)):
#        str=swell34[i][j].replace("i","j")
#        swell34[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell35)):
#        str=swell35[i][j].replace("i","j")
#        swell35[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(swell36)):
#        str=swell36[i][j].replace("i","j")
#        swell36[i][j]=abs(complex(str))




#for i in cols:
#    for j in range(len(harmonic1)):
#        str=harmonic1[i][j].replace("i","j")
#        harmonic1[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic2)):
#        str=harmonic2[i][j].replace("i","j")
#        harmonic2[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic3)):
#        str=harmonic3[i][j].replace("i","j")
#        harmonic3[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic4)):
#        str=harmonic4[i][j].replace("i","j")
#        harmonic4[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic5)):
#        str=harmonic5[i][j].replace("i","j")
#        harmonic5[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic6)):
#        str=harmonic6[i][j].replace("i","j")
#        harmonic6[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic7)):
#        str=harmonic7[i][j].replace("i","j")
#        harmonic7[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic8)):
#        str=harmonic8[i][j].replace("i","j")
#        harmonic8[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic9)):
#        str=harmonic9[i][j].replace("i","j")
#        harmonic9[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic10)):
#        str=harmonic10[i][j].replace("i","j")
#        harmonic10[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic11)):
#        str=harmonic11[i][j].replace("i","j")
#        harmonic11[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic12)):
#        str=harmonic12[i][j].replace("i","j")
#        harmonic12[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic13)):
#        str=harmonic13[i][j].replace("i","j")
#        harmonic13[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic14)):
#        str=harmonic14[i][j].replace("i","j")
#        harmonic14[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic15)):
#        str=harmonic15[i][j].replace("i","j")
#        harmonic15[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic16)):
#        str=harmonic16[i][j].replace("i","j")
#        harmonic16[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic17)):
#        str=harmonic17[i][j].replace("i","j")
#        harmonic17[i][j]=abs(complex(str))
#for i in cols:
#    for j in range(len(harmonic18)):
#        str=harmonic18[i][j].replace("i","j")
#        harmonic18[i][j]=abs(complex(str))


Sin=pd.concat([sin1,sin2,sin3,sin4,sin5,sin6,sin7,sin8,sin10,sin11,sin12,sin9])
Sag=pd.concat([sag1,sag2,sag3,sag4,sag5,sag6,sag7,sag8,sag9,sag10,sag11,sag12,sag13,sag14,sag15,sag16,sag17,sag18])
Swell=pd.concat([swell1,swell2,swell3,swell4,swell5,swell6,swell7,swell8,swell9,swell10,swell11,swell12,swell13,swell14,swell15,swell16,swell17,swell18,swell19,swell20,swell21,swell22,swell23,swell24,swell25,swell26,swell27,swell28,swell29,swell30,swell31,swell32,swell33,swell34,swell35,swell36])

Harmonic=pd.concat([harmonic1,harmonic2,harmonic3,harmonic4,harmonic5,harmonic6,harmonic7,harmonic8,harmonic9,harmonic10,harmonic11,harmonic12,harmonic13,harmonic14,harmonic15,harmonic16,harmonic17,harmonic18])




lst=[1]*len(Sin)
Sin["Output"]=lst


lst=[2]*len(Sag)
Sag["Output"]=lst


lst=[3]*len(Swell)
Swell["Output"]=lst
lst=[4]*len(Harmonic)
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
print("df0 =  ",Swell)
#print(df1)
#print(df1['Col1'])
#print(df1.iloc[1])
#print(df2.iloc[0])
#print(df2.iloc[1])
import numpy as np
#print(df1['Col1'])
#print(df1['Col2'])
#plt.scatter(df1['Col1'],df1['Col2'],color="green",marker='.')
#plt.scatter(df2['Col1'],df2['Col2'],color="blue",marker='+')
#plt.show()
x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

x_train,x_test,y_train,y_test= train_test_split(x,y,test_size=0.2)
print("test sample size = ",len(x_test),"train sample size = ",len(x_train))
#print(y_train)
#print(y_test)

from sklearn.ensemble import RandomForestClassifier
model=RandomForestClassifier(n_estimators=100)
model.fit(x_train,y_train)
print('accuracy = ',model.score(x_test,y_test)*100,"%")



