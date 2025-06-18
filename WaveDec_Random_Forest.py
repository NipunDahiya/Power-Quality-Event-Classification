import pandas as pd
from matplotlib import pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.neighbors import KNeighborsClassifier



sin1 = pd.read_csv('wd_sin1.csv')
sag1 = pd.read_csv('wd_sag1.csv')
swell1=pd.read_csv("wd_swell1.csv")
harmonic1=pd.read_csv("wd_harmonic1.csv")


sin2=pd.read_csv("wd_sin2.csv")
sin3=pd.read_csv("wd_sin3.csv")
sin4=pd.read_csv("wd_sin4.csv")
sin5=pd.read_csv("wd_sin5.csv")
sin6=pd.read_csv("wd_sin6.csv")
sin7=pd.read_csv("wd_sin7.csv")
sin8=pd.read_csv("wd_sin8.csv")
sin9=pd.read_csv("wd_sin9.csv")
sin10=pd.read_csv("wd_sin10.csv")
sin11=pd.read_csv("wd_sin11.csv")
sin12=pd.read_csv("wd_sin12.csv")
sin14=pd.read_csv("wd_sin14.csv")
sin15=pd.read_csv("wd_sin15.csv")
sin16=pd.read_csv("wd_sin16.csv")
sin17=pd.read_csv("wd_sin17.csv")
sin18=pd.read_csv("wd_sin18.csv")
sin19=pd.read_csv("wd_sin19.csv")







sag2=pd.read_csv("wd_sag2.csv")
sag3=pd.read_csv("wd_sag3.csv")
sag4=pd.read_csv("wd_sag4.csv")
sag5=pd.read_csv("wd_sag5.csv")
sag6=pd.read_csv("wd_sag6.csv")
sag7=pd.read_csv("wd_sag7.csv")
sag8=pd.read_csv("wd_sag8.csv")
sag9=pd.read_csv("wd_sag9.csv")
sag10=pd.read_csv("wd_sag10.csv")
sag11=pd.read_csv("wd_sag11.csv")
sag12=pd.read_csv("wd_sag12.csv")
sag13=pd.read_csv("wd_sag13.csv")
sag14=pd.read_csv("wd_sag14.csv")
sag15=pd.read_csv("wd_sag15.csv")
sag16=pd.read_csv("wd_sag16.csv")
sag17=pd.read_csv("wd_sag17.csv")
sag18=pd.read_csv("wd_sag18.csv")
sag19 = pd.read_csv("wd_sag19.csv")
sag20 = pd.read_csv("wd_sag20.csv")
sag21 = pd.read_csv("wd_sag21.csv")
sag22 = pd.read_csv("wd_sag22.csv")
sag23 = pd.read_csv("wd_sag23.csv")
sag24 = pd.read_csv("wd_sag24.csv")
sag25 = pd.read_csv("wd_sag25.csv")
sag26 = pd.read_csv("wd_sag26.csv")
sag27 = pd.read_csv("wd_sag27.csv")
sag28 = pd.read_csv("wd_sag28.csv")
sag29 = pd.read_csv("wd_sag29.csv")
sag30 = pd.read_csv("wd_sag30.csv")
sag31 = pd.read_csv("wd_sag31.csv")
sag32 = pd.read_csv("wd_sag32.csv")
sag33 = pd.read_csv("wd_sag33.csv")
sag34 = pd.read_csv("wd_sag34.csv")
sag35 = pd.read_csv("wd_sag35.csv")
sag36 = pd.read_csv("wd_sag36.csv")
sag37 = pd.read_csv("wd_sag37.csv")
sag38 = pd.read_csv("wd_sag38.csv")
sag39 = pd.read_csv("wd_sag39.csv")
sag40 = pd.read_csv("wd_sag40.csv")
sag41 = pd.read_csv("wd_sag41.csv")





