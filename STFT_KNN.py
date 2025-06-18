import pandas as pd
from matplotlib import pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier
import csv

sin1 = pd.read_csv('spec_sin1.csv')
sag1 = pd.read_csv('spec_sag1.csv')
swell1=pd.read_csv("spec_swell1.csv")
harmonic1=pd.read_csv("spec_harmonic1.csv")


sin2=pd.read_csv("spec_sin2.csv")
sin3=pd.read_csv("spec_sin3.csv")
sin4=pd.read_csv("spec_sin4.csv")
sin5=pd.read_csv("spec_sin5.csv")
sin6=pd.read_csv("spec_sin6.csv")
sin7=pd.read_csv("spec_sin7.csv")
sin8=pd.read_csv("spec_sin8.csv")
sin9=pd.read_csv("spec_sin9.csv")
sin10=pd.read_csv("spec_sin10.csv")
sin11=pd.read_csv("spec_sin11.csv")
sin12=pd.read_csv("spec_sin12.csv")
# NON STATIONARY SIGNALS
sin13=pd.read_csv("spec_sin13.csv")
#-- WTF --
sin14=pd.read_csv("spec_sin14.csv")
sin15=pd.read_csv("spec_sin15.csv")
sin16=pd.read_csv("spec_sin16.csv")
sin17=pd.read_csv("spec_sin17.csv")
sin18=pd.read_csv("spec_sin18.csv")
sin19=pd.read_csv("spec_sin19.csv")










sag2=pd.read_csv("spec_sag2.csv")
sag3=pd.read_csv("spec_sag3.csv")
sag4=pd.read_csv("spec_sag4.csv")
sag5=pd.read_csv("spec_sag5.csv")
sag6=pd.read_csv("spec_sag6.csv")
sag7=pd.read_csv("spec_sag7.csv")
sag8=pd.read_csv("spec_sag8.csv")
sag9=pd.read_csv("spec_sag9.csv")
sag10=pd.read_csv("spec_sag10.csv")
sag11=pd.read_csv("spec_sag11.csv")
sag12=pd.read_csv("spec_sag12.csv")
sag13=pd.read_csv("spec_sag13.csv")
sag14=pd.read_csv("spec_sag14.csv")
sag15=pd.read_csv("spec_sag15.csv")
sag16=pd.read_csv("spec_sag16.csv")
sag17=pd.read_csv("spec_sag17.csv")
sag18=pd.read_csv("spec_sag18.csv")
sag19 = pd.read_csv("spec_sag19.csv")
sag20 = pd.read_csv("spec_sag20.csv")
sag21 = pd.read_csv("spec_sag21.csv")
sag22 = pd.read_csv("spec_sag22.csv")
sag23 = pd.read_csv("spec_sag23.csv")
sag24 = pd.read_csv("spec_sag24.csv")
sag25 = pd.read_csv("spec_sag25.csv")
sag26 = pd.read_csv("spec_sag26.csv")
sag27 = pd.read_csv("spec_sag27.csv")
sag19 = pd.read_csv("spec_sag19.csv")
sag20 = pd.read_csv("spec_sag20.csv")
sag21 = pd.read_csv("spec_sag21.csv")
sag22 = pd.read_csv("spec_sag22.csv")
sag23 = pd.read_csv("spec_sag23.csv")
sag24 = pd.read_csv("spec_sag24.csv")
sag25 = pd.read_csv("spec_sag25.csv")
sag26 = pd.read_csv("spec_sag26.csv")
sag27 = pd.read_csv("spec_sag27.csv")
sag28 = pd.read_csv("spec_sag28.csv")
sag29 = pd.read_csv("spec_sag29.csv")
sag30 = pd.read_csv("spec_sag30.csv")
sag31 = pd.read_csv("spec_sag31.csv")
sag32 = pd.read_csv("spec_sag32.csv")
sag33 = pd.read_csv("spec_sag33.csv")
sag34 = pd.read_csv("spec_sag34.csv")
sag35 = pd.read_csv("spec_sag35.csv")
sag36 = pd.read_csv("spec_sag36.csv")
sag37 = pd.read_csv("spec_sag37.csv")
sag38 = pd.read_csv("spec_sag38.csv")
sag39 = pd.read_csv("spec_sag39.csv")
sag40 = pd.read_csv("spec_sag40.csv")
sag41 = pd.read_csv("spec_sag41.csv")





