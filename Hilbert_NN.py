import tensorflow as tf
import numpy as np
import pandas as pd
mnist = tf.keras.datasets.mnist
from sklearn.model_selection import train_test_split
#(x_train ,y_train),(x_test,y_test)=mnist.load_data()
#print(type(x_train))

sin1 = pd.read_csv('hht_sin1.csv')
sag1 = pd.read_csv('hht_sag1.csv')
swell1=pd.read_csv("hht_swell1.csv")
harmonic1=pd.read_csv("hht_harmonic1.csv")


sin2=pd.read_csv("hht_sin2.csv")
sin3=pd.read_csv("hht_sin3.csv")
sin4=pd.read_csv("hht_sin4.csv")
sin5=pd.read_csv("hht_sin5.csv")
sin6=pd.read_csv("hht_sin6.csv")
sin7=pd.read_csv("hht_sin7.csv")
sin8=pd.read_csv("hht_sin8.csv")
sin9=pd.read_csv("hht_sin9.csv")
sin10=pd.read_csv("hht_sin10.csv")
sin11=pd.read_csv("hht_sin11.csv")
sin12=pd.read_csv("hht_sin12.csv")
sin14=pd.read_csv("hht_sin14.csv")
sin15=pd.read_csv("hht_sin15.csv")
sin16=pd.read_csv("hht_sin16.csv")
sin17=pd.read_csv("hht_sin17.csv")
sin18=pd.read_csv("hht_sin18.csv")
sin19=pd.read_csv("hht_sin19.csv")







sag2=pd.read_csv("hht_sag2.csv")
sag3=pd.read_csv("hht_sag3.csv")
sag4=pd.read_csv("hht_sag4.csv")
sag5=pd.read_csv("hht_sag5.csv")
sag6=pd.read_csv("hht_sag6.csv")
sag7=pd.read_csv("hht_sag7.csv")
sag8=pd.read_csv("hht_sag8.csv")
sag9=pd.read_csv("hht_sag9.csv")
sag10=pd.read_csv("hht_sag10.csv")
sag11=pd.read_csv("hht_sag11.csv")
sag12=pd.read_csv("hht_sag12.csv")
sag13=pd.read_csv("hht_sag13.csv")
sag14=pd.read_csv("hht_sag14.csv")
sag15=pd.read_csv("hht_sag15.csv")
sag16=pd.read_csv("hht_sag16.csv")
sag17=pd.read_csv("hht_sag17.csv")
sag18=pd.read_csv("hht_sag18.csv")
sag19 = pd.read_csv("hht_sag19.csv")
sag20 = pd.read_csv("hht_sag20.csv")
sag21 = pd.read_csv("hht_sag21.csv")
sag22 = pd.read_csv("hht_sag22.csv")
sag23 = pd.read_csv("hht_sag23.csv")
sag24 = pd.read_csv("hht_sag24.csv")
sag25 = pd.read_csv("hht_sag25.csv")
sag26 = pd.read_csv("hht_sag26.csv")
sag27 = pd.read_csv("hht_sag27.csv")
sag28 = pd.read_csv("hht_sag28.csv")
sag29 = pd.read_csv("hht_sag29.csv")
sag30 = pd.read_csv("hht_sag30.csv")
sag31 = pd.read_csv("hht_sag31.csv")
sag32 = pd.read_csv("hht_sag32.csv")
sag33 = pd.read_csv("hht_sag33.csv")
sag34 = pd.read_csv("hht_sag34.csv")
sag35 = pd.read_csv("hht_sag35.csv")
sag36 = pd.read_csv("hht_sag36.csv")
sag37 = pd.read_csv("hht_sag37.csv")
sag38 = pd.read_csv("hht_sag38.csv")
sag39 = pd.read_csv("hht_sag39.csv")
sag40 = pd.read_csv("hht_sag40.csv")
sag41 = pd.read_csv("hht_sag41.csv")





