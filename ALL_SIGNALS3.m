f1=20;
fs=100;
n_t1=0:0.1:1000;
disp(0:1);
disp(f1:10);
disp(n_t1);
%t=[0:0.01:50];
f=0.2;
v1=10*sin(2*pi*f.*n_t1);
v3=3*sin(2*pi*3*f.*n_t1);
v5=2*sin(2*pi*5*f.*n_t1);
%v7=1*sin(2*pi*7*f.*n_t1);
 
harmonic27=v1+v3+v5;
subplot(2,6,1);
plot(n_t1,harmonic27);
title('Harmonics 27');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 500]);

stft=spectrogram(harmonic27,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_harmonic27.csv',stft);


wd1= wavedec2(harmonic27,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic27,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic27,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic27,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic27,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic27,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic27,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic27.csv");

scales = (1:128);

COEFS = cwt(harmonic27,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic27);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic27.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(harmonic27);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_harmonic27.csv');


%f1=100;
%n_t1=0:1/f1:150;
%t=[0:0.01:50];
%f=0.2;
%v1=10*sin(2*pi*f.*n_t1);
%v3=3*sin(2*pi*3*f.*n_t1);
%v5=2*sin(2*pi*5*f.*n_t1);
%v7=1*sin(2*pi*7*f.*n_t1);
 
%harmonic19=v1+v3+v5;
%subplot(2,6,2);
%plot(n_t1,harmonic19);
%%title('Harmonics 19');
%xlabel('time');
%ylabel('Amplitude');
%ylim([-10 10]);
%xlim([0 5]);




f1=20;
n_t1=0:0.1:1000;
disp(0:1);
disp(f1:10);
disp(n_t1);
%t=[0:0.01:50];
f=0.2;
v1=50*sin(2*pi*f.*n_t1);
v3=15*sin(2*pi*3*f.*n_t1);
v5=10*sin(2*pi*5*f.*n_t1);
%v7=1*sin(2*pi*7*f.*n_t1);
 
harmonic28=v1+v3+v5;
subplot(2,6,2);
plot(n_t1,harmonic28);
title('Harmonics 28');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 500]);


f1=20;
n_t1=0:0.1:100000;
disp(0:1);
disp(f1:10);
disp(n_t1);
%t=[0:0.01:50];
f=0.2;
v1=20*sin(2*pi*f.*n_t1);
v3=6*sin(2*pi*3*f.*n_t1);
v5=4*sin(2*pi*5*f.*n_t1);
%v7=1*sin(2*pi*7*f.*n_t1);
 
harmonic29=v1+v3+v5;
subplot(2,6,3);
plot(n_t1,harmonic29);
title('Harmonics 29');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 5]);


stft=spectrogram(harmonic28,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_harmonic28.csv',stft);


wd1= wavedec2(harmonic28,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic28,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic28,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic28,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic28,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic28,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic28,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic28.csv");


COEFS = cwt(harmonic28,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic28);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic28.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(harmonic28);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_harmonic28.csv');




f1=100;
n_t1=0:0.1:1500;
%t=[0:0.01:50];
f=0.2;
v1=30*sin(2*pi*f.*n_t1);
v3=9*sin(2*pi*3*f.*n_t1);
v5=6*sin(2*pi*5*f.*n_t1);
v7=1*sin(2*pi*7*f.*n_t1);
 
harmonic30=v1+v3+v5+v7;
subplot(2,6,4);
plot(n_t1,harmonic30);
title('Harmonics 30');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 500]);



f1=100;
n_t1=0:0.1:15000;
%t=[0:0.01:50];
f=0.2;
v1=13*sin(2*pi*f.*n_t1);
v3=3*sin(2*pi*3*f.*n_t1);
v5=2*sin(2*pi*5*f.*n_t1);
v7=1*sin(2*pi*7*f.*n_t1);
 
harmonic31=v1+v3+v5+v7;
subplot(2,6,5);
plot(n_t1,harmonic31);
title('Harmonics 31');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 500]);


f1=100;
n_t1=0:0.1:15000;
%t=[0:0.01:50];
f=0.2;
v1=10*sin(2*pi*f.*n_t1);
v3=4*sin(2*pi*3*f.*n_t1);
v5=2*sin(2*pi*5*f.*n_t1);
v7=1*sin(2*pi*7*f.*n_t1);
 
harmonic32=v1+v3+v5+v7;
subplot(2,6,6);
plot(n_t1,harmonic32);
title('Harmonics 32');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 5000]);



f1=100;
n_t1=0:0.1:1500;
f=0.2;
v1=10.5*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);
v9=1*sin(2*pi*9*f*n_t1);