swell2=pd.read_csv("spec_swell2.csv")
swell3=pd.read_csv("spec_swell3.csv")
swell4=pd.read_csv("spec_swell4.csv")
swell5=pd.read_csv("spec_swell5.csv")
swell6=pd.read_csv("spec_swell6.csv")
swell7=pd.read_csv("spec_swell7.csv")
swell8=pd.read_csv("spec_swell8.csv")
swell9=pd.read_csv("spec_swell9.csv")
swell10=pd.read_csv("spec_swell10.csv")
swell11=pd.read_csv("spec_swell11.csv")
swell12=pd.read_csv("spec_swell12.csv")
swell13=pd.read_csv("spec_swell13.csv")
swell14=pd.read_csv("spec_swell14.csv")
swell15=pd.read_csv("spec_swell15.csv")
swell16=pd.read_csv("spec_swell16.csv")
swell17=pd.read_csv("spec_swell17.csv")
swell18=pd.read_csv("spec_swell18.csv")
swell19=pd.read_csv("spec_swell19.csv")
swell20=pd.read_csv("spec_swell20.csv")
swell21=pd.read_csv("spec_swell21.csv")
swell22=pd.read_csv("spec_swell22.csv")
swell23=pd.read_csv("spec_swell23.csv")
swell24=pd.read_csv("spec_swell24.csv")
swell25=pd.read_csv("spec_swell25.csv")
swell26=pd.read_csv("spec_swell26.csv")
swell27=pd.read_csv("spec_swell27.csv")
swell28=pd.read_csv("spec_swell28.csv")
swell29=pd.read_csv("spec_swell29.csv")
swell30=pd.read_csv("spec_swell30.csv")
swell31=pd.read_csv("spec_swell31.csv")
swell32=pd.read_csv("spec_swell32.csv")
swell33=pd.read_csv("spec_swell33.csv")
swell34=pd.read_csv("spec_swell34.csv")
swell35=pd.read_csv("spec_swell35.csv")
swell36=pd.read_csv("spec_swell36.csv")
swell37=pd.read_csv("spec_swell37.csv")
swell37=pd.read_csv("spec_swell37.csv")
swell38=pd.read_csv("spec_swell38.csv")
swell39=pd.read_csv("spec_swell39.csv")
swell40=pd.read_csv("spec_swell40.csv")
swell41=pd.read_csv("spec_swell41.csv")
swell42=pd.read_csv("spec_swell42.csv")
swell43=pd.read_csv("spec_swell43.csv")
swell44=pd.read_csv("spec_swell44.csv")
swell45=pd.read_csv("spec_swell45.csv")
swell46=pd.read_csv("spec_swell46.csv")
swell47=pd.read_csv("spec_swell47.csv")
swell48=pd.read_csv("spec_swell48.csv")
swell49=pd.read_csv("spec_swell49.csv")
swell50=pd.read_csv("spec_swell50.csv")
swell51=pd.read_csv("spec_swell51.csv")
swell52=pd.read_csv("spec_swell52.csv")
swell53=pd.read_csv("spec_swell53.csv")
swell54=pd.read_csv("spec_swell54.csv")
swell55=pd.read_csv("spec_swell55.csv")
swell56=pd.read_csv("spec_swell56.csv")



harmonic2=pd.read_csv("spec_harmonic2.csv")
harmonic3=pd.read_csv("spec_harmonic3.csv")
harmonic4=pd.read_csv("spec_harmonic4.csv")
harmonic5=pd.read_csv("spec_harmonic5.csv")
harmonic6=pd.read_csv("spec_harmonic6.csv")
harmonic7=pd.read_csv("spec_harmonic7.csv")
harmonic8=pd.read_csv("spec_harmonic8.csv")
harmonic9=pd.read_csv("spec_harmonic9.csv")
harmonic10=pd.read_csv("spec_harmonic10.csv")
harmonic11=pd.read_csv("spec_harmonic11.csv")
harmonic12=pd.read_csv("spec_harmonic12.csv")
harmonic13=pd.read_csv("spec_harmonic13.csv")
harmonic14=pd.read_csv("spec_harmonic14.csv")
harmonic15=pd.read_csv("spec_harmonic15.csv")
harmonic16=pd.read_csv("spec_harmonic16.csv")
harmonic17=pd.read_csv("spec_harmonic17.csv")
harmonic18=pd.read_csv("spec_harmonic18.csv")
harmonic19=pd.read_csv("spec_harmonic19.csv")
harmonic20=pd.read_csv("spec_harmonic20.csv")
harmonic21=pd.read_csv("spec_harmonic21.csv")
harmonic22=pd.read_csv("spec_harmonic22.csv")
harmonic23=pd.read_csv("spec_harmonic23.csv")
harmonic24=pd.read_csv("spec_harmonic24.csv")
harmonic25=pd.read_csv("spec_harmonic25.csv")
harmonic26=pd.read_csv("spec_harmonic26.csv")
harmonic27=pd.read_csv("spec_harmonic27.csv")
harmonic28=pd.read_csv("spec_harmonic28.csv")
harmonic29=pd.read_csv("spec_harmonic29.csv")
harmonic30=pd.read_csv("spec_harmonic30.csv")
harmonic31=pd.read_csv("spec_harmonic31.csv")
harmonic32=pd.read_csv("spec_harmonic32.csv")
harmonic33=pd.read_csv("spec_harmonic33.csv")
harmonic34=pd.read_csv("spec_harmonic34.csv")
harmonic35=pd.read_csv("spec_harmonic35.csv")


inter1=pd.read_csv("spec_inter1.csv")
inter2=pd.read_csv("spec_inter2.csv")
inter3=pd.read_csv("spec_inter3.csv")
inter4=pd.read_csv("spec_inter4.csv")
inter5=pd.read_csv("spec_inter5.csv")
inter6=pd.read_csv("spec_inter6.csv")
inter7=pd.read_csv("spec_inter7.csv")
inter8=pd.read_csv("spec_inter8.csv")
inter9=pd.read_csv("spec_inter9.csv")
inter10=pd.read_csv("spec_inter10.csv")
inter11=pd.read_csv("spec_inter11.csv")
inter12=pd.read_csv("spec_inter12.csv")