swell2=pd.read_csv("wd_swell2.csv")
swell3=pd.read_csv("wd_swell3.csv")
swell4=pd.read_csv("wd_swell4.csv")
swell5=pd.read_csv("wd_swell5.csv")
swell6=pd.read_csv("wd_swell6.csv")
swell7=pd.read_csv("wd_swell7.csv")
swell8=pd.read_csv("wd_swell8.csv")
swell9=pd.read_csv("wd_swell9.csv")
swell10=pd.read_csv("wd_swell10.csv")
swell11=pd.read_csv("wd_swell11.csv")
swell12=pd.read_csv("wd_swell12.csv")
swell13=pd.read_csv("wd_swell13.csv")
swell14=pd.read_csv("wd_swell14.csv")
swell15=pd.read_csv("wd_swell15.csv")
swell16=pd.read_csv("wd_swell16.csv")
swell17=pd.read_csv("wd_swell17.csv")
swell18=pd.read_csv("wd_swell18.csv")
swell19=pd.read_csv("wd_swell19.csv")
swell20=pd.read_csv("wd_swell20.csv")
swell21=pd.read_csv("wd_swell21.csv")
swell22=pd.read_csv("wd_swell22.csv")
swell23=pd.read_csv("wd_swell23.csv")
swell24=pd.read_csv("wd_swell24.csv")
swell25=pd.read_csv("wd_swell25.csv")
swell26=pd.read_csv("wd_swell26.csv")
swell27=pd.read_csv("wd_swell27.csv")
swell28=pd.read_csv("wd_swell28.csv")
swell29=pd.read_csv("wd_swell29.csv")
swell30=pd.read_csv("wd_swell30.csv")
swell31=pd.read_csv("wd_swell31.csv")
swell32=pd.read_csv("wd_swell32.csv")
swell33=pd.read_csv("wd_swell33.csv")
swell34=pd.read_csv("wd_swell34.csv")
swell35=pd.read_csv("wd_swell35.csv")
swell36=pd.read_csv("wd_swell36.csv")
swell37=pd.read_csv("wd_swell37.csv")
swell38=pd.read_csv("wd_swell38.csv")
swell39=pd.read_csv("wd_swell39.csv")
swell40=pd.read_csv("wd_swell40.csv")
swell41=pd.read_csv("wd_swell41.csv")
swell42=pd.read_csv("wd_swell42.csv")
swell43=pd.read_csv("wd_swell43.csv")
swell44=pd.read_csv("wd_swell44.csv")
swell45=pd.read_csv("wd_swell45.csv")
swell46=pd.read_csv("wd_swell46.csv")
swell47=pd.read_csv("wd_swell47.csv")
swell48=pd.read_csv("wd_swell48.csv")
swell49=pd.read_csv("wd_swell49.csv")
swell50=pd.read_csv("wd_swell50.csv")
swell51=pd.read_csv("wd_swell51.csv")
swell52=pd.read_csv("wd_swell52.csv")
swell53=pd.read_csv("wd_swell53.csv")
swell54=pd.read_csv("wd_swell54.csv")
swell55=pd.read_csv("wd_swell55.csv")
swell56=pd.read_csv("wd_swell56.csv")




harmonic2=pd.read_csv("wd_harmonic2.csv")
harmonic3=pd.read_csv("wd_harmonic3.csv")
harmonic4=pd.read_csv("wd_harmonic4.csv")
harmonic5=pd.read_csv("wd_harmonic5.csv")
harmonic6=pd.read_csv("wd_harmonic6.csv")
harmonic7=pd.read_csv("wd_harmonic7.csv")
harmonic8=pd.read_csv("wd_harmonic8.csv")
harmonic9=pd.read_csv("wd_harmonic9.csv")
harmonic10=pd.read_csv("wd_harmonic10.csv")
harmonic11=pd.read_csv("wd_harmonic11.csv")
harmonic12=pd.read_csv("wd_harmonic12.csv")
harmonic13=pd.read_csv("wd_harmonic13.csv")
harmonic14=pd.read_csv("wd_harmonic14.csv")
harmonic15=pd.read_csv("wd_harmonic15.csv")
harmonic16=pd.read_csv("wd_harmonic16.csv")
harmonic17=pd.read_csv("wd_harmonic17.csv")
harmonic18=pd.read_csv("wd_harmonic18.csv")
harmonic19=pd.read_csv("wd_harmonic19.csv")
harmonic20=pd.read_csv("wd_harmonic20.csv")
harmonic21=pd.read_csv("wd_harmonic21.csv")
harmonic22=pd.read_csv("wd_harmonic22.csv")
harmonic23=pd.read_csv("wd_harmonic23.csv")
harmonic24=pd.read_csv("wd_harmonic24.csv")
harmonic25=pd.read_csv("wd_harmonic25.csv")
harmonic26=pd.read_csv("wd_harmonic26.csv")
harmonic27=pd.read_csv("wd_harmonic27.csv")
harmonic28=pd.read_csv("wd_harmonic28.csv")
harmonic29=pd.read_csv("wd_harmonic29.csv")
harmonic30=pd.read_csv("wd_harmonic30.csv")
harmonic31=pd.read_csv("wd_harmonic31.csv")
harmonic32=pd.read_csv("wd_harmonic32.csv")
harmonic33=pd.read_csv("wd_harmonic33.csv")
harmonic34=pd.read_csv("wd_harmonic34.csv")
harmonic35=pd.read_csv("wd_harmonic35.csv")