swell2=pd.read_csv("hht_swell2.csv")
swell3=pd.read_csv("hht_swell3.csv")
swell4=pd.read_csv("hht_swell4.csv")
swell5=pd.read_csv("hht_swell5.csv")
swell6=pd.read_csv("hht_swell6.csv")
swell7=pd.read_csv("hht_swell7.csv")
swell8=pd.read_csv("hht_swell8.csv")
swell9=pd.read_csv("hht_swell9.csv")
swell10=pd.read_csv("hht_swell10.csv")
swell11=pd.read_csv("hht_swell11.csv")
swell12=pd.read_csv("hht_swell12.csv")
swell13=pd.read_csv("hht_swell13.csv")
swell14=pd.read_csv("hht_swell14.csv")
swell15=pd.read_csv("hht_swell15.csv")
swell16=pd.read_csv("hht_swell16.csv")
swell17=pd.read_csv("hht_swell17.csv")
swell18=pd.read_csv("hht_swell18.csv")
swell19=pd.read_csv("hht_swell19.csv")
swell20=pd.read_csv("hht_swell20.csv")
swell21=pd.read_csv("hht_swell21.csv")
swell22=pd.read_csv("hht_swell22.csv")
swell23=pd.read_csv("hht_swell23.csv")
swell24=pd.read_csv("hht_swell24.csv")
swell25=pd.read_csv("hht_swell25.csv")
swell26=pd.read_csv("hht_swell26.csv")
swell27=pd.read_csv("hht_swell27.csv")
swell28=pd.read_csv("hht_swell28.csv")
swell29=pd.read_csv("hht_swell29.csv")
swell30=pd.read_csv("hht_swell30.csv")
swell31=pd.read_csv("hht_swell31.csv")
swell32=pd.read_csv("hht_swell32.csv")
swell33=pd.read_csv("hht_swell33.csv")
swell34=pd.read_csv("hht_swell34.csv")
swell35=pd.read_csv("hht_swell35.csv")
swell36=pd.read_csv("hht_swell36.csv")
swell37=pd.read_csv("hht_swell37.csv")
swell38=pd.read_csv("hht_swell38.csv")
swell39=pd.read_csv("hht_swell39.csv")
swell40=pd.read_csv("hht_swell40.csv")
swell41=pd.read_csv("hht_swell41.csv")
swell42=pd.read_csv("hht_swell42.csv")
swell43=pd.read_csv("hht_swell43.csv")
swell44=pd.read_csv("hht_swell44.csv")
swell45=pd.read_csv("hht_swell45.csv")
swell46=pd.read_csv("hht_swell46.csv")
swell47=pd.read_csv("hht_swell47.csv")
swell48=pd.read_csv("hht_swell48.csv")
swell49=pd.read_csv("hht_swell49.csv")
swell50=pd.read_csv("hht_swell50.csv")
swell51=pd.read_csv("hht_swell51.csv")
swell52=pd.read_csv("hht_swell52.csv")
swell53=pd.read_csv("hht_swell53.csv")
swell54=pd.read_csv("hht_swell54.csv")
swell55=pd.read_csv("hht_swell55.csv")
swell56=pd.read_csv("hht_swell56.csv")




harmonic2=pd.read_csv("hht_harmonic2.csv")
harmonic3=pd.read_csv("hht_harmonic3.csv")
harmonic4=pd.read_csv("hht_harmonic4.csv")
harmonic5=pd.read_csv("hht_harmonic5.csv")
harmonic6=pd.read_csv("hht_harmonic6.csv")
harmonic7=pd.read_csv("hht_harmonic7.csv")
harmonic8=pd.read_csv("hht_harmonic8.csv")
harmonic9=pd.read_csv("hht_harmonic9.csv")
harmonic10=pd.read_csv("hht_harmonic10.csv")
harmonic11=pd.read_csv("hht_harmonic11.csv")
harmonic12=pd.read_csv("hht_harmonic12.csv")
harmonic13=pd.read_csv("hht_harmonic13.csv")
harmonic14=pd.read_csv("hht_harmonic14.csv")
harmonic15=pd.read_csv("hht_harmonic15.csv")
harmonic16=pd.read_csv("hht_harmonic16.csv")
harmonic17=pd.read_csv("hht_harmonic17.csv")
harmonic18=pd.read_csv("hht_harmonic18.csv")
harmonic19=pd.read_csv("hht_harmonic19.csv")
harmonic20=pd.read_csv("hht_harmonic20.csv")
harmonic21=pd.read_csv("hht_harmonic21.csv")
harmonic22=pd.read_csv("hht_harmonic22.csv")
harmonic23=pd.read_csv("hht_harmonic23.csv")
harmonic24=pd.read_csv("hht_harmonic24.csv")
harmonic25=pd.read_csv("hht_harmonic25.csv")
harmonic26=pd.read_csv("hht_harmonic26.csv")
harmonic27=pd.read_csv("hht_harmonic27.csv")
harmonic28=pd.read_csv("hht_harmonic28.csv")
harmonic29=pd.read_csv("hht_harmonic29.csv")
harmonic30=pd.read_csv("hht_harmonic30.csv")
harmonic31=pd.read_csv("hht_harmonic31.csv")
harmonic32=pd.read_csv("hht_harmonic32.csv")
harmonic33=pd.read_csv("hht_harmonic33.csv")
harmonic34=pd.read_csv("hht_harmonic34.csv")
harmonic35=pd.read_csv("hht_harmonic35.csv")