test_harmonic1=pd.read_csv("test_spec_harmonic1.csv")
test_harmonic2=pd.read_csv("test_spec_harmonic2.csv")
test_harmonic3=pd.read_csv("test_spec_harmonic3.csv")
test_harmonic4=pd.read_csv("test_spec_harmonic4.csv")
test_harmonic5=pd.read_csv("test_spec_harmonic5.csv")
test_harmonic6=pd.read_csv("test_spec_harmonic6.csv")
test_harmonic7=pd.read_csv("test_spec_harmonic7.csv")
test_harmonic8=pd.read_csv("test_spec_harmonic8.csv")
test_harmonic9=pd.read_csv("test_spec_harmonic9.csv")
test_harmonic10=pd.read_csv("test_spec_harmonic10.csv")
test_harmonic11=pd.read_csv("test_spec_harmonic11.csv")
test_harmonic12=pd.read_csv("test_spec_harmonic12.csv")
test_harmonic13=pd.read_csv("test_spec_harmonic13.csv")
test_harmonic14=pd.read_csv("test_spec_harmonic14.csv")
test_harmonic15=pd.read_csv("test_spec_harmonic15.csv")
test_harmonic16=pd.read_csv("test_spec_harmonic16.csv")
test_harmonic17=pd.read_csv("test_spec_harmonic17.csv")
test_harmonic18=pd.read_csv("test_spec_harmonic18.csv")
test_harmonic19=pd.read_csv("test_spec_harmonic19.csv")
test_harmonic20=pd.read_csv("test_spec_harmonic20.csv")
test_harmonic21=pd.read_csv("test_spec_harmonic21.csv")
test_harmonic22=pd.read_csv("test_spec_harmonic22.csv")
test_harmonic23=pd.read_csv("test_spec_harmonic23.csv")
test_harmonic24=pd.read_csv("test_spec_harmonic24.csv")
test_harmonic25=pd.read_csv("test_spec_harmonic25.csv")
test_harmonic26=pd.read_csv("test_spec_harmonic26.csv")
test_harmonic27=pd.read_csv("test_spec_harmonic27.csv")
test_harmonic28=pd.read_csv("test_spec_harmonic28.csv")
test_harmonic29=pd.read_csv("test_spec_harmonic29.csv")
test_harmonic30=pd.read_csv("test_spec_harmonic30.csv")
test_harmonic31=pd.read_csv("test_spec_harmonic31.csv")
test_harmonic32=pd.read_csv("test_spec_harmonic32.csv")
test_harmonic33=pd.read_csv("test_spec_harmonic33.csv")
test_harmonic34=pd.read_csv("test_spec_harmonic34.csv")
test_harmonic35=pd.read_csv("test_spec_harmonic35.csv")




test_sin1=pd.read_csv("test_spec_sin1.csv")
test_sin2=pd.read_csv("test_spec_sin2.csv")
test_sin3=pd.read_csv("test_spec_sin3.csv")
test_sin4=pd.read_csv("test_spec_sin4.csv")
test_sin5=pd.read_csv("test_spec_sin5.csv")
test_sin6=pd.read_csv("test_spec_sin6.csv")
test_sin7=pd.read_csv("test_spec_sin7.csv")
test_sin8=pd.read_csv("test_spec_sin8.csv")
test_sin9=pd.read_csv("test_spec_sin9.csv")
test_sin10=pd.read_csv("test_spec_sin10.csv")
test_sin11=pd.read_csv("test_spec_sin11.csv")
test_sin12=pd.read_csv("test_spec_sin12.csv")
test_sin13=pd.read_csv("test_spec_sin13.csv")
test_sin14=pd.read_csv("test_spec_sin14.csv")
test_sin15=pd.read_csv("test_spec_sin15.csv")
test_sin16=pd.read_csv("test_spec_sin16.csv")
test_sin17=pd.read_csv("test_spec_sin17.csv")
test_sin18=pd.read_csv("test_spec_sin18.csv")
test_sin19=pd.read_csv("test_spec_sin19.csv")
test_sin20=pd.read_csv("test_spec_sin20.csv")
test_sin21=pd.read_csv("test_spec_sin21.csv")
test_sin22=pd.read_csv("test_spec_sin22.csv")
test_sin23=pd.read_csv("test_spec_sin23.csv")
test_sin24=pd.read_csv("test_spec_sin24.csv")
test_sin25=pd.read_csv("test_spec_sin25.csv")
test_sin26=pd.read_csv("test_spec_sin26.csv")
test_sin27=pd.read_csv("test_spec_sin27.csv")
test_sin28=pd.read_csv("test_spec_sin28.csv")
test_sin29=pd.read_csv("test_spec_sin29.csv")
test_sin30=pd.read_csv("test_spec_sin30.csv")
test_sin31=pd.read_csv("test_spec_sin31.csv")
test_sin32=pd.read_csv("test_spec_sin32.csv")
test_sin33=pd.read_csv("test_spec_sin33.csv")
test_sin34=pd.read_csv("test_spec_sin34.csv")
test_sin35=pd.read_csv("test_spec_sin35.csv")