inter1=pd.read_csv("wd_inter1.csv")
inter2=pd.read_csv("wd_inter2.csv")
inter3=pd.read_csv("wd_inter3.csv")
inter4=pd.read_csv("wd_inter4.csv")
inter5=pd.read_csv("wd_inter5.csv")
inter6=pd.read_csv("wd_inter6.csv")
inter7=pd.read_csv("wd_inter7.csv")
inter8=pd.read_csv("wd_inter8.csv")
inter9=pd.read_csv("wd_inter9.csv")
inter10=pd.read_csv("wd_inter10.csv")
inter11=pd.read_csv("wd_inter11.csv")
inter12=pd.read_csv("wd_inter12.csv")


test_harmonic1=pd.read_csv("test_wd_harmonic1.csv")
test_harmonic2=pd.read_csv("test_wd_harmonic2.csv")
test_harmonic3=pd.read_csv("test_wd_harmonic3.csv")
test_harmonic4=pd.read_csv("test_wd_harmonic4.csv")
test_harmonic5=pd.read_csv("test_wd_harmonic5.csv")
test_harmonic6=pd.read_csv("test_wd_harmonic6.csv")
test_harmonic7=pd.read_csv("test_wd_harmonic7.csv")
test_harmonic8=pd.read_csv("test_wd_harmonic8.csv")
test_harmonic9=pd.read_csv("test_wd_harmonic9.csv")
test_harmonic10=pd.read_csv("test_wd_harmonic10.csv")
test_harmonic11=pd.read_csv("test_wd_harmonic11.csv")
test_harmonic12=pd.read_csv("test_wd_harmonic12.csv")
test_harmonic13=pd.read_csv("test_wd_harmonic13.csv")
test_harmonic14=pd.read_csv("test_wd_harmonic14.csv")
test_harmonic15=pd.read_csv("test_wd_harmonic15.csv")
test_harmonic16=pd.read_csv("test_wd_harmonic16.csv")
test_harmonic17=pd.read_csv("test_wd_harmonic17.csv")
test_harmonic18=pd.read_csv("test_wd_harmonic18.csv")
test_harmonic19=pd.read_csv("test_wd_harmonic19.csv")
test_harmonic20=pd.read_csv("test_wd_harmonic20.csv")
test_harmonic21=pd.read_csv("test_wd_harmonic21.csv")
test_harmonic22=pd.read_csv("test_wd_harmonic22.csv")
test_harmonic23=pd.read_csv("test_wd_harmonic23.csv")
test_harmonic24=pd.read_csv("test_wd_harmonic24.csv")
test_harmonic25=pd.read_csv("test_wd_harmonic25.csv")
test_harmonic26=pd.read_csv("test_wd_harmonic26.csv")
test_harmonic27=pd.read_csv("test_wd_harmonic27.csv")
test_harmonic28=pd.read_csv("test_wd_harmonic28.csv")
test_harmonic29=pd.read_csv("test_wd_harmonic29.csv")
test_harmonic30=pd.read_csv("test_wd_harmonic30.csv")
test_harmonic31=pd.read_csv("test_wd_harmonic31.csv")
test_harmonic32=pd.read_csv("test_wd_harmonic32.csv")
test_harmonic33=pd.read_csv("test_wd_harmonic33.csv")
test_harmonic34=pd.read_csv("test_wd_harmonic34.csv")
test_harmonic35=pd.read_csv("test_wd_harmonic35.csv")