harmonic33=v1+v3+v5+v7+v9;
subplot(2,6,7);
plot(n_t1,harmonic33);
title('Harmonics 33');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 500]);

f1=100;
n_t1=0:0.1:15000;
f=0.2;
v1=10*sin(2*pi*f*n_t1);
v3=3.5*sin(2*pi*3*f*n_t1);
v5=2.5*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);
v9=1*sin(2*pi*9*f*n_t1);

harmonic34=v1+v3+v5+v7+v9;
subplot(2,6,8);
plot(n_t1,harmonic34);
title('Harmonics 34');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 500]);

f1=100;
n_t1=0:0.1:1500;
f=0.2;
v1=10*sin(2*pi*f*n_t1);
v3=4*sin(2*pi*3*f*n_t1);
v5=3*sin(2*pi*5*f*n_t1);
v7=2*sin(2*pi*7*f*n_t1);
v9=1*sin(2*pi*9*f*n_t1);

harmonic35=v1+v3+v5+v7+v9;
subplot(2,6,9);
plot(n_t1,harmonic35);
title('Harmonics 35');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 5000]);


A=0.9;
T=20;
w=2*pi*0.2;
t = [0:0.1:1500];
sin17 = A*sin(w*t);
subplot(2,6,10);
plot(t,sin17);
title('Sine Wave 17');
xlabel('time');
ylabel('Amplitude');
xlim([0 500]);
ylim([-50 50]);


A=11;
T=20;
w=2*pi*0.2;
t = [0:0.1:1500];
sin18 = A*sin(w*t);
subplot(2,6,11);
plot(t,sin18);
title('Sine Wave 18');
xlabel('time');
ylabel('Amplitude');
xlim([0 5000]);
ylim([-50 50]);


A=3005.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:1500];
sin19 = A*sin(w*t);
subplot(2,6,12);
plot(t,sin19);
title('Sine Wave 19');
xlabel('time');
ylabel('Amplitude');
xlim([0 5000]);
ylim([-50 50]);


figure 


t=[0:0.1:1500]
A=1700;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=1170; t2=1500;
sag36= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,1);
plot(t,sag36);
title('Voltage Sag 36');
xlabel('time');
ylabel('Amplitude');
xlim([0 5000]);
ylim([-100 100]);


t=[0:0.1:1500]
A=2;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.75; t1=100; t2=143;
sag37= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,2);
plot(t,sag37);
title('Voltage Sag 37');
xlabel('time');
ylabel('Amplitude');
xlim([0 5000]);


t=[0:0.1:1500]
A=17;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.7; t1=500; t2=5500;
sag38= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,3);
plot(t,sag38);
title('Voltage Sag 38');
xlabel('time');
ylabel('Amplitude');
xlim([0 15000]);
ylim([-50 50 ])


t=[0:0.1:1500];
A=900;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=5000; t2=90000;
sag39= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,4);
plot(t,sag39);
title('Voltage Sag 39');
xlabel('time');
ylabel('Amplitude');
xlim([0 150000]);
ylim([-950 950 ])





t=[0:0.1:1500];
A=9001;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=900; t2=1000;
sag40= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,5);
plot(t,sag40);
title('Voltage Sag 40');
xlabel('time');
ylabel('Amplitude');
xlim([0 150000]);
ylim([-950 950 ])

t=[0:0.1:1000];
A=10000;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=1100; t2=1500;
sag41= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,6);
plot(t,sag41);
title('Voltage Sag 41');
xlabel('time');
ylabel('Amplitude');
xlim([0 150000]);
ylim([-11000 11000 ])


A=301;
f=0.2;
t=[0:0.1:1500];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.2; t1=10; t2=300;
swell51= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,7);
plot(t,swell51);
title('Voltage Swell 51');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 1500]);



A=70;
f=0.2;
t=[0:0.1:1500];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.2; t1=10; t2=300;
swell52= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,8);
plot(t,swell52);
title('Voltage Swell 52');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 15000]);



A=3000;
f=0.2;
t=[0:0.2:1500];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.2; t1=10; t2=100;
swell53= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,9);
plot(t,swell53);
title('Voltage Swell 53');
xlabel('time');
ylabel('Amplitude');
ylim([-5000 5000]);
xlim([0 15000]);


A=670;
f=0.2;
t=[0:0.1:1500];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.2; t1=750; t2=1000;
swell54= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,10);
plot(t,swell54);
title('Voltage Swell 54');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 1500]);



A=70;
f=0.2;
t=[0:0.1:1500];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.4; t1=150; t2=1500;
swell55= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,11);
plot(t,swell55);
title('Voltage Swell 55');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 15000]);