test_inter1=pd.read_csv("test_spec_inter1.csv")
test_inter2=pd.read_csv("test_spec_inter2.csv")
test_inter3=pd.read_csv("test_spec_inter3.csv")
test_inter4=pd.read_csv("test_spec_inter4.csv")
test_inter5=pd.read_csv("test_spec_inter5.csv")
test_inter6=pd.read_csv("test_spec_inter6.csv")
test_inter7=pd.read_csv("test_spec_inter7.csv")
test_inter8=pd.read_csv("test_spec_inter8.csv")
test_inter9=pd.read_csv("test_spec_inter9.csv")
test_inter10=pd.read_csv("test_spec_inter10.csv")
test_inter11=pd.read_csv("test_spec_inter11.csv")
test_inter12=pd.read_csv("test_spec_inter12.csv")
test_inter13=pd.read_csv("test_spec_inter13.csv")
test_inter14=pd.read_csv("test_spec_inter14.csv")
test_inter15=pd.read_csv("test_spec_inter15.csv")
test_inter16=pd.read_csv("test_spec_inter16.csv")
test_inter17=pd.read_csv("test_spec_inter17.csv")
test_inter18=pd.read_csv("test_spec_inter18.csv")
test_inter19=pd.read_csv("test_spec_inter19.csv")
test_inter20=pd.read_csv("test_spec_inter20.csv")
test_inter21=pd.read_csv("test_spec_inter21.csv")
test_inter22=pd.read_csv("test_spec_inter22.csv")
test_inter23=pd.read_csv("test_spec_inter23.csv")
test_inter24=pd.read_csv("test_spec_inter24.csv")
test_inter25=pd.read_csv("test_spec_inter25.csv")
test_inter26=pd.read_csv("test_spec_inter26.csv")
test_inter27=pd.read_csv("test_spec_inter27.csv")
test_inter28=pd.read_csv("test_spec_inter28.csv")
test_inter29=pd.read_csv("test_spec_inter29.csv")
test_inter30=pd.read_csv("test_spec_inter30.csv")
test_inter31=pd.read_csv("test_spec_inter31.csv")
test_inter32=pd.read_csv("test_spec_inter32.csv")
test_inter33=pd.read_csv("test_spec_inter33.csv")
test_inter34=pd.read_csv("test_spec_inter34.csv")
test_inter35=pd.read_csv("test_spec_inter35.csv")



test_sag1=pd.read_csv("test_spec_sag1.csv")
test_sag2=pd.read_csv("test_spec_sag2.csv")
test_sag3=pd.read_csv("test_spec_sag3.csv")
test_sag4=pd.read_csv("test_spec_sag4.csv")
test_sag5=pd.read_csv("test_spec_sag5.csv")
test_sag6=pd.read_csv("test_spec_sag6.csv")
test_sag7=pd.read_csv("test_spec_sag7.csv")
test_sag8=pd.read_csv("test_spec_sag8.csv")
test_sag9=pd.read_csv("test_spec_sag9.csv")
test_sag10=pd.read_csv("test_spec_sag10.csv")
test_sag11=pd.read_csv("test_spec_sag11.csv")
test_sag12=pd.read_csv("test_spec_sag12.csv")
test_sag13=pd.read_csv("test_spec_sag13.csv")
test_sag14=pd.read_csv("test_spec_sag14.csv")
test_sag15=pd.read_csv("test_spec_sag15.csv")
test_sag16=pd.read_csv("test_spec_sag16.csv")
test_sag17=pd.read_csv("test_spec_sag17.csv")
test_sag18=pd.read_csv("test_spec_sag18.csv")
test_sag19=pd.read_csv("test_spec_sag19.csv")
test_sag20=pd.read_csv("test_spec_sag20.csv")
test_sag21=pd.read_csv("test_spec_sag21.csv")
test_sag22=pd.read_csv("test_spec_sag22.csv")
test_sag23=pd.read_csv("test_spec_sag23.csv")
test_sag24=pd.read_csv("test_spec_sag24.csv")
test_sag25=pd.read_csv("test_spec_sag25.csv")
test_sag26=pd.read_csv("test_spec_sag26.csv")
test_sag27=pd.read_csv("test_spec_sag27.csv")
test_sag28=pd.read_csv("test_spec_sag28.csv")
test_sag29=pd.read_csv("test_spec_sag29.csv")
test_sag30=pd.read_csv("test_spec_sag30.csv")
test_sag31=pd.read_csv("test_spec_sag31.csv")
test_sag32=pd.read_csv("test_spec_sag32.csv")
test_sag33=pd.read_csv("test_spec_sag33.csv")
test_sag34=pd.read_csv("test_spec_sag34.csv")
test_sag35=pd.read_csv("test_spec_sag35.csv")




test_swell1=pd.read_csv("test_spec_swell1.csv")
test_swell2=pd.read_csv("test_spec_swell2.csv")
test_swell3=pd.read_csv("test_spec_swell3.csv")
test_swell4=pd.read_csv("test_spec_swell4.csv")
test_swell5=pd.read_csv("test_spec_swell5.csv")
test_swell6=pd.read_csv("test_spec_swell6.csv")
test_swell7=pd.read_csv("test_spec_swell7.csv")
test_swell8=pd.read_csv("test_spec_swell8.csv")
test_swell9=pd.read_csv("test_spec_swell9.csv")
test_swell10=pd.read_csv("test_spec_swell10.csv")
test_swell11=pd.read_csv("test_spec_swell11.csv")
test_swell12=pd.read_csv("test_spec_swell12.csv")
test_swell13=pd.read_csv("test_spec_swell13.csv")
test_swell14=pd.read_csv("test_spec_swell14.csv")
test_swell15=pd.read_csv("test_spec_swell15.csv")
test_swell16=pd.read_csv("test_spec_swell16.csv")
test_swell17=pd.read_csv("test_spec_swell17.csv")
test_swell18=pd.read_csv("test_spec_swell18.csv")
test_swell19=pd.read_csv("test_spec_swell19.csv")
test_swell20=pd.read_csv("test_spec_swell20.csv")
test_swell21=pd.read_csv("test_spec_swell21.csv")
test_swell22=pd.read_csv("test_spec_swell22.csv")
test_swell23=pd.read_csv("test_spec_swell23.csv")
test_swell24=pd.read_csv("test_spec_swell24.csv")
test_swell25=pd.read_csv("test_spec_swell25.csv")
test_swell26=pd.read_csv("test_spec_swell26.csv")
test_swell27=pd.read_csv("test_spec_swell27.csv")
test_swell28=pd.read_csv("test_spec_swell28.csv")
test_swell29=pd.read_csv("test_spec_swell29.csv")
test_swell30=pd.read_csv("test_spec_swell30.csv")
test_swell31=pd.read_csv("test_spec_swell31.csv")
test_swell32=pd.read_csv("test_spec_swell32.csv")
test_swell33=pd.read_csv("test_spec_swell33.csv")
test_swell34=pd.read_csv("test_spec_swell34.csv")
test_swell35=pd.read_csv("test_spec_swell35.csv")