test_sin1=pd.read_csv("test_wd_sin1.csv")
test_sin2=pd.read_csv("test_wd_sin2.csv")
test_sin3=pd.read_csv("test_wd_sin3.csv")
test_sin4=pd.read_csv("test_wd_sin4.csv")
test_sin5=pd.read_csv("test_wd_sin5.csv")
test_sin6=pd.read_csv("test_wd_sin6.csv")
test_sin7=pd.read_csv("test_wd_sin7.csv")
test_sin8=pd.read_csv("test_wd_sin8.csv")
test_sin9=pd.read_csv("test_wd_sin9.csv")
test_sin10=pd.read_csv("test_wd_sin10.csv")
test_sin11=pd.read_csv("test_wd_sin11.csv")
test_sin12=pd.read_csv("test_wd_sin12.csv")
test_sin13=pd.read_csv("test_wd_sin13.csv")
test_sin14=pd.read_csv("test_wd_sin14.csv")
test_sin15=pd.read_csv("test_wd_sin15.csv")
test_sin16=pd.read_csv("test_wd_sin16.csv")
test_sin17=pd.read_csv("test_wd_sin17.csv")
test_sin18=pd.read_csv("test_wd_sin18.csv")
test_sin19=pd.read_csv("test_wd_sin19.csv")
test_sin20=pd.read_csv("test_wd_sin20.csv")
test_sin21=pd.read_csv("test_wd_sin21.csv")
test_sin22=pd.read_csv("test_wd_sin22.csv")
test_sin23=pd.read_csv("test_wd_sin23.csv")
test_sin24=pd.read_csv("test_wd_sin24.csv")
test_sin25=pd.read_csv("test_wd_sin25.csv")
test_sin26=pd.read_csv("test_wd_sin26.csv")
test_sin27=pd.read_csv("test_wd_sin27.csv")
test_sin28=pd.read_csv("test_wd_sin28.csv")
test_sin29=pd.read_csv("test_wd_sin29.csv")
test_sin30=pd.read_csv("test_wd_sin30.csv")
test_sin31=pd.read_csv("test_wd_sin31.csv")
test_sin32=pd.read_csv("test_wd_sin32.csv")
test_sin33=pd.read_csv("test_wd_sin33.csv")
test_sin34=pd.read_csv("test_wd_sin34.csv")
test_sin35=pd.read_csv("test_wd_sin35.csv")


test_inter1=pd.read_csv("test_wd_inter1.csv")
test_inter2=pd.read_csv("test_wd_inter2.csv")
test_inter3=pd.read_csv("test_wd_inter3.csv")
test_inter4=pd.read_csv("test_wd_inter4.csv")
test_inter5=pd.read_csv("test_wd_inter5.csv")
test_inter6=pd.read_csv("test_wd_inter6.csv")
test_inter7=pd.read_csv("test_wd_inter7.csv")
test_inter8=pd.read_csv("test_wd_inter8.csv")
test_inter9=pd.read_csv("test_wd_inter9.csv")
test_inter10=pd.read_csv("test_wd_inter10.csv")
test_inter11=pd.read_csv("test_wd_inter11.csv")
test_inter12=pd.read_csv("test_wd_inter12.csv")
test_inter13=pd.read_csv("test_wd_inter13.csv")
test_inter14=pd.read_csv("test_wd_inter14.csv")
test_inter15=pd.read_csv("test_wd_inter15.csv")
test_inter16=pd.read_csv("test_wd_inter16.csv")
test_inter17=pd.read_csv("test_wd_inter17.csv")
test_inter18=pd.read_csv("test_wd_inter18.csv")
test_inter19=pd.read_csv("test_wd_inter19.csv")
test_inter20=pd.read_csv("test_wd_inter20.csv")
test_inter21=pd.read_csv("test_wd_inter21.csv")
test_inter22=pd.read_csv("test_wd_inter22.csv")
test_inter23=pd.read_csv("test_wd_inter23.csv")
test_inter24=pd.read_csv("test_wd_inter24.csv")
test_inter25=pd.read_csv("test_wd_inter25.csv")
test_inter26=pd.read_csv("test_wd_inter26.csv")
test_inter27=pd.read_csv("test_wd_inter27.csv")
test_inter28=pd.read_csv("test_wd_inter28.csv")
test_inter29=pd.read_csv("test_wd_inter29.csv")
test_inter30=pd.read_csv("test_wd_inter30.csv")
test_inter31=pd.read_csv("test_wd_inter31.csv")
test_inter32=pd.read_csv("test_wd_inter32.csv")
test_inter33=pd.read_csv("test_wd_inter33.csv")
test_inter34=pd.read_csv("test_wd_inter34.csv")
test_inter35=pd.read_csv("test_wd_inter35.csv")



