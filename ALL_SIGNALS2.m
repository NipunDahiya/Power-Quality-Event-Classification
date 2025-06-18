fs=100;
A=10.0;
T=20;
w=2*pi*0.20;
t = [0:0.1:100];
a = A*sin(w*t);
%subplot(2,10,5);
%plot(t,a);
%title('Sine Wave1');
%xlabel('time');
%ylabel('Amplitude');
%xlim([0 150]);
%ylim([-50 50]);


A=10.0;
T=20;
w=2*pi*0.206; 
t = [0:0.1:5];
b = A*sin(w*t);
%subplot(2,10,6);
%plot(t,b);
%title('Sine Wave2');
%xlabel('time');
%ylabel('Amplitude');
%xlim([0 50]);
%ylim([-50 50]);

sin14=[b a];
t1=[0:0.1:105.1];
disp(length(t1));
disp(length(sin14));
subplot(2,6,1);
plot(t1,sin14);
title("Sin Wave 1")
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sin14,'yaxis');
csvwrite('spec_sin14.csv',stft);

wd1= wavedec2(sin14,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin14,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin14,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin14,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin14,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin14,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin14,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin14.csv");

scales = (1:128);

COEFS = cwt(sin14,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin14);
SCimg=transpose(SCimg);

csvwrite('cwt_sin14.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(sin14);
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
writematrix(feature,'hht_sin14.csv');

A=500.0;
T=20;
f=0.2;
w=2*pi*f;
t = [0:0.1:75];
a = A*sin(w*t);
%subplot(2,10,5);
%plot(t,a);
%title('Sine Wave1');
%xlabel('time');
%ylabel('Amplitude');
%xlim([0 150]);
%ylim([-50 50]);

A=500.0;
T=20;
w=2*pi*0.206;
t = [0:0.1:75];
b = A*sin(w*t);
%subplot(2,10,6);
%plot(t,b);
%title('Sine Wave2');
%xlabel('time');
%ylabel('Amplitude');
%xlim([0 50]);
%ylim([-50 50]);

sin15=[a b];
t1=[0:0.1:150.1];
disp(length(t1));
disp(length(sin15));
subplot(2,6,2);
plot(t1,sin15);
title("Sin Wave 1")
xlim([74 76]);
ylim([-50 50]);

stft=spectrogram(sin15,'yaxis');
csvwrite('spec_sin15.csv',stft);



wd1= wavedec2(sin15,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin15,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin15,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin15,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin15,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin15,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6);
wd7= wavedec2(sin15,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7);
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin15.csv");


COEFS = cwt(sin15,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin14);
SCimg=transpose(SCimg);

csvwrite('cwt_sin15.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(sin15);
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
writematrix(feature,'hht_sin15.csv');


A=10.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:100];
a = A*sin(w*t);
%subplot(2,10,5);
%plot(t,a);
%title('Sine Wave1');
%xlabel('time');
%ylabel('Amplitude');
%xlim([0 150]);
%ylim([-50 50])


A=10.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:5];
b = A*sin(w*t);
%subplot(2,10,6);
%plot(t,b);
%title('Sine Wave2');
%xlabel('time');
%ylabel('Amplitude');
%xlim([0 50]);
%ylim([-50 50]);

sin16=[a b];
t1=[0:0.1:105.1];
disp(length(t1));
disp(length(sin16));
subplot(2,6,3);
plot(t1,sin16);
title("Sin Wave 4");
xlim([4 6]);
ylim([-50 50]);


stft=spectrogram(sin16,'yaxis');
csvwrite('spec_sin16.csv',stft);

wd1= wavedec2(sin16,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin16,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin16,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin16,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin16,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin16,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin16,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin16.csv");

COEFS = cwt(sin16,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin16);
SCimg=transpose(SCimg);

csvwrite('cwt_sin16.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(sin16);
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
writematrix(feature,'hht_sin16.csv');



t=[0:0.1:15000]
A=30;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=1200; t2=1250;
sag19= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,4);
plot(t,sag19);
title('Voltage Sag 19');
xlabel('time');
ylabel('Amplitude');
xlim([1185 1300]);
ylim([-100 100]);

stft=spectrogram(sag19,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag19.csv',stft);


wd1= wavedec2(sag19,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag19,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag19,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag19,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag19,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag19,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag19,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag19.csv");

COEFS = cwt(sag19,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag19);
SCimg=transpose(SCimg);

csvwrite('cwt_sag19.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(sag19);
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
writematrix(feature,'hht_sag19.csv');





t=[0:0.1:1500];
A=30;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=1200; t2=1225;
sag20= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,5);
plot(t,sag20);
title('Voltage Sag 20');
xlabel('time');
ylabel('Amplitude');
xlim([1190 1280]);
ylim([-100 100]);

stft=spectrogram(sag20,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag20.csv',stft);

wd1= wavedec2(sag20,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag20,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag20,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag20,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag20,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag20,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag20,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag20.csv");

COEFS = cwt(sag20,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag20);
SCimg=transpose(SCimg);

csvwrite('cwt_sag20.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(sag20);
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
writematrix(feature,'hht_sag20.csv');




t=[0:0.1:150]
A=30;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.5; t1=12; t2=19;
sag21= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,6);
plot(t,sag21);
title('Voltage Sag 21');
xlabel('time');
ylabel('Amplitude');
xlim([5 20]);
ylim([-100 100]);


stft=spectrogram(sag21,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag21.csv',stft);

wd1= wavedec2(sag21,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag21,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag21,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag21,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag21,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag21,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag21,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag21.csv");

COEFS = cwt(sag21,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag21);
SCimg=transpose(SCimg);

csvwrite('cwt_sag21.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(sag21);
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
writematrix(feature,'hht_sag21.csv');



f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=10; t2=13;
swell37= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,7);
plot(t,swell37);
title('Voltage Swell 37');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([5 25]);

stft=spectrogram(swell37,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell37.csv',stft);


wd1= wavedec2(swell37,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell37,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell37,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell37,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell37,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell37,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell37,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell37.csv");

COEFS = cwt(swell37,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell37);
SCimg=transpose(SCimg);

csvwrite('cwt_swell37.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(swell37);
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
writematrix(feature,'hht_swell37.csv');


f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=10; t2=13.5;
swell38= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,8);
plot(t,swell38);
title('Voltage Swell 38');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([5 25]);

stft=spectrogram(swell38,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell38.csv',stft);


wd1= wavedec2(swell38,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell38,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell38,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell38,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell38,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell38,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell38,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell38.csv");

COEFS = cwt(swell38,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell38);
SCimg=transpose(SCimg);

csvwrite('cwt_swell38.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(swell38);
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
writematrix(feature,'hht_swell38.csv');




f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=10; t2=12;
swell39= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,9);
plot(t,swell39);
title('Voltage Swell 39');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([5 25]);

stft=spectrogram(swell39,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell39.csv',stft);


wd1= wavedec2(swell39,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell39,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell39,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell39,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell39,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell39,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell39,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell39.csv");

COEFS = cwt(swell39,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell39);
SCimg=transpose(SCimg);

csvwrite('cwt_swell39.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(swell39);
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
writematrix(feature,'hht_swell39.csv');



f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=10; t2=14;
swell40= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,10);
plot(t,swell40);
title('Voltage Swell 40');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([5 25]);

stft=spectrogram(swell40,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell40.csv',stft);


wd1= wavedec2(swell40,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell40,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell40,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell40,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell40,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell40,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell40,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell40.csv");

COEFS = cwt(swell40,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell40);
SCimg=transpose(SCimg);

csvwrite('cwt_swell40.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(swell40);
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
writematrix(feature,'hht_swell40.csv');





f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=10; t2=16;
swell41= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,11);
plot(t,swell41);
title('Voltage Swell 41');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([5 25]);


stft=spectrogram(swell41,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell41.csv',stft);


wd1= wavedec2(swell41,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell41,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell41,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell41,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell41,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell41,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell41,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell41.csv");

COEFS = cwt(swell41,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell41);
SCimg=transpose(SCimg);

csvwrite('cwt_swell41.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(swell41);
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
writematrix(feature,'hht_swell41.csv');



t=[0:0.1:150]
A=3000;
f=0.22;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=12; t2=12.3;
sag22= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,12);
plot(t,sag22);
title('Voltage Sag 22');
xlabel('time');
ylabel('Amplitude');
xlim([10 20]);
ylim([-100 100]);


stft=spectrogram(sag22,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag22.csv',stft);


wd1= wavedec2(sag22,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag22,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag22,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag22,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag22,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag22,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag22,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag22.csv");

COEFS = cwt(sag22,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag22);
SCimg=transpose(SCimg);

csvwrite('cwt_sag22.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(sag22);
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
writematrix(feature,'hht_sag22.csv');



figure

t=[0:0.1:150]
A=1575;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=12; t2=13;
sag23= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,1);
plot(t,sag23);
title('Voltage Sag 23');
xlabel('time');
ylabel('Amplitude');
xlim([10 20]);
ylim([-100 100]);

stft=spectrogram(sag23,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag23.csv',stft);


wd1= wavedec2(sag23,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag23,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag23,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag23,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag23,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag23,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag23,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag23.csv");

COEFS = cwt(sag23,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag23);
SCimg=transpose(SCimg);

csvwrite('cwt_sag23.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(sag23);
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
writematrix(feature,'hht_sag23.csv');




t=[0:0.1:150]
A=3000;
f=0.1;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=12; t2=14;
sag24= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,2);
plot(t,sag24);
title('Voltage Sag 24');
xlabel('time');
ylabel('Amplitude');
xlim([10 20]);
ylim([-100 100]);


stft=spectrogram(sag24,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag24.csv',stft);


wd1= wavedec2(sag24,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag24,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag24,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag24,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag24,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag24,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag24,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag24.csv");

COEFS = cwt(sag24,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag24);
SCimg=transpose(SCimg);

csvwrite('cwt_sag24.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(sag24);
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
writematrix(feature,'hht_sag24.csv');



t=[0:0.1:150]
A=4000;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.8; t1=12; t2=17;
sag25= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,3);
plot(t,sag25);
title('Voltage Sag 25');
xlabel('time');
ylabel('Amplitude');
xlim([10 20]);
ylim([-100 100]);


stft=spectrogram(sag25,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag25.csv',stft);


wd1= wavedec2(sag25,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag25,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag25,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag25,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag25,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag25,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag25,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag25.csv");

COEFS = cwt(sag25,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag25);
SCimg=transpose(SCimg);

csvwrite('cwt_sag25.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(sag25);
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
writematrix(feature,'hht_sag25.csv');








t=[0:0.1:150]
A=65;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.8; t1=12; t2=13;
sag26= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,4);
plot(t,sag26);
title('Voltage Sag 26');
xlabel('time');
ylabel('Amplitude');
xlim([10 20]);
ylim([-100 100]);


stft=spectrogram(sag26,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag26.csv',stft);


wd1= wavedec2(sag26,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag26,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag26,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag26,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag26,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag26,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag26,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag26.csv");

COEFS = cwt(sag26,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag26);
SCimg=transpose(SCimg);

csvwrite('cwt_sag26.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(sag26);
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
writematrix(feature,'hht_sag26.csv');




t=[0:0.1:150]
A=10;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.8; t1=12; t2=15;
sag27= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,5);
plot(t,sag27);
title('Voltage Sag 27');
xlabel('time');
ylabel('Amplitude');
xlim([10 20]);
ylim([-100 100]);


stft=spectrogram(sag27,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag27.csv',stft);


wd1= wavedec2(sag27,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag27,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag27,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag27,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag27,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag27,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag27,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag27.csv");

COEFS = cwt(sag27,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag27);
SCimg=transpose(SCimg);

csvwrite('cwt_sag27.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(sag27);
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
writematrix(feature,'hht_sag27.csv');




f=0.1;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=10; t2=11;
swell42= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,6);
plot(t,swell42);
title('Voltage Swell 42');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([5 25]);




stft=spectrogram(swell42,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell42.csv',stft);


wd1= wavedec2(swell42,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell42,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell42,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell42,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell42,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell42,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell42,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell42.csv");

COEFS = cwt(swell42,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell42);
SCimg=transpose(SCimg);

csvwrite('cwt_swell42.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(swell42);
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
writematrix(feature,'hht_swell42.csv');







f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=10; t2=11;
swell43= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,7);
plot(t,swell43);
title('Voltage Swell 43');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([5 25]);


stft=spectrogram(swell43,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell43.csv',stft);


wd1= wavedec2(swell43,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell43,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell43,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell43,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell43,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell43,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell43,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell43.csv");

COEFS = cwt(swell43,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell43);
SCimg=transpose(SCimg);

csvwrite('cwt_swell43.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(swell43);
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
writematrix(feature,'hht_swell43.csv');





f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=10; t2=10.3;
swell44= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,8);
plot(t,swell44);
title('Voltage Swell 44');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([6 20]);

stft=spectrogram(swell44,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell44.csv',stft);


wd1= wavedec2(swell44,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell44,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell44,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell44,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell44,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell44,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell44,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell44.csv");

COEFS = cwt(swell44,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell44);
SCimg=transpose(SCimg);

csvwrite('cwt_swell44.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(swell44);
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
writematrix(feature,'hht_swell44.csv');

t=[0:0.1:15000]
A=15;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=1000; t2=10000;
sag28= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,9);
plot(t,sag28);
title('Voltage Sag 28');
xlabel('time');
ylabel('Amplitude');
xlim([0 15000]);
ylim([-100 100]);



t=[0:0.1:15000]
A=35;
f=2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=500; t2=13000;
sag29= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,10);
plot(t,sag29);
title('Voltage Sag 29');
xlabel('time');
ylabel('Amplitude');
xlim([0 15000]);
ylim([-100 100]);

f=0.2;
t=[0:0.01:15000];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=10; t2=1000;
swell45= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,11);
plot(t,swell45);
title('Voltage Swell 45');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 15000]);


f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.55; t1=100; t2=150;
swell46= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,12);
plot(t,swell46);
title('Voltage Swell 46');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([5 25]);






figure 





t=[0:0.1:15000]
A=900;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=1000; t2=1500;
sag30= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,1);
plot(t,sag30);
title('Voltage Sag 30');
xlabel('time');
ylabel('Amplitude');
xlim([0 15000]);
ylim([-30000 30000]);


t=[0:0.1:15000]
A=3000;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=1000; t2=1500;
sag31= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,2);
plot(t,sag31);
title('Voltage Sag 31');
xlabel('time');
ylabel('Amplitude');
xlim([0 15000]);
ylim([-30000 30000]);


t=[0:0.1:15000]
A=9000;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=1000; t2=1500;
sag32= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,3);
plot(t,sag32);
title('Voltage Sag 32');
xlabel('time');
ylabel('Amplitude');
xlim([0 15000]);
ylim([-30000 30000]);

t=[0:0.1:150]
A=20000;
f=2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=80; t2=80.5;
sag33= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,4);
plot(t,sag33);
title('Voltage Sag 33');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-30000 30000]);


A=900;
f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=10; t2=11;
swell47= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,5);
plot(t,swell47);
title('Voltage Swell 47');
xlabel('time');
ylabel('Amplitude');
ylim([-30000 30000]);
xlim([5 25]);


A=3000;
f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.8; t1=10; t2=11;
swell48= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,6);
plot(t,swell48);
title('Voltage Swell 48');
xlabel('time');
ylabel('Amplitude');
ylim([-30000 30000]);
xlim([0 150]);



A=30000;
f=0.2;
t=[0:0.1:1000];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.8; t1=10; t2=110;
swell49= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,7);
plot(t,swell49);
title('Voltage Swell 49');
xlabel('time');
ylabel('Amplitude');
ylim([-30000 30000]);
xlim([0 150]);


A=60000;
f=0.2;
t=[0:0.1:15000];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.25; t1=100; t2=950;
swell50= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,8);
plot(t,swell50);
title('Voltage Swell 50');
xlabel('time');
ylabel('Amplitude');
ylim([-60000 60000]);
xlim([0 15000]);


f1=100;
n_t1=0:1/f1:150;
%t=[0:0.01:50];
f=0.2;
v1=100*sin(2*pi*f.*n_t1);
v3=30*sin(2*pi*3*f.*n_t1);
v5=20*sin(2*pi*5*f.*n_t1);
%v7=1*sin(2*pi*7*f.*n_t1);
 
harmonic19=v1+v3+v5;
subplot(3,6,9);
plot(n_t1,harmonic19);
title('Harmonics 19');
xlabel('time');
ylabel('Amplitude');
ylim([-1000 1000]);
xlim([0 5]);


f1=100;
n_t1=0:1/f1:150;
%t=[0:0.01:50];
f=0.2;
v1=1000*sin(2*pi*f.*n_t1);
v3=300*sin(2*pi*3*f.*n_t1);
v5=200*sin(2*pi*5*f.*n_t1);
%v7=1*sin(2*pi*7*f.*n_t1);
 
harmonic20=v1+v3+v5;
subplot(3,6,10);
plot(n_t1,harmonic20);
title('Harmonics 20');
xlabel('time');
ylabel('Amplitude');
ylim([-1000 1000]);
xlim([0 5]);


f1=100;
n_t1=0:1/f1:150;
%t=[0:0.01:50];
f=0.2;
v1=50000*sin(2*pi*f.*n_t1);
v3=3000*sin(2*pi*3*f.*n_t1);
v5=2000*sin(2*pi*5*f.*n_t1);
%v7=1*sin(2*pi*7*f.*n_t1);
 
harmonic21=v1+v3+v5;
subplot(3,6,11);
plot(n_t1,harmonic21);
title('Harmonics 21');
xlabel('time');
ylabel('Amplitude');
ylim([-1000 1000]);
xlim([0 5]);


f1=100;
n_t1=0:1/f1:150;
f=0.2;
v1=100*sin(2*pi*f*n_t1);
v3=30*sin(2*pi*3*f*n_t1);
v5=20*sin(2*pi*5*f*n_t1);
v7=10*sin(2*pi*7*f*n_t1);

harmonic22=v1+v3+v5+v7;
subplot(3,6,12);
plot(n_t1,harmonic22);
title('Harmonics 22');
xlabel('time');
ylabel('Amplitude');
ylim([-1000 1000]);
xlim([0 5]);


f1=100;
n_t1=0:1/f1:150;
f=0.2;
v1=1000*sin(2*pi*f*n_t1);
v3=300*sin(2*pi*3*f*n_t1);
v5=200*sin(2*pi*5*f*n_t1);
v7=100*sin(2*pi*7*f*n_t1);

harmonic23=v1+v3+v5+v7;
subplot(3,6,13);
plot(n_t1,harmonic23);
title('Harmonics 23');
xlabel('time');
ylabel('Amplitude');
ylim([-1000 1000]);
xlim([0 5]);


f1=100;
n_t1=0:1/f1:150;
f=0.2;
v1=100*sin(2*pi*f*n_t1);
v3=30*sin(2*pi*3*f*n_t1);
v5=20*sin(2*pi*5*f*n_t1);
v7=10*sin(2*pi*7*f*n_t1);
v9=10*sin(2*pi*9*f*n_t1);

harmonic24=v1+v3+v5+v7+v9;
subplot(3,6,14);
plot(n_t1,harmonic24);
title('Harmonics 24');
xlabel('time');
ylabel('Amplitude');
ylim([-200 200]);
xlim([0 5]);


f1=100;
n_t1=0:1/f1:150;
f=0.2;
v1=1000*sin(2*pi*f*n_t1);
v3=300*sin(2*pi*3*f*n_t1);
v5=200*sin(2*pi*5*f*n_t1);
v7=100*sin(2*pi*7*f*n_t1);
v9=100*sin(2*pi*9*f*n_t1);

harmonic25=v1+v3+v5+v7+v9;
subplot(3,6,15);
plot(n_t1,harmonic25);
title('Harmonics 25');
xlabel('time');
ylabel('Amplitude');
ylim([-1500 1500]);
xlim([0 5]);



f1=100;
n_t1=0:1/f1:150;
f=0.2;
v1=10000*sin(2*pi*f*n_t1);
v3=3000*sin(2*pi*3*f*n_t1);
v5=2000*sin(2*pi*5*f*n_t1);
v7=1000*sin(2*pi*7*f*n_t1);
v9=1000*sin(2*pi*9*f*n_t1);

harmonic26=v1+v3+v5+v7+v9;
subplot(3,6,16);
plot(n_t1,harmonic26);
title('Harmonics 26');
xlabel('time');
ylabel('Amplitude');
ylim([-11000 11000]);
xlim([0 10]);


t=[0:0.1:1500]
A=9000;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.4; t1=80; t2=400;
sag34= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,17);
plot(t,sag34);
title('Voltage Sag 34');
xlabel('time');
ylabel('Amplitude');
xlim([0 15000]);
ylim([-30000 30000]);



t=[0:0.1:10000]
A=29000;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.4; t1=800; t2=3000;
sag35= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,18);
plot(t,sag35);
title('Voltage Sag 35');
xlabel('time');
ylabel('Amplitude');
xlim([0 15000]);
ylim([-30000 30000]);

stft=spectrogram(sag28,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag28.csv',stft);


wd1= wavedec2(sag28,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag28,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag28,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag28,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag28,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag28,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag28,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag28.csv");

COEFS = cwt(sag28,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag28);
SCimg=transpose(SCimg);

csvwrite('cwt_sag28.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(sag28);
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
writematrix(feature,'hht_sag28.csv');

stft=spectrogram(sag29,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag29.csv',stft);


wd1= wavedec2(sag29,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag29,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag29,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag29,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag29,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag29,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag29,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag29.csv");

COEFS = cwt(sag29,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag29);
SCimg=transpose(SCimg);

csvwrite('cwt_sag29.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(sag29);
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
writematrix(feature,'hht_sag29.csv');

stft=spectrogram(sag30,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag30.csv',stft);


wd1= wavedec2(sag30,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag30,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag30,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag30,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag30,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag30,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag30,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag30.csv");

COEFS = cwt(sag30,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag30);
SCimg=transpose(SCimg);

csvwrite('cwt_sag30.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(sag30);
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
writematrix(feature,'hht_sag30.csv');

stft=spectrogram(sag31,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag31.csv',stft);


wd1= wavedec2(sag31,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag31,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag31,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag31,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag31,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag31,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag31,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag31.csv");

COEFS = cwt(sag31,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag31);
SCimg=transpose(SCimg);

csvwrite('cwt_sag31.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(sag31);
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
writematrix(feature,'hht_sag31.csv');

stft=spectrogram(sag32,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag32.csv',stft);


wd1= wavedec2(sag32,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag32,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag32,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag32,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag32,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag32,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag32,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag32.csv");

COEFS = cwt(sag32,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag32);
SCimg=transpose(SCimg);

csvwrite('cwt_sag32.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(sag32);
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
writematrix(feature,'hht_sag32.csv');

stft=spectrogram(sag33,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag33.csv',stft);


wd1= wavedec2(sag33,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag33,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag33,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag33,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag33,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag33,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag33,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag33.csv");

COEFS = cwt(sag33,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag33);
SCimg=transpose(SCimg);

csvwrite('cwt_sag33.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(sag33);
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
writematrix(feature,'hht_sag33.csv');

stft=spectrogram(sag34,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag34.csv',stft);


wd1= wavedec2(sag34,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag34,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag34,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag34,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag34,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag34,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag34,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag34.csv");

COEFS = cwt(sag34,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag34);
SCimg=transpose(SCimg);

csvwrite('cwt_sag34.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(sag34);
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
writematrix(feature,'hht_sag34.csv');


stft=spectrogram(sag35,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_sag35.csv',stft);


wd1= wavedec2(sag35,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag35,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag35,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag35,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag35,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag35,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag35,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag35.csv");

COEFS = cwt(sag35,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag35);
SCimg=transpose(SCimg);

csvwrite('cwt_sag35.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(sag35);
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
writematrix(feature,'hht_sag35.csv');



stft=spectrogram(swell45,'yaxis');
stft=stft(1:1024,:);
csvwrite('spec_swell45.csv',stft);


wd1= wavedec2(swell45,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell45,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell45,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell45,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell45,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell45,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell45,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell45.csv");

COEFS = cwt(swell45,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell45);
SCimg=transpose(SCimg);

csvwrite('cwt_swell45.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(swell45);
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
writematrix(feature,'hht_swell45.csv');

stft=spectrogram(swell46,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell46.csv',stft);


wd1= wavedec2(swell46,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell46,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell46,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell46,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell46,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell46,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell46,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell46.csv");

COEFS = cwt(swell46,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell46);
SCimg=transpose(SCimg);

csvwrite('cwt_swell46.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(swell46);
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
writematrix(feature,'hht_swell46.csv');


stft=spectrogram(swell47,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell47.csv',stft);


wd1= wavedec2(swell47,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell47,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell47,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell47,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell47,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell47,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell47,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell47.csv");

COEFS = cwt(swell47,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell47);
SCimg=transpose(SCimg);

csvwrite('cwt_swell47.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(swell47);
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
writematrix(feature,'hht_swell47.csv');


stft=spectrogram(swell48,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell48.csv',stft);


wd1= wavedec2(swell48,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell48,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell48,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell48,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell48,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell48,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell48,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell48.csv");

COEFS = cwt(swell48,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell48);
SCimg=transpose(SCimg);

csvwrite('cwt_swell48.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(swell48);
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
writematrix(feature,'hht_swell48.csv');


stft=spectrogram(swell49,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell49.csv',stft);


wd1= wavedec2(swell49,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell49,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell49,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell49,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell49,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell49,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell49,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell49.csv");

COEFS = cwt(swell49,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell49);
SCimg=transpose(SCimg);

csvwrite('cwt_swell49.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(swell49);
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
writematrix(feature,'hht_swell49.csv');


stft=spectrogram(swell50,'yaxis');
%stft=stft(1:256,:);
csvwrite('spec_swell50.csv',stft);


wd1= wavedec2(swell50,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell50,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell50,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell50,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell50,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell50,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell50,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell50.csv");

COEFS = cwt(swell50,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell50);
SCimg=transpose(SCimg);

csvwrite('cwt_swell50.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(swell50);
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
writematrix(feature,'hht_swell50.csv');



stft=spectrogram(harmonic19,'yaxis');
stft=stft(1:512,:);
csvwrite('spec_harmonic19.csv',stft);


wd1= wavedec2(harmonic19,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic19,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic19,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic19,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic19,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic19,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic19,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic19.csv");

COEFS = cwt(harmonic19,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic19);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic19.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(harmonic19);
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
writematrix(feature,'hht_harmonic19.csv');



stft=spectrogram(harmonic20,'yaxis');
stft=stft(1:512,:);
csvwrite('spec_harmonic20.csv',stft);


wd1= wavedec2(harmonic20,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic20,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic20,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic20,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic20,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic20,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic20,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic20.csv");

COEFS = cwt(harmonic20,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic20);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic20.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(harmonic20);
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
writematrix(feature,'hht_harmonic20.csv');



stft=spectrogram(harmonic21,'yaxis');
stft=stft(1:512,:);
csvwrite('spec_harmonic21.csv',stft);


wd1= wavedec2(harmonic21,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic21,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic21,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic21,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic21,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic21,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic21,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic21.csv");

COEFS = cwt(harmonic21,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic21);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic21.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(harmonic21);
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
writematrix(feature,'hht_harmonic21.csv');




stft=spectrogram(harmonic22,'yaxis');
stft=stft(1:512,:);
csvwrite('spec_harmonic22.csv',stft);


wd1= wavedec2(harmonic22,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic22,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic22,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic22,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic22,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic22,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic22,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic22.csv");

COEFS = cwt(harmonic22,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic22);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic22.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(harmonic22);
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
writematrix(feature,'hht_harmonic22.csv');




stft=spectrogram(harmonic23,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_harmonic23.csv',stft);


wd1= wavedec2(harmonic23,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic23,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic23,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic23,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic23,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic23,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic23,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic23.csv");

COEFS = cwt(harmonic23,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic23);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic23.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(harmonic23);
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
writematrix(feature,'hht_harmonic23.csv');



stft=spectrogram(harmonic24,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_harmonic24.csv',stft);


wd1= wavedec2(harmonic24,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic24,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic24,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic24,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic24,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic24,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic24,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic24.csv");

COEFS = cwt(harmonic24,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic24);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic24.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(harmonic24);
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
writematrix(feature,'hht_harmonic24.csv');




stft=spectrogram(harmonic25,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_harmonic25.csv',stft);


wd1= wavedec2(harmonic25,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic25,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic25,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic25,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic25,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic25,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic25,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic25.csv");

COEFS = cwt(harmonic25,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic25);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic25.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(harmonic25);
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
writematrix(feature,'hht_harmonic25.csv');



stft=spectrogram(harmonic26,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_harmonic26.csv',stft);


wd1= wavedec2(harmonic26,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic26,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic26,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic26,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic26,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic26,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic26,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic26.csv");

COEFS = cwt(harmonic26,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic26);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic26.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(harmonic26);
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
writematrix(feature,'hht_harmonic26.csv');







% 5th PQ event 

figure

t=[0:0.1:150]
A=30;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=12; t2=13;
inter1= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,1);
plot(t,inter1);
title('Voltage Interuption 1');
xlabel('time');
ylabel('Amplitude');
xlim([10 20]);
ylim([-100 100]);



t=[0:0.1:150]
A=30;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=12; t2=20;
inter2= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,2);
plot(t,inter2);
title('Voltage Interuption 2');
xlabel('time');
ylabel('Amplitude');
xlim([10 35]);
ylim([-100 100]);


t=[0:0.1:15000]
A=30;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=1200; t2=2000;
inter3 = (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,3);
plot(t,inter3);
title('Voltage Interuption 3');
xlabel('time');
ylabel('Amplitude');
xlim([1000 3500]);
ylim([-100 100]);


t=[0:0.1:150];
A=35;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=12; t2=20;
inter4= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,4);
plot(t,inter4);
title('Voltage Interuption 4');
xlabel('time');
ylabel('Amplitude');
xlim([10 30]);
ylim([-100 100]);


t=[0:0.1:150];
A=50;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=12; t2=13;
inter5= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,5);
plot(t,inter5);
title('Voltage Interuption 5');
xlabel('time');
ylabel('Amplitude');
xlim([10 20]);
ylim([-100 100]);


t=[0:0.1:150]
A=100;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=12; t2=20;
inter6= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,6);
plot(t,inter6);
title('Voltage Interuption 6');
xlabel('time');
ylabel('Amplitude');
xlim([10 35]);
ylim([-100 100]);


t=[0:0.1:150]
A=100;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=144; t2=145;
inter7= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,7);
plot(t,inter7);
title('Voltage Interuption 7');
xlabel('time');
ylabel('Amplitude');
xlim([50 150]);
ylim([-100 100]);


t=[0:0.1:150]
A=100;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=140; t2=148;
inter8= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,8);
plot(t,inter8);
title('Voltage Interuption 8');
xlabel('time');
ylabel('Amplitude');
xlim([50 150]);
ylim([-100 100]);


t=[0:0.1:15000]
A=550;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=14000; t2=14800;
inter9 = (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,9);
plot(t,inter9);
title('Voltage Interuption 9');
xlabel('time');
ylabel('Amplitude');
xlim([1000 3500]);
ylim([-100 100]);

t=[0:0.1:150];
A=1000;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=140; t2=148;
inter10= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,10);
plot(t,inter10);
title('Voltage Interuption 10');
xlabel('time');
ylabel('Amplitude');
xlim([100 150]);
ylim([-100 100]);


t=[0:0.1:150];
A=3000;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=70; t2=90;
inter11= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,11);
plot(t,inter11);
title('Voltage Interuption 11');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-100 100]);

t=[0:0.1:150];
A=5;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=1; t1=75; t2=110;
inter12= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,6,12);
plot(t,inter12);
title('Voltage Interuption 12');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-100 100]);




stft=spectrogram(inter1,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter1.csv',stft);


wd1= wavedec2(inter1,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter1,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter1,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter1,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter1,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter1,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter1,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter1.csv");

COEFS = cwt(inter1,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter1);
SCimg=transpose(SCimg);

csvwrite('cwt_inter1.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(inter1);
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
writematrix(feature,'hht_inter1.csv');

stft=spectrogram(inter2,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter2.csv',stft);


wd1= wavedec2(inter2,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter2,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter2,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter2,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter2,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter2,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter2,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter2.csv");

COEFS = cwt(inter2,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter2);
SCimg=transpose(SCimg);

csvwrite('cwt_inter2.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(inter2);
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
writematrix(feature,'hht_inter2.csv');

stft=spectrogram(inter3,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter3.csv',stft);


wd1= wavedec2(inter3,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter3,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter3,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter3,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter3,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter3,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter3,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter3.csv");

COEFS = cwt(inter3,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter3);
SCimg=transpose(SCimg);

csvwrite('cwt_inter3.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(inter3);
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
writematrix(feature,'hht_inter3.csv');

stft=spectrogram(inter4,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter4.csv',stft);


wd1= wavedec2(inter4,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter4,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter4,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter4,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter4,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter4,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter4,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter4.csv");

COEFS = cwt(inter4,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter4);
SCimg=transpose(SCimg);

csvwrite('cwt_inter4.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(inter4);
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
writematrix(feature,'hht_inter4.csv');

stft=spectrogram(inter5,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter5.csv',stft);


wd1= wavedec2(inter5,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter5,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter5,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter5,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter5,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter5,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter5,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter5.csv");

COEFS = cwt(inter5,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter5);
SCimg=transpose(SCimg);

csvwrite('cwt_inter5.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(inter5);
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
writematrix(feature,'hht_inter5.csv');

stft=spectrogram(inter6,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter6.csv',stft);


wd1= wavedec2(inter6,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter6,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter6,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter6,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter6,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter6,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter6,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter6.csv");

COEFS = cwt(inter6,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter6);
SCimg=transpose(SCimg);

csvwrite('cwt_inter6.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(inter6);
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
writematrix(feature,'hht_inter6.csv');

stft=spectrogram(inter7,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter7.csv',stft);


wd1= wavedec2(inter7,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter7,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter7,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter7,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter7,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter7,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter7,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter7.csv");

COEFS = cwt(inter7,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter7);
SCimg=transpose(SCimg);

csvwrite('cwt_inter7.csv',SCimg(:,[1:9]));


[imf,residue1]=emd(inter7);
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
writematrix(feature,'hht_inter7.csv');

stft=spectrogram(inter8,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter8.csv',stft);


wd1= wavedec2(inter8,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter8,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter8,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter8,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter8,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter8,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter8,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter8.csv");

COEFS = cwt(inter8,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter8);
SCimg=transpose(SCimg);

csvwrite('cwt_inter8.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(inter8);
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
writematrix(feature,'hht_inter8.csv');

stft=spectrogram(inter9,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter9.csv',stft);


wd1= wavedec2(inter9,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter9,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter9,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter9,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter9,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter9,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter9,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter9.csv");

COEFS = cwt(inter9,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter9);
SCimg=transpose(SCimg);

csvwrite('cwt_inter9.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(inter9);
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
writematrix(feature,'hht_inter9.csv');

stft=spectrogram(inter10,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter10.csv',stft);


wd1= wavedec2(inter10,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter10,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter10,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter10,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter10,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter10,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter10,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter10.csv");

COEFS = cwt(inter10,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter10);
SCimg=transpose(SCimg);

csvwrite('cwt_inter10.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(inter10);
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
writematrix(feature,'hht_inter10.csv');

stft=spectrogram(inter11,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter11.csv',stft);


wd1= wavedec2(inter11,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter11,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter11,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter11,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter11,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter11,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter11,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter11.csv");

COEFS = cwt(inter11,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter11);
SCimg=transpose(SCimg);

csvwrite('cwt_inter11.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(inter11);
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
writematrix(feature,'hht_inter11.csv');

stft=spectrogram(inter12,'yaxis');
%stft=stft(1:512,:);
csvwrite('spec_inter12.csv',stft);


wd1= wavedec2(inter12,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(inter12,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(inter12,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(inter12,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(inter12,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(inter12,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(inter12,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_inter12.csv");

COEFS = cwt(inter12,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",inter12);
SCimg=transpose(SCimg);

csvwrite('cwt_inter12.csv',SCimg(:,[1:9]));

[imf,residue1]=emd(inter12);
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
writematrix(feature,'hht_inter12.csv');