cols=["Col0","Col1","Col2","Col3","Col4","Col5","Col6"]


import numpy as np
for i in cols:
    for j in range(len(sin1)):
        str=sin1[i][j].replace("i","j")
        sin1[i][j]=abs(complex(str))

print("sin1 = ",sin1)
print(sin1.dtypes)
for i in cols:
    for j in range(len(sin2)):
        str=sin2[i][j].replace("i","j")
        sin2[i][j]=abs(complex(str))


for i in cols:
    for j in range(len(sin3)):
        str=sin3[i][j].replace("i","j")
        sin3[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(sin4)):
        str=sin4[i][j].replace("i","j")
        sin4[i][j]=abs(complex(str))


for i in cols:
    for j in range(len(sin5)):
        str=sin5[i][j].replace("i","j")
        sin5[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sin6)):
        str=sin6[i][j].replace("i","j")
        sin6[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sin7)):
        str=sin7[i][j].replace("i","j")
        sin7[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(sin8)):
        str=sin8[i][j].replace("i","j")
        sin8[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sin9)):
        str=sin9[i][j].replace("i","j")
        sin9[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sin10)):
        str=sin10[i][j].replace("i","j")
        sin10[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sin11)):
        str=sin11[i][j].replace("i","j")
        sin11[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sin12)):
        str=sin12[i][j].replace("i","j")
        sin12[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(sin13)):
        str=sin13[i][j].replace("i","j")
        sin13[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(sin14)):
        str=sin14[i][j].replace("i","j")
        sin14[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(sin15)):
        str=sin15[i][j].replace("i","j")
        sin15[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(sin16)):
        str=sin16[i][j].replace("i","j")
        sin16[i][j]=abs(complex(str))