test_sag1=pd.read_csv("test_wd_sag1.csv")
test_sag2=pd.read_csv("test_wd_sag2.csv")
test_sag3=pd.read_csv("test_wd_sag3.csv")
test_sag4=pd.read_csv("test_wd_sag4.csv")
test_sag5=pd.read_csv("test_wd_sag5.csv")
test_sag6=pd.read_csv("test_wd_sag6.csv")
test_sag7=pd.read_csv("test_wd_sag7.csv")
test_sag8=pd.read_csv("test_wd_sag8.csv")
test_sag9=pd.read_csv("test_wd_sag9.csv")
test_sag10=pd.read_csv("test_wd_sag10.csv")
test_sag11=pd.read_csv("test_wd_sag11.csv")
test_sag12=pd.read_csv("test_wd_sag12.csv")
test_sag13=pd.read_csv("test_wd_sag13.csv")
test_sag14=pd.read_csv("test_wd_sag14.csv")
test_sag15=pd.read_csv("test_wd_sag15.csv")
test_sag16=pd.read_csv("test_wd_sag16.csv")
test_sag17=pd.read_csv("test_wd_sag17.csv")
test_sag18=pd.read_csv("test_wd_sag18.csv")
test_sag19=pd.read_csv("test_wd_sag19.csv")
test_sag20=pd.read_csv("test_wd_sag20.csv")
test_sag21=pd.read_csv("test_wd_sag21.csv")
test_sag22=pd.read_csv("test_wd_sag22.csv")
test_sag23=pd.read_csv("test_wd_sag23.csv")
test_sag24=pd.read_csv("test_wd_sag24.csv")
test_sag25=pd.read_csv("test_wd_sag25.csv")
test_sag26=pd.read_csv("test_wd_sag26.csv")
test_sag27=pd.read_csv("test_wd_sag27.csv")
test_sag28=pd.read_csv("test_wd_sag28.csv")
test_sag29=pd.read_csv("test_wd_sag29.csv")
test_sag30=pd.read_csv("test_wd_sag30.csv")
test_sag31=pd.read_csv("test_wd_sag31.csv")
test_sag32=pd.read_csv("test_wd_sag32.csv")
test_sag33=pd.read_csv("test_wd_sag33.csv")
test_sag34=pd.read_csv("test_wd_sag34.csv")
test_sag35=pd.read_csv("test_wd_sag35.csv")


demo_sin1=pd.read_csv("demo_wd_sin1.csv")
demo_sin2=pd.read_csv("demo_wd_sin2.csv")
demo_sin3=pd.read_csv("demo_wd_sin3.csv")
demo_sin4=pd.read_csv("demo_wd_sin4.csv")
demo_sin5=pd.read_csv("demo_wd_sin5.csv")

demo_sag1=pd.read_csv("demo_wd_sag1.csv")
demo_sag2=pd.read_csv("demo_wd_sag2.csv")
demo_sag3=pd.read_csv("demo_wd_sag3.csv")
demo_sag4=pd.read_csv("demo_wd_sag4.csv")
demo_sag5=pd.read_csv("demo_wd_sag5.csv")

demo_swell1=pd.read_csv("demo_wd_swell1.csv")
demo_swell2=pd.read_csv("demo_wd_swell2.csv")
demo_swell3=pd.read_csv("demo_wd_swell3.csv")
demo_swell4=pd.read_csv("demo_wd_swell4.csv")
demo_swell5=pd.read_csv("demo_wd_swell5.csv")

demo_harmonic1=pd.read_csv("demo_wd_harmonic1.csv")
demo_harmonic2=pd.read_csv("demo_wd_harmonic2.csv")
demo_harmonic3=pd.read_csv("demo_wd_harmonic3.csv")
demo_harmonic4=pd.read_csv("demo_wd_harmonic4.csv")
demo_harmonic5=pd.read_csv("demo_wd_harmonic5.csv")