inter1=pd.read_csv("hht_inter1.csv")
inter2=pd.read_csv("hht_inter2.csv")
inter3=pd.read_csv("hht_inter3.csv")
inter4=pd.read_csv("hht_inter4.csv")
inter5=pd.read_csv("hht_inter5.csv")
inter6=pd.read_csv("hht_inter6.csv")
inter7=pd.read_csv("hht_inter7.csv")
inter8=pd.read_csv("hht_inter8.csv")
inter9=pd.read_csv("hht_inter9.csv")
inter10=pd.read_csv("hht_inter10.csv")
inter11=pd.read_csv("hht_inter11.csv")
inter12=pd.read_csv("hht_inter12.csv")


test_harmonic1=pd.read_csv("test_hht_harmonic1.csv")
test_harmonic2=pd.read_csv("test_hht_harmonic2.csv")
test_harmonic3=pd.read_csv("test_hht_harmonic3.csv")
test_harmonic4=pd.read_csv("test_hht_harmonic4.csv")
test_harmonic5=pd.read_csv("test_hht_harmonic5.csv")
test_harmonic6=pd.read_csv("test_hht_harmonic6.csv")
test_harmonic7=pd.read_csv("test_hht_harmonic7.csv")
test_harmonic8=pd.read_csv("test_hht_harmonic8.csv")
test_harmonic9=pd.read_csv("test_hht_harmonic9.csv")
test_harmonic10=pd.read_csv("test_hht_harmonic10.csv")
test_harmonic11=pd.read_csv("test_hht_harmonic11.csv")
test_harmonic12=pd.read_csv("test_hht_harmonic12.csv")
test_harmonic13=pd.read_csv("test_hht_harmonic13.csv")
test_harmonic14=pd.read_csv("test_hht_harmonic14.csv")
test_harmonic15=pd.read_csv("test_hht_harmonic15.csv")
test_harmonic16=pd.read_csv("test_hht_harmonic16.csv")
test_harmonic17=pd.read_csv("test_hht_harmonic17.csv")
test_harmonic18=pd.read_csv("test_hht_harmonic18.csv")
test_harmonic19=pd.read_csv("test_hht_harmonic19.csv")
test_harmonic20=pd.read_csv("test_hht_harmonic20.csv")
test_harmonic21=pd.read_csv("test_hht_harmonic21.csv")
test_harmonic22=pd.read_csv("test_hht_harmonic22.csv")
test_harmonic23=pd.read_csv("test_hht_harmonic23.csv")
test_harmonic24=pd.read_csv("test_hht_harmonic24.csv")
test_harmonic25=pd.read_csv("test_hht_harmonic25.csv")
test_harmonic26=pd.read_csv("test_hht_harmonic26.csv")
test_harmonic27=pd.read_csv("test_hht_harmonic27.csv")
test_harmonic28=pd.read_csv("test_hht_harmonic28.csv")
test_harmonic29=pd.read_csv("test_hht_harmonic29.csv")
test_harmonic30=pd.read_csv("test_hht_harmonic30.csv")
test_harmonic31=pd.read_csv("test_hht_harmonic31.csv")
test_harmonic32=pd.read_csv("test_hht_harmonic32.csv")
test_harmonic33=pd.read_csv("test_hht_harmonic33.csv")
test_harmonic34=pd.read_csv("test_hht_harmonic34.csv")
test_harmonic35=pd.read_csv("test_hht_harmonic35.csv")