for i in cols:
    for j in range(len(sin17)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=sin17[i][j].replace("i","j")
        sin17[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(sin18)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=sin18[i][j].replace("i","j")
        sin18[i][j]=abs(complex(str))


for i in cols:
    for j in range(len(test_sin1)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin1[i][j].replace("i","j")
        test_sin1[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin2)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin2[i][j].replace("i","j")
        test_sin2[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin3)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin3[i][j].replace("i","j")
        test_sin3[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin4)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin4[i][j].replace("i","j")
        test_sin4[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin5)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin5[i][j].replace("i","j")
        test_sin5[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin6)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin6[i][j].replace("i","j")
        test_sin6[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin7)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin7[i][j].replace("i","j")
        test_sin7[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin8)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin8[i][j].replace("i","j")
        test_sin8[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin9)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin9[i][j].replace("i","j")
        test_sin9[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin10)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin10[i][j].replace("i","j")
        test_sin10[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin11)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin11[i][j].replace("i","j")
        test_sin11[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin12)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin12[i][j].replace("i","j")
        test_sin12[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin13)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin13[i][j].replace("i","j")
        test_sin13[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin14)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin14[i][j].replace("i","j")
        test_sin14[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin15)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin15[i][j].replace("i","j")
        test_sin15[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin16)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin16[i][j].replace("i","j")
        test_sin16[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin17)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin17[i][j].replace("i","j")
        test_sin17[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin18)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin18[i][j].replace("i","j")
        test_sin18[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin19)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin19[i][j].replace("i","j")
        test_sin19[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(test_sin20)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=test_sin20[i][j].replace("i","j")
        test_sin20[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(sin19)):
        #TEST7[i][j]=str(TEST7[i][j])
        str=sin19[i][j].replace("i","j")
        sin19[i][j]=abs(complex(str))





for i in cols:
    for j in range(len(sag1)):
        str=sag1[i][j].replace("i","j")
        sag1[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag2)):
        str=sag2[i][j].replace("i","j")
        sag2[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag3)):
        str=sag3[i][j].replace("i","j")
        sag3[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag4)):
        str=sag4[i][j].replace("i","j")
        sag4[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag5)):
        str=sag5[i][j].replace("i","j")
        sag5[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag6)):
        str=sag6[i][j].replace("i","j")
        sag6[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag7)):
        str=sag7[i][j].replace("i","j")
        sag7[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag8)):
        str=sag8[i][j].replace("i","j")
        sag8[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag9)):
        str=sag9[i][j].replace("i","j")
        sag9[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag10)):
        str=sag10[i][j].replace("i","j")
        sag10[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag11)):
        str=sag11[i][j].replace("i","j")
        sag11[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag12)):
        str=sag12[i][j].replace("i","j")
        sag12[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag13)):
        str=sag13[i][j].replace("i","j")
        sag13[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag14)):
        str=sag14[i][j].replace("i","j")
        sag14[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag15)):
        str=sag15[i][j].replace("i","j")
        sag15[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag16)):
        str=sag16[i][j].replace("i","j")
        sag16[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag17)):
        str=sag17[i][j].replace("i","j")
        sag17[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(sag18)):
        str=sag18[i][j].replace("i","j")
        sag18[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(sag19)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag19[i][j].replace("i", "j")
        sag19[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag20)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag20[i][j].replace("i", "j")
        sag20[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag21)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag21[i][j].replace("i", "j")
        sag21[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag22)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag22[i][j].replace("i", "j")
        sag22[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag23)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag23[i][j].replace("i", "j")
        sag23[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag24)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag24[i][j].replace("i", "j")
        sag24[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag25)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag25[i][j].replace("i", "j")
        sag25[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag26)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag26[i][j].replace("i", "j")
        sag26[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag27)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag27[i][j].replace("i", "j")
        sag27[i][j] = abs(complex(str))


for i in cols:
    for j in range(len(sag28)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag28[i][j].replace("i", "j")
        sag28[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag29)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag29[i][j].replace("i", "j")
        sag29[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag30)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag30[i][j].replace("i", "j")
        sag30[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag31)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag31[i][j].replace("i", "j")
        sag31[i][j] = abs(complex(str))


for i in cols:
    for j in range(len(sag32)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag32[i][j].replace("i", "j")
        sag32[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag33)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag33[i][j].replace("i", "j")
        sag33[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag34)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag34[i][j].replace("i", "j")
        sag34[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag35)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag35[i][j].replace("i", "j")
        sag35[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag36)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag36[i][j].replace("i", "j")
        sag36[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag37)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag37[i][j].replace("i", "j")
        sag37[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag38)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag38[i][j].replace("i", "j")
        sag38[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(sag39)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag39[i][j].replace("i", "j")
        sag39[i][j] = abs(complex(str))


for i in cols:
    for j in range(len(sag40)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag40[i][j].replace("i", "j")
        sag40[i][j] = abs(complex(str))


for i in cols:
    for j in range(len(sag41)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = sag41[i][j].replace("i", "j")
        sag41[i][j] = abs(complex(str))







for i in cols:
    for j in range(len(swell1)):
        str=swell1[i][j].replace("i","j")
        swell1[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell2)):
        str=swell2[i][j].replace("i","j")
        swell2[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell3)):
        str=swell3[i][j].replace("i","j")
        swell3[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell4)):
        str=swell4[i][j].replace("i","j")
        swell4[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell5)):
        str=swell5[i][j].replace("i","j")
        swell5[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell6)):
        str=swell6[i][j].replace("i","j")
        swell6[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell7)):
        str=swell7[i][j].replace("i","j")
        swell7[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell8)):
        str=swell8[i][j].replace("i","j")
        swell8[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell9)):
        str=swell9[i][j].replace("i","j")
        swell9[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell10)):
        str=swell10[i][j].replace("i","j")
        swell10[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell11)):
        str=swell11[i][j].replace("i","j")
        swell11[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell12)):
        str=swell12[i][j].replace("i","j")
        swell12[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell13)):
        str=swell13[i][j].replace("i","j")
        swell13[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell14)):
        str=swell14[i][j].replace("i","j")
        swell14[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(swell15)):
        str=swell15[i][j].replace("i","j")
        swell15[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell16)):
        str=swell16[i][j].replace("i","j")
        swell16[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell17)):
        str=swell17[i][j].replace("i","j")
        swell17[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell18)):
        str=swell18[i][j].replace("i","j")
        swell18[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell19)):
        str=swell19[i][j].replace("i","j")
        swell19[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell20)):
        str=swell20[i][j].replace("i","j")
        swell20[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell21)):
        str=swell21[i][j].replace("i","j")
        swell21[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell22)):
        str=swell22[i][j].replace("i","j")
        swell22[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell23)):
        str=swell23[i][j].replace("i","j")
        swell23[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell24)):
        str=swell24[i][j].replace("i","j")
        swell24[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell25)):
        str=swell25[i][j].replace("i","j")
        swell25[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell26)):
        str=swell26[i][j].replace("i","j")
        swell26[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell27)):
        str=swell27[i][j].replace("i","j")
        swell27[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell28)):
        str=swell28[i][j].replace("i","j")
        swell28[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell29)):
        str=swell29[i][j].replace("i","j")
        swell29[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell30)):
        str=swell30[i][j].replace("i","j")
        swell30[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell31)):
        str=swell31[i][j].replace("i","j")
        swell31[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell32)):
        str=swell32[i][j].replace("i","j")
        swell32[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell33)):
        str=swell33[i][j].replace("i","j")
        swell33[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell34)):
        str=swell34[i][j].replace("i","j")
        swell34[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell35)):
        str=swell35[i][j].replace("i","j")
        swell35[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(swell36)):
        str=swell36[i][j].replace("i","j")
        swell36[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(swell37)):
        str=swell37[i][j].replace("i","j")
        swell37[i][j]=abs(complex(str))