demo_inter1=pd.read_csv("demo_wd_inter1.csv")
demo_inter2=pd.read_csv("demo_wd_inter2.csv")
demo_inter3=pd.read_csv("demo_wd_inter3.csv")
demo_inter4=pd.read_csv("demo_wd_inter4.csv")
demo_inter5=pd.read_csv("demo_wd_inter5.csv")






test_swell1=pd.read_csv("test_wd_swell1.csv")
test_swell2=pd.read_csv("test_wd_swell2.csv")
test_swell3=pd.read_csv("test_wd_swell3.csv")
test_swell4=pd.read_csv("test_wd_swell4.csv")
test_swell5=pd.read_csv("test_wd_swell5.csv")
test_swell6=pd.read_csv("test_wd_swell6.csv")
test_swell7=pd.read_csv("test_wd_swell7.csv")
test_swell8=pd.read_csv("test_wd_swell8.csv")
test_swell9=pd.read_csv("test_wd_swell9.csv")
test_swell10=pd.read_csv("test_wd_swell10.csv")
test_swell11=pd.read_csv("test_wd_swell11.csv")
test_swell12=pd.read_csv("test_wd_swell12.csv")
test_swell13=pd.read_csv("test_wd_swell13.csv")
test_swell14=pd.read_csv("test_wd_swell14.csv")
test_swell15=pd.read_csv("test_wd_swell15.csv")
test_swell16=pd.read_csv("test_wd_swell16.csv")
test_swell17=pd.read_csv("test_wd_swell17.csv")
test_swell18=pd.read_csv("test_wd_swell18.csv")
test_swell19=pd.read_csv("test_wd_swell19.csv")
test_swell20=pd.read_csv("test_wd_swell20.csv")
test_swell21=pd.read_csv("test_wd_swell21.csv")
test_swell22=pd.read_csv("test_wd_swell22.csv")
test_swell23=pd.read_csv("test_wd_swell23.csv")
test_swell24=pd.read_csv("test_wd_swell24.csv")
test_swell25=pd.read_csv("test_wd_swell25.csv")
test_swell26=pd.read_csv("test_wd_swell26.csv")
test_swell27=pd.read_csv("test_wd_swell27.csv")
test_swell28=pd.read_csv("test_wd_swell28.csv")
test_swell29=pd.read_csv("test_wd_swell29.csv")
test_swell30=pd.read_csv("test_wd_swell30.csv")
test_swell31=pd.read_csv("test_wd_swell31.csv")
test_swell32=pd.read_csv("test_wd_swell32.csv")
test_swell33=pd.read_csv("test_wd_swell33.csv")
test_swell34=pd.read_csv("test_wd_swell34.csv")
test_swell35=pd.read_csv("test_wd_swell35.csv")






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