test_sin1=pd.read_csv("test_hht_sin1.csv")
test_sin2=pd.read_csv("test_hht_sin2.csv")
test_sin3=pd.read_csv("test_hht_sin3.csv")
test_sin4=pd.read_csv("test_hht_sin4.csv")
test_sin5=pd.read_csv("test_hht_sin5.csv")
test_sin6=pd.read_csv("test_hht_sin6.csv")
test_sin7=pd.read_csv("test_hht_sin7.csv")
test_sin8=pd.read_csv("test_hht_sin8.csv")
test_sin9=pd.read_csv("test_hht_sin9.csv")
test_sin10=pd.read_csv("test_hht_sin10.csv")
test_sin11=pd.read_csv("test_hht_sin11.csv")
test_sin12=pd.read_csv("test_hht_sin12.csv")
test_sin13=pd.read_csv("test_hht_sin13.csv")
test_sin14=pd.read_csv("test_hht_sin14.csv")
test_sin15=pd.read_csv("test_hht_sin15.csv")
test_sin16=pd.read_csv("test_hht_sin16.csv")
test_sin17=pd.read_csv("test_hht_sin17.csv")
test_sin18=pd.read_csv("test_hht_sin18.csv")
test_sin19=pd.read_csv("test_hht_sin19.csv")
test_sin20=pd.read_csv("test_hht_sin20.csv")
test_sin21=pd.read_csv("test_hht_sin21.csv")
test_sin22=pd.read_csv("test_hht_sin22.csv")
test_sin23=pd.read_csv("test_hht_sin23.csv")
test_sin24=pd.read_csv("test_hht_sin24.csv")
test_sin25=pd.read_csv("test_hht_sin25.csv")
test_sin26=pd.read_csv("test_hht_sin26.csv")
test_sin27=pd.read_csv("test_hht_sin27.csv")
test_sin28=pd.read_csv("test_hht_sin28.csv")
test_sin29=pd.read_csv("test_hht_sin29.csv")
test_sin30=pd.read_csv("test_hht_sin30.csv")
test_sin31=pd.read_csv("test_hht_sin31.csv")
test_sin32=pd.read_csv("test_hht_sin32.csv")
test_sin33=pd.read_csv("test_hht_sin33.csv")
test_sin34=pd.read_csv("test_hht_sin34.csv")
test_sin35=pd.read_csv("test_hht_sin35.csv")


test_inter1=pd.read_csv("test_hht_inter1.csv")
test_inter2=pd.read_csv("test_hht_inter2.csv")
test_inter3=pd.read_csv("test_hht_inter3.csv")
test_inter4=pd.read_csv("test_hht_inter4.csv")
test_inter5=pd.read_csv("test_hht_inter5.csv")
test_inter6=pd.read_csv("test_hht_inter6.csv")
test_inter7=pd.read_csv("test_hht_inter7.csv")
test_inter8=pd.read_csv("test_hht_inter8.csv")
test_inter9=pd.read_csv("test_hht_inter9.csv")
test_inter10=pd.read_csv("test_hht_inter10.csv")
test_inter11=pd.read_csv("test_hht_inter11.csv")
test_inter12=pd.read_csv("test_hht_inter12.csv")
test_inter13=pd.read_csv("test_hht_inter13.csv")
test_inter14=pd.read_csv("test_hht_inter14.csv")
test_inter15=pd.read_csv("test_hht_inter15.csv")
test_inter16=pd.read_csv("test_hht_inter16.csv")
test_inter17=pd.read_csv("test_hht_inter17.csv")
test_inter18=pd.read_csv("test_hht_inter18.csv")
test_inter19=pd.read_csv("test_hht_inter19.csv")
test_inter20=pd.read_csv("test_hht_inter20.csv")
test_inter21=pd.read_csv("test_hht_inter21.csv")
test_inter22=pd.read_csv("test_hht_inter22.csv")
test_inter23=pd.read_csv("test_hht_inter23.csv")
test_inter24=pd.read_csv("test_hht_inter24.csv")
test_inter25=pd.read_csv("test_hht_inter25.csv")
test_inter26=pd.read_csv("test_hht_inter26.csv")
test_inter27=pd.read_csv("test_hht_inter27.csv")
test_inter28=pd.read_csv("test_hht_inter28.csv")
test_inter29=pd.read_csv("test_hht_inter29.csv")
test_inter30=pd.read_csv("test_hht_inter30.csv")
test_inter31=pd.read_csv("test_hht_inter31.csv")
test_inter32=pd.read_csv("test_hht_inter32.csv")
test_inter33=pd.read_csv("test_hht_inter33.csv")
test_inter34=pd.read_csv("test_hht_inter34.csv")
test_inter35=pd.read_csv("test_hht_inter35.csv")


demo_sin1=pd.read_csv("demo_hht_sin1.csv")
demo_sin2=pd.read_csv("demo_hht_sin2.csv")
demo_sin3=pd.read_csv("demo_hht_sin3.csv")
demo_sin4=pd.read_csv("demo_hht_sin4.csv")
demo_sin5=pd.read_csv("demo_hht_sin5.csv")

demo_sag1=pd.read_csv("demo_hht_sag1.csv")
demo_sag2=pd.read_csv("demo_hht_sag2.csv")
demo_sag3=pd.read_csv("demo_hht_sag3.csv")
demo_sag4=pd.read_csv("demo_hht_sag4.csv")
demo_sag5=pd.read_csv("demo_hht_sag5.csv")

demo_swell1=pd.read_csv("demo_hht_swell1.csv")
demo_swell2=pd.read_csv("demo_hht_swell2.csv")
demo_swell3=pd.read_csv("demo_hht_swell3.csv")
demo_swell4=pd.read_csv("demo_hht_swell4.csv")
demo_swell5=pd.read_csv("demo_hht_swell5.csv")