for i in cols:
    for j in range(len(swell38)):
        #swell38[i][j]=str(swell38[i][j])
        str = swell38[i][j].replace("i", "j")
        swell38[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell39)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell39[i][j].replace("i", "j")
        swell39[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell40)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell40[i][j].replace("i", "j")
        swell40[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell41)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell41[i][j].replace("i", "j")
        swell41[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell42)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell42[i][j].replace("i", "j")
        swell42[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell43)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell43[i][j].replace("i", "j")
        swell43[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell44)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell44[i][j].replace("i", "j")
        swell44[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell45)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell45[i][j].replace("i", "j")
        swell45[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell46)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell46[i][j].replace("i", "j")
        swell46[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell47)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell47[i][j].replace("i", "j")
        swell47[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell48)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell48[i][j].replace("i", "j")
        swell48[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell49)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell49[i][j].replace("i", "j")
        swell49[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell50)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell50[i][j].replace("i", "j")
        swell50[i][j] = abs(complex(str))


for i in cols:
    for j in range(len(swell51)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell51[i][j].replace("i", "j")
        swell51[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell52)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell52[i][j].replace("i", "j")
        swell52[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell53)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell53[i][j].replace("i", "j")
        swell53[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell54)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell54[i][j].replace("i", "j")
        swell54[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell55)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell55[i][j].replace("i", "j")
        swell55[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(swell56)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = swell56[i][j].replace("i", "j")
        swell56[i][j] = abs(complex(str))



for i in cols:
    for j in range(len(harmonic1)):
        str=harmonic1[i][j].replace("i","j")
        harmonic1[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic2)):
        str=harmonic2[i][j].replace("i","j")
        harmonic2[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic3)):
        str=harmonic3[i][j].replace("i","j")
        harmonic3[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic4)):
        str=harmonic4[i][j].replace("i","j")
        harmonic4[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic5)):
        str=harmonic5[i][j].replace("i","j")
        harmonic5[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic6)):
        str=harmonic6[i][j].replace("i","j")
        harmonic6[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic7)):
        str=harmonic7[i][j].replace("i","j")
        harmonic7[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic8)):
        str=harmonic8[i][j].replace("i","j")
        harmonic8[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic9)):
        str=harmonic9[i][j].replace("i","j")
        harmonic9[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic10)):
        str=harmonic10[i][j].replace("i","j")
        harmonic10[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic11)):
        str=harmonic11[i][j].replace("i","j")
        harmonic11[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic12)):
        str=harmonic12[i][j].replace("i","j")
        harmonic12[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic13)):
        str=harmonic13[i][j].replace("i","j")
        harmonic13[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic14)):
        str=harmonic14[i][j].replace("i","j")
        harmonic14[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic15)):
        str=harmonic15[i][j].replace("i","j")
        harmonic15[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic16)):
        str=harmonic16[i][j].replace("i","j")
        harmonic16[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic17)):
        str=harmonic17[i][j].replace("i","j")
        harmonic17[i][j]=abs(complex(str))
for i in cols:
    for j in range(len(harmonic18)):
        str=harmonic18[i][j].replace("i","j")
        harmonic18[i][j]=abs(complex(str))