Sin=pd.concat([sin1,sin2,sin3,sin4,sin5,sin6,sin7,sin8,sin10,sin11,sin12,sin9,sin14,sin15,sin16,sin17,sin18,sin19,test_sin1,test_sin2,test_sin3,test_sin4,test_sin5,test_sin6,test_sin7,test_sin8,test_sin9,test_sin10,test_sin11,test_sin12,test_sin13,test_sin14,test_sin15,test_sin16,test_sin17,test_sin18,test_sin19,test_sin20,test_sin21,test_sin22,test_sin23,test_sin24,test_sin25,test_sin26,test_sin27,test_sin28,test_sin29,test_sin30,test_sin31,test_sin32,test_sin33,test_sin34,test_sin35,demo_sin5])
Sag=pd.concat([sag1,sag2,sag3,sag4,sag5,sag6,sag7,sag8,sag9,sag10,sag11,sag12,sag13,sag14,sag15,sag16,sag17,sag18,sag19,sag20,sag21,sag22,sag23,sag24,sag25,sag26,sag27,sag28,sag29,sag30,sag31,sag32,sag33,sag34,sag35,sag36,sag37,sag38,sag39,sag40,sag41,test_sag1,test_sag2,test_sag3,test_sag4,test_sag5,test_sag6,test_sag7,test_sag8,test_sag9,test_sag10,test_sag11,test_sag12,test_sag13,test_sag14,test_sag15,test_sag16,test_sag17,test_sag18,test_sag19,test_sag20,test_sag21,test_sag22,test_sag23,test_sag24,test_sag25,test_sag26,test_sag27,test_sag28,test_sag29,test_sag30,test_sag31,test_sag32,test_sag33,test_sag34,test_sag35,demo_sag2,demo_sag3,demo_sag4,demo_sag5])
Swell=pd.concat([swell1,swell2,swell3,swell4,swell5,swell6,swell7,swell8,swell9,swell10,swell11,swell12,swell13,swell14,swell15,swell16,swell17,swell18,swell19,swell20,swell21,swell22,swell23,swell24,swell25,swell26,swell27,swell28,swell29,swell30,swell31,swell32,demo_swell1,swell33,swell34,swell35,swell36,swell37,swell38,swell39,swell40,swell41,swell42,swell43,swell44,swell45,swell46,swell47,swell48,swell49,swell50,swell51,swell52,swell53,swell54,swell55,swell56,test_swell1,test_swell2,test_swell3,test_swell4,test_swell5,test_swell6,test_swell7,test_swell8,test_swell9,test_swell10,test_swell11,test_swell12,test_swell13,test_swell14,test_swell15,test_swell16,test_swell17,test_swell18,test_swell19,test_swell20,test_swell21,test_swell22,test_swell23,test_swell24,test_swell25,test_swell26,test_swell27,test_swell28,test_swell29,test_swell30,test_swell31,test_swell32,test_swell33,test_swell34,test_swell35,demo_swell5])

Harmonic=pd.concat([harmonic1,harmonic2,harmonic3,harmonic4,harmonic5,harmonic6,harmonic7,harmonic8,harmonic9,harmonic10,harmonic11,harmonic12,harmonic13,harmonic14,harmonic15,harmonic16,harmonic17,harmonic18,harmonic19,harmonic20,harmonic21,harmonic22,harmonic23,harmonic24,harmonic25,harmonic26,harmonic27,harmonic28,harmonic29,harmonic30,harmonic31,harmonic32,harmonic33,harmonic34,harmonic35,test_harmonic1,test_harmonic2,test_harmonic3,test_harmonic4,test_harmonic5,test_harmonic6,test_harmonic7,test_harmonic8,test_harmonic9,test_harmonic10,test_harmonic11,test_harmonic12,test_harmonic13,test_harmonic14,test_harmonic15,test_harmonic16,test_harmonic17,test_harmonic18,test_harmonic19,test_harmonic20,test_harmonic21,test_harmonic22,test_harmonic23,test_harmonic24,test_harmonic25,test_harmonic26,test_harmonic27,test_harmonic28,test_harmonic29,test_harmonic30,test_harmonic31,test_harmonic32,test_harmonic33,test_harmonic34,test_harmonic35])
Inter=pd.concat([inter1,inter2,inter3,inter4,inter5,inter6,inter7,inter8,inter9,inter10,inter11,inter12,test_inter1,test_inter2,test_inter3,test_inter4,test_inter5,test_inter6,test_inter7,test_inter8,test_inter9,test_inter10,test_inter11,test_inter12,test_inter13,test_inter14,test_inter15,test_inter16,test_inter17,test_inter18,test_inter19,test_inter20,test_inter21,test_inter22,test_inter23,test_inter24,test_inter25,test_inter26,test_inter27,test_inter28,test_inter29,test_inter30,test_inter31,test_inter32,test_inter33,test_inter34,test_inter35,demo_inter1,demo_inter2,demo_inter3,demo_inter4,demo_inter5])




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


df0=pd.concat([Sin])
df0["Output"]=1
x=df0.drop(['Output'],axis='columns')
#print(x).
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

#print(y_train)
#print(y_test)


print('accuracy SUB  = ',model.score(x,y)*100,"%")












demo_sin1=pd.read_csv("demo_wd_sin1.csv")
demo_sin2=pd.read_csv("demo_wd_sin2.csv")
demo_sin3=pd.read_csv("demo_wd_sin3.csv")
demo_sin4=pd.read_csv("demo_wd_sin4.csv")
demo_sin5=pd.read_csv("demo_wd_sin5.csv")