demo_harmonic1=pd.read_csv("demo_hht_harmonic1.csv")
demo_harmonic2=pd.read_csv("demo_hht_harmonic2.csv")
demo_harmonic3=pd.read_csv("demo_hht_harmonic3.csv")
demo_harmonic4=pd.read_csv("demo_hht_harmonic4.csv")
demo_harmonic5=pd.read_csv("demo_hht_harmonic5.csv")

demo_inter1=pd.read_csv("demo_hht_inter1.csv")
demo_inter2=pd.read_csv("demo_hht_inter2.csv")
demo_inter3=pd.read_csv("demo_hht_inter3.csv")
demo_inter4=pd.read_csv("demo_hht_inter4.csv")
demo_inter5=pd.read_csv("demo_hht_inter5.csv")


test_sag1=pd.read_csv("test_hht_sag1.csv")
test_sag2=pd.read_csv("test_hht_sag2.csv")
test_sag3=pd.read_csv("test_hht_sag3.csv")
test_sag4=pd.read_csv("test_hht_sag4.csv")
test_sag5=pd.read_csv("test_hht_sag5.csv")
test_sag6=pd.read_csv("test_hht_sag6.csv")
test_sag7=pd.read_csv("test_hht_sag7.csv")
test_sag8=pd.read_csv("test_hht_sag8.csv")
test_sag9=pd.read_csv("test_hht_sag9.csv")
test_sag10=pd.read_csv("test_hht_sag10.csv")
test_sag11=pd.read_csv("test_hht_sag11.csv")
test_sag12=pd.read_csv("test_hht_sag12.csv")
test_sag13=pd.read_csv("test_hht_sag13.csv")
test_sag14=pd.read_csv("test_hht_sag14.csv")
test_sag15=pd.read_csv("test_hht_sag15.csv")
test_sag16=pd.read_csv("test_hht_sag16.csv")
test_sag17=pd.read_csv("test_hht_sag17.csv")
test_sag18=pd.read_csv("test_hht_sag18.csv")
test_sag19=pd.read_csv("test_hht_sag19.csv")
test_sag20=pd.read_csv("test_hht_sag20.csv")
test_sag21=pd.read_csv("test_hht_sag21.csv")
test_sag22=pd.read_csv("test_hht_sag22.csv")
test_sag23=pd.read_csv("test_hht_sag23.csv")
test_sag24=pd.read_csv("test_hht_sag24.csv")
test_sag25=pd.read_csv("test_hht_sag25.csv")
test_sag26=pd.read_csv("test_hht_sag26.csv")
test_sag27=pd.read_csv("test_hht_sag27.csv")
test_sag28=pd.read_csv("test_hht_sag28.csv")
test_sag29=pd.read_csv("test_hht_sag29.csv")
test_sag30=pd.read_csv("test_hht_sag30.csv")
test_sag31=pd.read_csv("test_hht_sag31.csv")
test_sag32=pd.read_csv("test_hht_sag32.csv")
test_sag33=pd.read_csv("test_hht_sag33.csv")
test_sag34=pd.read_csv("test_hht_sag34.csv")
test_sag35=pd.read_csv("test_hht_sag35.csv")




test_swell1=pd.read_csv("test_hht_swell1.csv")
test_swell2=pd.read_csv("test_hht_swell2.csv")
test_swell3=pd.read_csv("test_hht_swell3.csv")
test_swell4=pd.read_csv("test_hht_swell4.csv")
test_swell5=pd.read_csv("test_hht_swell5.csv")
test_swell6=pd.read_csv("test_hht_swell6.csv")
test_swell7=pd.read_csv("test_hht_swell7.csv")
test_swell8=pd.read_csv("test_hht_swell8.csv")
test_swell9=pd.read_csv("test_hht_swell9.csv")
test_swell10=pd.read_csv("test_hht_swell10.csv")
test_swell11=pd.read_csv("test_hht_swell11.csv")
test_swell12=pd.read_csv("test_hht_swell12.csv")
test_swell13=pd.read_csv("test_hht_swell13.csv")
test_swell14=pd.read_csv("test_hht_swell14.csv")
test_swell15=pd.read_csv("test_hht_swell15.csv")
test_swell16=pd.read_csv("test_hht_swell16.csv")
test_swell17=pd.read_csv("test_hht_swell17.csv")
test_swell18=pd.read_csv("test_hht_swell18.csv")
test_swell19=pd.read_csv("test_hht_swell19.csv")
test_swell20=pd.read_csv("test_hht_swell20.csv")
test_swell21=pd.read_csv("test_hht_swell21.csv")
test_swell22=pd.read_csv("test_hht_swell22.csv")
test_swell23=pd.read_csv("test_hht_swell23.csv")
test_swell24=pd.read_csv("test_hht_swell24.csv")
test_swell25=pd.read_csv("test_hht_swell25.csv")
test_swell26=pd.read_csv("test_hht_swell26.csv")
test_swell27=pd.read_csv("test_hht_swell27.csv")
test_swell28=pd.read_csv("test_hht_swell28.csv")
test_swell29=pd.read_csv("test_hht_swell29.csv")
test_swell30=pd.read_csv("test_hht_swell30.csv")
test_swell31=pd.read_csv("test_hht_swell31.csv")
test_swell32=pd.read_csv("test_hht_swell32.csv")
test_swell33=pd.read_csv("test_hht_swell33.csv")
test_swell34=pd.read_csv("test_hht_swell34.csv")
test_swell35=pd.read_csv("test_hht_swell35.csv")