for i in cols:
    for j in range(len(harmonic19)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic19[i][j].replace("i", "j")
        harmonic19[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic20)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic20[i][j].replace("i", "j")
        harmonic20[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic21)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic21[i][j].replace("i", "j")
        harmonic21[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic22)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic22[i][j].replace("i", "j")
        harmonic22[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic23)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic23[i][j].replace("i", "j")
        harmonic23[i][j] = abs(complex(str))


for i in cols:
    for j in range(len(harmonic24)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic24[i][j].replace("i", "j")
        harmonic24[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic25)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic25[i][j].replace("i", "j")
        harmonic25[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic26)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic26[i][j].replace("i", "j")
        harmonic26[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic27)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic27[i][j].replace("i", "j")
        harmonic27[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic28)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic28[i][j].replace("i", "j")
        harmonic28[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic29)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic29[i][j].replace("i", "j")
        harmonic29[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic30)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic30[i][j].replace("i", "j")
        harmonic30[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic31)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic31[i][j].replace("i", "j")
        harmonic31[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic32)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic32[i][j].replace("i", "j")
        harmonic32[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic33)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic33[i][j].replace("i", "j")
        harmonic33[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(harmonic34)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic34[i][j].replace("i", "j")
        harmonic34[i][j] = abs(complex(str))


for i in cols:
    for j in range(len(harmonic35)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = harmonic35[i][j].replace("i", "j")
        harmonic35[i][j] = abs(complex(str))



for i in cols:
    for j in range(len(inter1)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter1[i][j].replace("i", "j")
        inter1[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(inter2)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter2[i][j].replace("i", "j")
        inter2[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(inter3)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter3[i][j].replace("i", "j")
        inter3[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(inter4)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter4[i][j].replace("i", "j")
        inter4[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(inter5)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter5[i][j].replace("i", "j")
        inter5[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(inter6)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter6[i][j].replace("i", "j")
        inter6[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(inter7)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter7[i][j].replace("i", "j")
        inter7[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(inter8)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter8[i][j].replace("i", "j")
        inter8[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(inter9)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter9[i][j].replace("i", "j")
        inter9[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(inter10)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter10[i][j].replace("i", "j")
        inter10[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(inter11)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter11[i][j].replace("i", "j")
        inter11[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(inter12)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = inter12[i][j].replace("i", "j")
        inter12[i][j] = abs(complex(str))

for i in cols:
    for j in range(len(test_inter1)):
        test_inter1[i][j]=str(test_inter1[i][j])
        str = test_inter1[i][j].replace("i", "j")
        test_inter1[i][j] = abs(complex(str))
for i in cols:
    for j in range(len(test_inter2)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = test_inter2[i][j].replace("i", "j")
        test_inter2[i][j] = abs(complex(str))
for i in cols:
    for j in range(len(test_inter3)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = test_inter3[i][j].replace("i", "j")
        test_inter3[i][j] = abs(complex(str))
for i in cols:
    for j in range(len(test_inter4)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = test_inter4[i][j].replace("i", "j")
        test_inter4[i][j] = abs(complex(str))
for i in cols:
    for j in range(len(test_inter5)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = test_inter5[i][j].replace("i", "j")
        test_inter5[i][j] = abs(complex(str))
for i in cols:
    for j in range(len(test_inter6)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = test_inter6[i][j].replace("i", "j")
        test_inter6[i][j] = abs(complex(str))
for i in cols:
    for j in range(len(test_inter7)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = test_inter7[i][j].replace("i", "j")
        test_inter7[i][j] = abs(complex(str))
for i in cols:
    for j in range(len(test_inter8)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = test_inter8[i][j].replace("i", "j")
        test_inter8[i][j] = abs(complex(str))
for i in cols:
    for j in range(len(test_inter9)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = test_inter9[i][j].replace("i", "j")
        test_inter9[i][j] = abs(complex(str))
for i in cols:
    for j in range(len(test_inter10)):
        # TEST7[i][j]=str(TEST7[i][j])
        str = test_inter10[i][j].replace("i", "j")
        test_inter10[i][j] = abs(complex(str))






Sin=pd.concat([sin1,sin2,sin3,sin4,sin5,sin6,sin7,sin8,sin9,sin10,sin11,sin12,sin14,sin15,sin16,sin17,sin18,test_sin1,test_sin2,test_sin3,test_sin4,test_sin5,test_sin6,test_sin7,test_sin8,test_sin9,test_sin10,test_sin11,test_sin12,test_sin13,test_sin14,test_sin15,test_sin16,test_sin17,test_sin18,test_sin19,test_sin20])
Sag=pd.concat([sag1,sag2,sag3,sag4,sag5,sag6,sag7,sag8,sag9,sag10,sag11,sag12,sag13,sag14,sag15,sag16,sag17,sag18,sag19,sag20,sag21,sag22,sag23,sag24,sag25,sag26,sag27,sag28,sag29,sag30,sag31,sag32,sag33,sag34,sag35,sag36,sag37,sag38,sag39,sag40,sag41])
Swell=pd.concat([swell1,swell2,swell3,swell4,swell5,swell6,swell7,swell8,swell9,swell10,swell11,swell12,swell13,swell14,swell15,swell16,swell17,swell18,swell19,swell20,swell21,swell22,swell23,swell24,swell25,swell26,swell27,swell28,swell29,swell30,swell31,swell32,swell33,swell34,swell35,swell36,swell37,swell38,swell39,swell40,swell41,swell42,swell43,swell44,swell45,swell46,swell47,swell48,swell49,swell50,swell51,swell52,swell53,swell54,swell55,swell56])

Harmonic=pd.concat([harmonic1,harmonic2,harmonic3,harmonic4,harmonic5,harmonic6,harmonic7,harmonic8,harmonic9,harmonic10,harmonic11,harmonic12,harmonic13,harmonic14,harmonic15,harmonic16,harmonic17,harmonic18,harmonic19,harmonic20,harmonic21,harmonic21,harmonic22,harmonic23,harmonic24,harmonic25,harmonic26,harmonic27,harmonic28,harmonic29,harmonic30,harmonic31,harmonic32,harmonic33,harmonic34,harmonic35])
Inter=pd.concat([inter1,inter2,inter3,inter4,inter5,inter6,inter7,inter8,inter9,inter10,inter11,inter12,test_inter1,test_inter2,test_inter3,test_inter4,test_inter5,test_inter6,test_inter7,test_inter8,test_inter9,test_inter10])



lst=[1]*len(Sin)
Sin["Output"]=lst


lst=[2]*len(Sag)
Sag["Output"]=lst


lst=[3]*len(Swell)
Swell["Output"]=lst
lst=[4]*len(Harmonic)
Harmonic["Output"]=lst


lst=[5]*len(Inter)
Inter["Output"]=lst



cols=["Col0","Col1","Col2","Col3","Col4","Col5","Col6"]
lst=[1]*len(Sin)


df0=pd.concat([Sin,Sag,Swell,Harmonic,Inter])
print(df0)

plt.show()
x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output

x_train,x_test,y_train,y_test= train_test_split(x,y,test_size=0.2)
print("test sample size = ",len(x_test),"train sample size = ",len(x_train))
#print(y_train)
#print(y_test)

knn=KNeighborsClassifier(n_neighbors=5)
knn.fit(x_train,y_train)
print('accuracy = ',knn.score(x_test,y_test)*100,"%")

df0=pd.concat([Inter])
x=df0.drop(['Output'],axis='columns')
y=df0.Output
print('accuracy = ',knn.score(x,y)*100,"%")