A=2500;
f=0.2;
t=[0:0.1:15000];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.4; t1=13000; t2=15000;
swell56= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,12);
plot(t,swell56);
title('Voltage Swell 56');
xlabel('time');
ylabel('Amplitude');
ylim([-5000 5000]);
xlim([0 150000]);

stft=spectrogram(harmonic29,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_harmonic29.csv',stft);


wd1= wavedec2(harmonic29,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic29,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic29,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic29,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic29,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic29,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic29,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic29.csv");



COEFS = cwt(harmonic29,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic29);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic29.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(harmonic29);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);

m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_harmonic29.csv');


stft=spectrogram(harmonic30,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_harmonic30.csv',stft);


wd1= wavedec2(harmonic30,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic30,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic30,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic30,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic30,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic30,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic30,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic30.csv");



COEFS = cwt(harmonic30,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic30);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic30.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(harmonic30);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);

m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_harmonic30.csv');

stft=spectrogram(harmonic31,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_harmonic31.csv',stft);


wd1= wavedec2(harmonic31,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic31,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic31,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic31,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic31,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic31,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic31,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic31.csv");



COEFS = cwt(harmonic31,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic31);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic31.csv',SCimg(1:1501,[1:9]));



[imf,residue1]=emd(harmonic31);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);

m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_harmonic31.csv');


stft=spectrogram(harmonic32,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_harmonic32.csv',stft);


wd1= wavedec2(harmonic32,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic32,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic32,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic32,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic32,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic32,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic32,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic32.csv");



COEFS = cwt(harmonic32,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic32);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic32.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(harmonic32);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);

m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_harmonic32.csv');


stft=spectrogram(harmonic33,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_harmonic33.csv',stft);


wd1= wavedec2(harmonic33,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic33,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic33,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic33,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic33,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic33,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic33,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic33.csv");



COEFS = cwt(harmonic33,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic33);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic33.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(harmonic33);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);

m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_harmonic33.csv');

stft=spectrogram(harmonic34,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_harmonic34.csv',stft);


wd1= wavedec2(harmonic34,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic34,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic34,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic34,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic34,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic34,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic34,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic34.csv");



COEFS = cwt(harmonic34,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic34);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic34.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(harmonic34);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);


m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_harmonic34.csv');


stft=spectrogram(harmonic35,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_harmonic35.csv',stft);


wd1= wavedec2(harmonic35,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic35,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic35,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic35,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic35,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic35,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic35,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic35.csv");



COEFS = cwt(harmonic35,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic35);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic35.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(harmonic35);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);

m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_harmonic35.csv');


stft=spectrogram(sag36,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_sag36.csv',stft);


wd1= wavedec2(sag36,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag36,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag36,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag36,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag36,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag36,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag36,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag36.csv");



COEFS = cwt(sag36,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag36);
SCimg=transpose(SCimg);

csvwrite('cwt_sag36.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(sag36);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);

m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_sag36.csv');


stft=spectrogram(sag37,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_sag37.csv',stft);


wd1= wavedec2(sag37,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag37,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag37,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag37,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag37,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag37,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag37,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag37.csv");



COEFS = cwt(sag37,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag37);
SCimg=transpose(SCimg);

csvwrite('cwt_sag37.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(sag37);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_sag37.csv');

stft=spectrogram(sag38,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_sag38.csv',stft);


wd1= wavedec2(sag38,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag38,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag38,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag38,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag38,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag38,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag38,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag38.csv");



COEFS = cwt(sag38,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag38);
SCimg=transpose(SCimg);

csvwrite('cwt_sag38.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(sag38);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);

m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_sag38.csv');


stft=spectrogram(sag39,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_sag39.csv',stft);


wd1= wavedec2(sag39,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag39,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag39,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag39,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag39,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag39,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag39,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag39.csv");


COEFS = cwt(sag39,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag39);
SCimg=transpose(SCimg);

csvwrite('cwt_sag39.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(sag39);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);


k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);


m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_sag39.csv');


stft=spectrogram(sag40,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_sag40.csv',stft);


wd1= wavedec2(sag40,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag40,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag40,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag40,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag40,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag40,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag40,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag40.csv");



COEFS = cwt(sag40,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag40);
SCimg=transpose(SCimg);

csvwrite('cwt_sag40.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(sag40);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_sag40.csv');


stft=spectrogram(sag41,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_sag41.csv',stft);


wd1= wavedec2(sag41,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag41,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag41,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag41,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag41,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag41,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag41,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag41.csv");



COEFS = cwt(sag41,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag41);
SCimg=transpose(SCimg);

csvwrite('cwt_sag41.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(sag41);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_sag41.csv');


stft=spectrogram(swell51,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_swell51.csv',stft);


wd1= wavedec2(swell51,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell51,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell51,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell51,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell51,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell51,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell51,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell51.csv");



COEFS = cwt(swell51,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell51);
SCimg=transpose(SCimg);

csvwrite('cwt_swell51.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(swell51);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_swell51.csv');

stft=spectrogram(swell52,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_swell52.csv',stft);


wd1= wavedec2(swell52,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell52,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell52,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell52,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell52,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell52,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell52,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell52.csv");



COEFS = cwt(swell52,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell52);
SCimg=transpose(SCimg);

csvwrite('cwt_swell52.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(swell52);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_swell52.csv');

stft=spectrogram(swell53,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_swell53.csv',stft);


wd1= wavedec2(swell53,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell53,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell53,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell53,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell53,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell53,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell53,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell53.csv");



COEFS = cwt(swell53,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell53);
SCimg=transpose(SCimg);

csvwrite('cwt_swell53.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(swell53);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_swell53.csv');

stft=spectrogram(swell54,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_swell54.csv',stft);


wd1= wavedec2(swell54,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell54,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell54,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell54,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell54,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell54,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell54,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell54.csv");



COEFS = cwt(swell54,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell54);
SCimg=transpose(SCimg);

csvwrite('cwt_swell54.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(swell54);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_swell54.csv');

stft=spectrogram(swell55,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_swell55.csv',stft);


wd1= wavedec2(swell55,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell55,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell55,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell55,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell55,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell55,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell55,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell55.csv");



COEFS = cwt(swell55,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell55);
SCimg=transpose(SCimg);

csvwrite('cwt_swell55.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(swell55);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_swell55.csv');

stft=spectrogram(swell56,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_swell56.csv',stft);


wd1= wavedec2(swell56,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell56,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell56,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell56,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell56,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell56,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell56,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell56.csv");



COEFS = cwt(swell56,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell56);
SCimg=transpose(SCimg);

csvwrite('cwt_swell56.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(swell56);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_swell56.csv');



stft=spectrogram(sin17,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_sin17.csv',stft);


wd1= wavedec2(sin17,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin17,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin17,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin17,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin17,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin17,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin17,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin17.csv");



COEFS = cwt(sin17,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin17);
SCimg=transpose(SCimg);

csvwrite('cwt_sin17.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(sin17);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_sin17.csv');


stft=spectrogram(sin18,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_sin18.csv',stft);


wd1= wavedec2(sin18,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin18,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin18,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin18,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin18,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin18,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin18,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin18.csv");



COEFS = cwt(sin18,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin18);
SCimg=transpose(SCimg);

csvwrite('cwt_sin18.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(sin18);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_sin18.csv');



stft=spectrogram(sin19,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_sin19.csv',stft);


wd1= wavedec2(sin19,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin19,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin19,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin19,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin19,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin19,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin19,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin19.csv");



COEFS = cwt(sin19,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin19);
SCimg=transpose(SCimg);

csvwrite('cwt_sin19.csv',SCimg(1:1501,[1:9]));


[imf,residue1]=emd(sin19);
hilbert = hht(imf,fs,'FrequencyLimits',[0 50]);
[hs,f,t,imfinsf,energy] = hht(imf,fs);
energy = energy(1:101,1:1);
feature1=std(full(hilbert));
feature1=feature1(:,1:101);
feature1=transpose(feature1);
feature2=wentropy(full(hilbert));
feature2=transpose(feature2);

k=kurtosis(full(hilbert));
k=k(:,1:101);
k=transpose(k);
v=var(full(hilbert));
v=v(:,1:101);
v=transpose(v);
m1=full(mean(hilbert));
m2=full(max(hilbert));
m3=full(min(hilbert));
m1=m1(:,1:101);
m1=transpose(m1);
m2=m2(:,1:101);
m3=m3(:,1:101);
m2=transpose(m2);
m3=transpose(m3);
feature2=transpose(feature2);
disp(length(m1));
disp(length(m2));
disp(length(m3));
feature=[feature1 feature2 m1 m2 m3 energy k v];
writematrix(feature,'hht_sin19.csv');