cols=["Col0","Col1","Col2","Col3","Col4","Col5","Col6"]


Sin=pd.concat([sin1,sin2,sin3,sin4,sin5,sin6,sin7,sin8,sin10,sin11,sin12,sin9,sin14,sin15,sin16,sin17,sin18,sin19])
Sag=pd.concat([sag1,sag2,sag3,sag4,sag5,sag6,sag7,sag8,sag9,sag10,sag11,sag12,sag13,sag14,sag15,sag16,sag17,sag18,sag19,sag20,sag21,sag22,sag23,sag24,sag25,sag26,sag27,sag28,sag29,sag30,sag31,sag32,sag33,sag34,sag35,sag36,sag37,sag38,sag39,sag40,sag41])
Swell=pd.concat([swell1,swell2,swell3,swell4,swell5,swell6,swell7,swell8,swell9,swell10,swell11,swell12,swell13,swell14,swell15,swell16,swell17,swell18,swell19,swell20,swell21,swell22,swell23,swell24,swell25,swell26,swell27,swell28,swell29,swell30,swell31,swell32,swell33,swell34,swell35,swell36,swell37,swell38,swell39,swell40,swell41,swell42,swell43,swell44,swell45,swell46,swell47,swell48,swell49,swell50,swell51,swell52,swell53,swell54,swell55,swell56])

Harmonic=pd.concat([harmonic1,harmonic2,harmonic3,harmonic4,harmonic5,harmonic6,harmonic7,harmonic8,harmonic9,harmonic10,harmonic11,harmonic12,harmonic13,harmonic14,harmonic15,harmonic16,harmonic17,harmonic18,harmonic19,harmonic20,harmonic21,harmonic22,harmonic23,harmonic24,harmonic25,harmonic26,harmonic27,harmonic28,harmonic29,harmonic30,harmonic31,harmonic32,harmonic33,harmonic34,harmonic35])
Inter=pd.concat([inter1,inter2,inter3,inter4,inter5,inter6,inter7,inter8,inter9,inter10,inter11,inter12])




lst=[0]*len(Sin)
Sin["Output"]=lst


lst=[1]*len(Sag)
Sag["Output"]=lst


lst=[2]*len(Swell)
Swell["Output"]=lst
lst=[3]*len(Harmonic)
Harmonic["Output"]=lst

lst=[4]*len(Inter)
Inter["Output"]=lst



cols=["Col0","Col1","Col2","Col3","Col4","Col5","Col6"]
lst=[1]*len(Sin)


df0=pd.concat([Sin,Sag,Swell,Harmonic,Inter])
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
model.add(tf.keras.layers.Dense(127,activation=tf.nn.relu))
model.add(tf.keras.layers.Dense(127,activation=tf.nn.relu))

model.add(tf.keras.layers.Dense(127,activation=tf.nn.relu))
model.add(tf.keras.layers.Dense(127,activation=tf.nn.relu))

model.add(tf.keras.layers.Dense(5,activation=tf.nn.softmax))

model.compile(optimizer='adam',loss='sparse_categorical_crossentropy',metrics=['accuracy'])

#print(x_train)
#print(y_train)
model.fit(x_train,y_train,epochs=50)

val_loss,val_acc=model.evaluate(x_test,y_test)

#print(val_loss,val_acc)


model.save("model1")
new_model=tf.keras.models.load_model('model1')

predictions = new_model.predict([x_test])
#print(np.argmax(predictions[0]))



df0=pd.concat([Inter])
x=df0.drop(['Output'],axis='columns')
y=df0.Output
x=np.asarray(x_test).astype(np.float64)
y=np.asarray(y_test).astype(np.float64)
val_loss,val_acc=model.evaluate(x,y)
new_model=tf.keras.models.load_model('model1')
predictions = new_model.predict([x])