demo_sag1=pd.read_csv("demo_wd_sag1.csv")
demo_sag2=pd.read_csv("demo_wd_sag2.csv")
demo_sag3=pd.read_csv("demo_wd_sag3.csv")
demo_sag4=pd.read_csv("demo_wd_sag4.csv")
demo_sag5=pd.read_csv("demo_wd_sag5.csv")

demo_swell1=pd.read_csv("demo_wd_swell1.csv")
demo_swell2=pd.read_csv("demo_wd_swell2.csv")
demo_swell3=pd.read_csv("demo_wd_swell3.csv")
demo_swell4=pd.read_csv("demo_wd_swell4.csv")
demo_swell5=pd.read_csv("demo_wd_swell5.csv")

demo_harmonic1=pd.read_csv("demo_wd_harmonic1.csv")
demo_harmonic2=pd.read_csv("demo_wd_harmonic2.csv")
demo_harmonic3=pd.read_csv("demo_wd_harmonic3.csv")
demo_harmonic4=pd.read_csv("demo_wd_harmonic4.csv")
demo_harmonic5=pd.read_csv("demo_wd_harmonic5.csv")

demo_inter1=pd.read_csv("demo_wd_inter1.csv")
demo_inter2=pd.read_csv("demo_wd_inter2.csv")
demo_inter3=pd.read_csv("demo_wd_inter3.csv")
demo_inter4=pd.read_csv("demo_wd_inter4.csv")
demo_inter5=pd.read_csv("demo_wd_inter5.csv")

demo_sin1["Output"]=1
df0=demo_sin1

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sin1 ; ",end=" ")

ans=model.predict(x)
print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_sin2["Output"]=1
df0=demo_sin2

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sin2 ; ",end=" ")

ans=model.predict(x)
print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_sin3["Output"]=1
df0=demo_sin3

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sin3 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_sin4["Output"]=1
df0=demo_sin4

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sin4 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_sin5["Output"]=1
df0=demo_sin5

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))


print("INPUT SIGNAL = demo_sin5 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_sag1["Output"]=2
df0=demo_sag1

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sag1 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_sag2["Output"]=2
df0=demo_sag2

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sag2 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_sag3["Output"]=2
df0=demo_sag3

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sag3 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_sag4["Output"]=2
df0=demo_sag4

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))


ans=model.predict(x)
print("INPUT SIGNAL = demo_sag4 ; ",end=" ")

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_sag5["Output"]=2
df0=demo_sag5

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_sag5 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_swell1["Output"]=3
df0=demo_swell1

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_swell1 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_swell2["Output"]=3
df0=demo_swell2

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_swell2 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_swell3["Output"]=3
df0=demo_swell3

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_swell3 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_swell4["Output"]=3
df0=demo_swell4

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_swell4 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_swell5["Output"]=3
df0=demo_swell5

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_swell5 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_harmonic1["Output"]=4
df0=demo_harmonic1

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_harmonic1 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_harmonic2["Output"]=4
df0=demo_harmonic2

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_harmonic2 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_harmonic3["Output"]=4
df0=demo_harmonic3

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_harmonic3 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_harmonic4["Output"]=4
df0=demo_harmonic4

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_harmonic4 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_harmonic5["Output"]=4
df0=demo_harmonic5

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_harmonic5 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")






demo_inter1["Output"]=5
df0=demo_inter1

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_inter1 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_inter2["Output"]=5
df0=demo_inter2

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_inter2 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_inter3["Output"]=5
df0=demo_inter3

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_inter3 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

demo_inter4["Output"]=5
df0=demo_inter4

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_inter4 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")


demo_inter5["Output"]=5
df0=demo_inter5

x=df0.drop(['Output'],axis='columns')
#print(x)
y=df0.Output
#print(y)
#print("df0 len = ",len(df0))

print("INPUT SIGNAL = demo_inter5 ; ",end=" ")

ans=model.predict(x)

print("PREDICTED VALUE = ",max(ans,key=list(ans).count),end=" ")
print("-->",end=" ")
a=max(ans,key=list(ans).count)
if a==1:
    print("Sin WAVE")
elif a==2:
    print("SAG SIGNAL")
elif a==3:
    print("SWELL SIGNAL")
elif a==4:
    print("HARMONIC SIGNAL")
else:
    print("INTERRUPTION SIGNAL")