Sin=pd.concat([sin1,sin2,sin3,sin4,sin5,sin6,sin7,sin8,sin10,sin11,sin12,sin9,sin14,sin15,sin16,sin17,sin18,sin19,test_sin1,test_sin2,test_sin3,test_sin4,test_sin5,test_sin6,test_sin7,test_sin8,test_sin9,test_sin10,test_sin11,test_sin12,test_sin13,test_sin14,test_sin15,test_sin16,test_sin17,test_sin18,test_sin19,test_sin20,test_sin21,test_sin22,test_sin23,test_sin24,test_sin25,test_sin26,test_sin27,test_sin28,test_sin29,test_sin30,test_sin31,test_sin32,test_sin33,test_sin34,test_sin35])
Sag=pd.concat([sag1,sag2,sag3,sag4,sag5,sag6,sag7,sag8,sag9,sag10,sag11,sag12,sag13,sag14,sag15,sag16,sag17,sag18,sag19,sag20,sag21,sag22,sag23,sag24,sag25,sag26,sag27,sag28,sag29,sag30,sag31,sag32,sag33,sag34,sag35,sag36,sag37,sag38,sag39,sag40,sag41,test_sag1,test_sag2,test_sag3,test_sag4,test_sag5,test_sag6,test_sag7,test_sag8,test_sag9,test_sag10,test_sag11,test_sag12,test_sag13,test_sag14,test_sag15,test_sag16,test_sag17,test_sag18,test_sag19,test_sag20,test_sag21,test_sag22,test_sag23,test_sag24,test_sag25,test_sag26,test_sag27,test_sag28,test_sag29,test_sag30,test_sag31,test_sag32,test_sag33,test_sag34,test_sag35])
Swell=pd.concat([swell1,swell2,swell3,swell4,swell5,swell6,swell7,swell8,swell9,swell10,swell11,swell12,swell13,swell14,swell15,swell16,swell17,swell18,swell19,swell20,swell21,swell22,swell23,swell24,swell25,swell26,swell27,swell28,swell29,swell30,swell31,swell32,swell33,swell34,swell35,swell36,swell37,swell38,swell39,swell40,swell41,swell42,swell43,swell44,swell45,swell46,swell47,swell48,swell49,swell50,swell51,swell52,swell53,swell54,swell55,swell56,test_swell1,test_swell2,test_swell3,test_swell4,test_swell5,test_swell6,test_swell7,test_swell8,test_swell9,test_swell10,test_swell11,test_swell12,test_swell13,test_swell14,test_swell15,test_swell16,test_swell17,test_swell18,test_swell19,test_swell20,test_swell21,test_swell22,test_swell23,test_swell24,test_swell25,test_swell26,test_swell27,test_swell28,test_swell29,test_swell30,test_swell31,test_swell32,test_swell33,test_swell34,test_swell35,])

Harmonic=pd.concat([harmonic1,harmonic2,harmonic3,harmonic4,harmonic5,harmonic6,harmonic7,harmonic8,harmonic9,harmonic10,harmonic11,harmonic12,harmonic13,harmonic14,harmonic15,harmonic16,harmonic17,harmonic18,harmonic19,harmonic20,harmonic21,harmonic22,harmonic23,harmonic24,harmonic25,harmonic26,harmonic27,harmonic28,harmonic29,harmonic30,harmonic31,harmonic32,harmonic33,harmonic34,harmonic35,test_harmonic1,test_harmonic2,test_harmonic3,test_harmonic4,test_harmonic5,test_harmonic6,test_harmonic7,test_harmonic8,test_harmonic9,test_harmonic10,test_harmonic11,test_harmonic12,test_harmonic13,test_harmonic14,test_harmonic15,test_harmonic16,test_harmonic17,test_harmonic18,test_harmonic19,test_harmonic20,test_harmonic21,test_harmonic22,test_harmonic23,test_harmonic24,test_harmonic25,test_harmonic26,test_harmonic27,test_harmonic28,test_harmonic29,test_harmonic30,test_harmonic31,test_harmonic32,test_harmonic33,test_harmonic34,test_harmonic35])
Inter=pd.concat([inter1,inter2,inter3,inter4,inter5,inter6,inter7,inter8,inter9,inter10,inter11,inter12,test_inter1,test_inter2,test_inter3,test_inter4,test_inter5,test_inter6,test_inter7,test_inter8,test_inter9,test_inter10,test_inter11,test_inter12,test_inter13,test_inter14,test_inter15,test_inter16,test_inter17,test_inter18,test_inter19,test_inter20,test_inter21,test_inter22,test_inter23,test_inter24,test_inter25,test_inter26,test_inter27,test_inter28,test_inter29,test_inter30,test_inter31,test_inter32,test_inter33,test_inter34,test_inter35])






lst=[0]*len(Sin)
Sin["Output"]=lst


lst=[1]*len(Sag)
Sag["Output"]=lst


lst=[2]*len(Swell)
Swell["Output"]=lst
lst=[3]*len(Harmonic)
Harmonic["Output"]=lst

lst=[4]*len(Inter)
Inter["Output"]=lst



cols=["Col0","Col1","Col2","Col3","Col4","Col5","Col6"]
lst=[1]*len(Sin)


df0=pd.concat([Sin,Sag,Swell,Harmonic,Inter])
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
model.add(tf.keras.layers.Dense(127,activation=tf.nn.relu))
model.add(tf.keras.layers.Dense(127,activation=tf.nn.relu))

model.add(tf.keras.layers.Dense(127,activation=tf.nn.relu))
model.add(tf.keras.layers.Dense(127,activation=tf.nn.relu))

model.add(tf.keras.layers.Dense(5,activation=tf.nn.softmax))

model.compile(optimizer='adam',loss='sparse_categorical_crossentropy',metrics=['accuracy'])

#print(x_train)
#print(y_train)
model.fit(x_train,y_train,epochs=100)

val_loss,val_acc=model.evaluate(x_test,y_test)

#print(val_loss,val_acc)


model.save("model1")
new_model=tf.keras.models.load_model('model1')

predictions = new_model.predict([x_test])
#print(np.argmax(predictions[0]))


df0=pd.concat([Inter])
x=df0.drop(['Output'],axis='columns')
y=df0.Output
x=np.asarray(x_test).astype(np.float64)
y=np.asarray(y_test).astype(np.float64)
val_loss,val_acc=model.evaluate(x,y)
new_model=tf.keras.models.load_model('model1')
predictions = new_model.predict([x])



demo_sin1["Output"]=0
df0=demo_sin1

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sin1 ; ",end=" ")
a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")
demo_sin2["Output"]=0
df0=demo_sin2

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sin2 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_sin3["Output"]=0
df0=demo_sin3

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sin3 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_sin4["Output"]=0
df0=demo_sin4

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sin4 ; ",end=" ")

ans=new_model.predict([x])

print("PREDICTED VALUE = ",np.argmax(0),end=" ")
print("-->",end=" ")
a=np.argmax(0)
if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_sin5["Output"]=0
df0=demo_sin5

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sin5 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_sag1["Output"]=1
df0=demo_sag1

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sag1 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_sag2["Output"]=1
df0=demo_sag2

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sag2 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_sag3["Output"]=1
df0=demo_sag3

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sag3 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_sag4["Output"]=1
df0=demo_sag4

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))


ans=new_model.predict([x])
print("INPUT SIGNAL = demo_sag4 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_sag5["Output"]=1
df0=demo_sag5

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sag5 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")


if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_swell1["Output"]=2
df0=demo_swell1

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_swell1 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_swell2["Output"]=2
df0=demo_swell2

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_swell2 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_swell3["Output"]=2
df0=demo_swell3

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_swell3 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_swell4["Output"]=2
df0=demo_swell4

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_swell4 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_swell5["Output"]=2
df0=demo_swell5

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_swell5 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")
demo_harmonic1["Output"]=3
df0=demo_harmonic1

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_harmonic1 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_harmonic2["Output"]=3
df0=demo_harmonic2

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_harmonic2 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_harmonic3["Output"]=3
df0=demo_harmonic3

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_harmonic3 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_harmonic4["Output"]=3
df0=demo_harmonic4

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_harmonic4 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_harmonic5["Output"]=3
df0=demo_harmonic5

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_harmonic5 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")





demo_inter1["Output"]=4
df0=demo_inter1

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_inter1 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_inter2["Output"]=4
df0=demo_inter2

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_inter2 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_inter3["Output"]=4
df0=demo_inter3

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_inter3 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_inter4["Output"]=4
df0=demo_inter4

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_inter4 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")
if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_inter5["Output"]=4
df0=demo_inter5

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_inter5 ; ",end=" ")

a1=[]
ans=new_model.predict([x])
for i in range(len(demo_sin1)):
    a1.append(np.argmax(ans[i]))

a=max(a1,key=list(a1).count)

print("PREDICTED VALUE = ",a,end=" ")
print("-->",end=" ")

if a==0:
    print("Sin WAVE")
elif a==1:
    print("SAG SIGNAL")
elif a==2:
    print("SWELL SIGNAL")
elif a==3:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

