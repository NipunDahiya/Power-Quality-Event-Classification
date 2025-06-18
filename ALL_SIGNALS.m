% Contains all the signals used in the training set 
% 1st iteration 

A=30.0;
T=20;
w=2*pi*0.20;
t = [0:0.1:150];
sin1 = A*sin(w*t);
subplot(2,6,1);
plot(t,sin1);
title('Sine Wave 1');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);
%cwtftinfo2


stft=spectrogram(sin1,'yaxis');
csvwrite('spec_sin1.csv',stft);




scales = (1:150);

COEFS = cwt(sin1,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin1);
SCimg=transpose(SCimg);
csvwrite('cwt_sin1.csv',SCimg(:,[1:9]));

wd1= wavedec2(sin1,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin1,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin1,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin1,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin1,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin1,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin1,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin1.csv");


A=10.0;
T=20;
w=2*pi*0.20;
t = [0:0.1:150];
sin2 = A*sin(w*t);
subplot(2,6,2);
plot(t,sin2);
title('Sine Wave 2');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sin2,'yaxis');
csvwrite('spec_sin2.csv',stft);


COEFS = cwt(sin2,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin2);
SCimg=transpose(SCimg);

csvwrite('cwt_sin2.csv',SCimg(:,[1:9]));



A=100.0;
T=20;
w=2*pi*0.20;
t = [0:0.1:150];
sin3 = A*sin(w*t);
subplot(2,6,3);
plot(t,sin3);
title('Sine Wave 3');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sin3,'yaxis');
csvwrite('spec_sin3.csv',stft);


COEFS = cwt(sin3,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin3);
SCimg=transpose(SCimg);

csvwrite('cwt_sin3.csv',SCimg(1:1501,[1:9]));


A=11;
T=20;
w=2*pi*0.20;
t = [0:0.1:75];
a = A*sin(w*t);
%subplot(2,10,5);
%plot(t,a);
%title('Sine Wave1');
%xlabel('time');
%ylabel('Amplitude');
%xlim([0 150]);
%ylim([-50 50]);

A=6;
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

sin4=[a b];
t1=[0:0.1:150.1];
disp(length(t1));
subplot(2,6,4);
plot(t1,sin4);
title("Sin Wave 4")
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sin4,'yaxis');
csvwrite('spec_sin4.csv',stft);


COEFS = cwt(sin4,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin4);
SCimg=transpose(SCimg);
csvwrite('cwt_sin4.csv',SCimg(1:1501,[1:9]));


A=1.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:150];
sin5 = A*sin(w*t);
subplot(2,6,5);

plot(t,sin5);
title('Sine Wave 5');
xlabel('time');
ylabel('Amplitude');
xlim([0 50]);
ylim([-50 50]);

stft=spectrogram(sin5,'yaxis');
csvwrite('spec_sin5.csv',stft);


COEFS = cwt(sin5,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin5);
SCimg=transpose(SCimg);

csvwrite('cwt_sin5.csv',SCimg(1:1501,[1:9]));


A=0.1;
T=20;
w=2*pi*0.2;
t = [0:0.1:150];
sin6 = A*sin(w*t);
subplot(2,6,6);
plot(t,sin6);
title('Sine Wave 6');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sin6,'yaxis');
csvwrite('spec_sin6.csv',stft);


COEFS = cwt(sin6,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin6);
SCimg=transpose(SCimg);

csvwrite('cwt_sin6.csv',SCimg(1:1501,[1:9]));



A=105;
T=20;
w=2*pi*0.2;
t = [0:0.1:150];
sin7 = A*sin(w*t);
subplot(2,6,7);
plot(t,sin7);
title('Sine Wave 7');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sin7,'yaxis');
csvwrite('spec_sin7.csv',stft);


COEFS = cwt(sin7,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin7);
SCimg=transpose(SCimg);
disp(SCimg)
csvwrite('cwt_sin7.csv',SCimg(1:1501,[1:9]));


A=50.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:75];
a = A*sin(w*t);
%subplot(2,10,5);
%plot(t,a);
%title('Sine Wave1');
%xlabel('time');
%ylabel('Amplitude');
%xlim([0 150]);
%ylim([-50 50]);

A=0.5;
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



sin8=[a b];
t1=[0:0.1:150.1];
disp(length(t1));
subplot(2,6,8);
plot(t1,sin8);
title("Sin Wave 8")
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sin8,'yaxis');
csvwrite('spec_sin8.csv',stft);


COEFS = cwt(sin8,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin8);
SCimg=transpose(SCimg);

disp(SCimg)
csvwrite('cwt_sin8.csv',SCimg(1:1501,[1:9]));


A=130.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:150];
sin9 = A*sin(w*t);
subplot(2,6,9);
plot(t,sin9);
title('Sine Wave 9');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sin9,'yaxis');
csvwrite('spec_sin9.csv',stft);


COEFS = cwt(sin9,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin9);
SCimg=transpose(SCimg);

csvwrite('cwt_sin9.csv',SCimg(1:1501,[1:9]));


A=1.5;
T=20;
w=2*pi*0.2;
t = [0:0.1:150];
sin10 = A*sin(w*t);
subplot(2,6,10);
plot(t,sin10);
title('Sine Wave 10');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sin10,'yaxis');
csvwrite('spec_sin10.csv',stft);


COEFS = cwt(sin10,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin10);
SCimg=transpose(SCimg);

csvwrite('cwt_sin10.csv',SCimg(1:1501,[1:9]));


A=1000;
T=20;
w=2*pi*0.2;
t = [0:0.1:150];
sin11 = A*sin(w*t);
subplot(2,6,11);
plot(t,sin11);
title('Sine Wave 11');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sin11,'yaxis');
csvwrite('spec_sin11.csv',stft);


COEFS = cwt(sin11,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin11);
SCimg=transpose(SCimg);

csvwrite('cwt_sin11.csv',SCimg(1:1501,[1:9]));


A=3400;
T=20;
w=2*pi*0.2;
t = [0:0.1:75];
a = A*sin(w*t);
%subplot(2,10,5);
%plot(t,a);
%title('Sine Wave1');
%xlabel('time');
%ylabel('Amplitude');
%xlim([0 150]);
%ylim([-50 50]);

A=3400;
T=20;
w=2*pi*0.2;
t = [0:0.1:75];
disp("t = ")
disp(length(t))
b = A*sin(w*t);
%subplot(2,10,6);
%plot(t,b);
%title('Sine Wave2');
%xlabel('time');
%ylabel('Amplitude');
%xlim([0 50]);
%ylim([-50 50]);



sin12=[a b];
disp("t1=")
disp(length(t1));
t1=[0:0.1:150.1];
disp(length(t1));
subplot(2,6,12);
plot(t1,sin12);
title("Sin Wave 12")
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sin12,'yaxis');
csvwrite('spec_sin12.csv',stft);


COEFS = cwt(sin12,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sin12);
SCimg=transpose(SCimg);

csvwrite('cwt_sin12.csv',SCimg(1:1501,[1:9]));



% VOLTAGE SAG SIGNALS 


figure
t=[0:0.1:1500]
A=30;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=12; t2=24;
sag1= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,1);
plot(t,sag1);
title('Voltage Sag 1');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-100 100]);

stft=spectrogram(sag1,'yaxis');
csvwrite('spec_sag1.csv',stft);



COEFS = cwt(sag1,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag1);
SCimg=transpose(SCimg);

csvwrite('cwt_sag1.csv',SCimg(1:1501,[1:9]));




A=100;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=12; t2=24;
sag2= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,2);
plot(t,sag2);
title('Voltage Sag 2');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-100 100]);

stft=spectrogram(sag2,'yaxis');
csvwrite('spec_sag2.csv',stft);



COEFS = cwt(sag2,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag2);
SCimg=transpose(SCimg);

csvwrite('cwt_sag2.csv',SCimg(1:1501,[1:9]));




A=30;
f=0.2;
W=2*pi*f;
t = [0:0.1:150];
x=A*sin(W.*t);
disp("HELLO")
disp(length(x))
u=inline('t>=0');
a1=0.6; t1=125; t2=150;
sag3= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,3);
plot(t,sag3);
title('Voltage Sag 3');
xlabel('time');
ylabel('Amplitude');
xlim([0 150])
ylim([-100 100])

stft=spectrogram(sag3,'yaxis');
csvwrite('spec_sag3.csv',stft);



COEFS = cwt(sag3,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag3);
SCimg=transpose(SCimg);

csvwrite('cwt_sag3.csv',SCimg(1:1501,[1:9]));



A=100;
f=0.2;
W=2*pi*f;
t = [0:0.1:150];
x=A*sin(W.*t);
disp("HELLO")
disp(length(x))
u=inline('t>=0');
a1=0.9; t1=125; t2=150;
sag4= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,4);
plot(t,sag4);
title('Voltage Sag 4');
xlabel('time');
ylabel('Amplitude');
xlim([0 150])
ylim([-100 100])

stft=spectrogram(sag4,'yaxis');
csvwrite('spec_sag4.csv',stft);



COEFS = cwt(sag4,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag4);
SCimg=transpose(SCimg);

csvwrite('cwt_sag4.csv',SCimg(1:1501,[1:9]));



A=30.0;
T=20;
w=2*pi*0.20;
t = [0:0.1:125];
f = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);

A=10.0;
T=20;
w=2*pi*0.20;
t = [0:0.1:25];
a = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);


sag5=[a f];
t1=[0:0.1:150.1];
disp(length(t1));
subplot(3,6,5);
plot(t1,sag5);
title("Voltage Sag 5 ")
xlim([0 150]);
ylim([-100 100]);

stft=spectrogram(sag5,'yaxis');
csvwrite('spec_sag5.csv',stft);



COEFS = cwt(sag5,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag5);
SCimg=transpose(SCimg);

csvwrite('cwt_sag5.csv',SCimg(1:1501,[1:9]));

A=100.0;
T=20;
w=2*pi*0.20;
t = [0:0.1:125];
f = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);

A=10.0;
T=20;
w=2*pi*0.20;
t = [0:0.1:25];
a = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);

sag6=[a f];
t1=[0:0.1:150.1];
disp(length(t1));
subplot(3,6,6);
plot(t1,sag6);
title("Voltage Sag 6")
xlim([0 150]);
ylim([-100 100]); 

stft=spectrogram(sag6,'yaxis');
csvwrite('spec_sag6.csv',stft);


COEFS = cwt(sag6,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag6);
SCimg=transpose(SCimg);

csvwrite('cwt_sag6.csv',SCimg(1:1501,[1:9]));


A=3;
f=0.2;
W=2*pi*f;
t=[0:0.1:150];
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=12; t2=24;
sag7= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,7);
plot(t,sag7);
title('Voltage Sag 7');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sag7,'yaxis');
csvwrite('spec_sag7.csv',stft);


COEFS = cwt(sag7,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag7);
SCimg=transpose(SCimg);

csvwrite('cwt_sag7.csv',SCimg(1:1501,[1:9]));



f=0.2;
A=100;
W=2*pi*f;
t=[0:0.1:150];
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=12; t2=30;
sag8= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,8);
plot(t,sag8);
title('Voltage Sag 8');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sag8,'yaxis');
csvwrite('spec_sag8.csv',stft);


COEFS = cwt(sag8,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag8);
SCimg=transpose(SCimg);

csvwrite('cwt_sag8.csv',SCimg(1:1501,[1:9]));


A=2.4;
f=0.206;
W=2*pi*f;
t = [0:0.1:150];
x=A*sin(W.*t);
disp("HELLO")
disp(length(x))
u=inline('t>=0');
a1=0.6; t1=125; t2=150;
sag9= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,9);
plot(t,sag9);
title('Voltage Sag 9');
xlabel('time');
ylabel('Amplitude');
xlim([0 150])
ylim([-100 100])

stft=spectrogram(sag9,'yaxis');
csvwrite('spec_sag9.csv',stft);


COEFS = cwt(sag9,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag9);
SCimg=transpose(SCimg);

csvwrite('cwt_sag9.csv',SCimg(1:1501,[1:9]));




A=650;
f=0.206;
W=2*pi*f;
t = [0:0.1:150];
x=A*sin(W.*t);
disp("HELLO")
disp(length(x))
u=inline('t>=0');
a1=0.9; t1=125; t2=150;
sag10= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,10);
plot(t,sag10);
title('Voltage Sag 10');
xlabel('time');
ylabel('Amplitude');
xlim([0 150])
ylim([-100 100])

stft=spectrogram(sag10,'yaxis');
csvwrite('spec_sag10.csv',stft);


COEFS = cwt(sag10,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag10);
SCimg=transpose(SCimg);

csvwrite('cwt_sag10.csv',SCimg(1:1501,[1:9]));


A=3000.0;
T=20;
f=0.2;
w=2*pi*f;
t = [0:0.1:125];
f = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);

A=1350.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:25];
a = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);


sag11=[a f];
t1=[0:0.1:150.1];
disp(length(t1));
subplot(3,6,11);
plot(t1,sag11);
title("Voltage Sag 11")
xlim([0 150]);
ylim([-100 100]);

stft=spectrogram(sag11,'yaxis');
csvwrite('spec_sag11.csv',stft);


COEFS = cwt(sag11,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag11);
SCimg=transpose(SCimg);

csvwrite('cwt_sag11.csv',SCimg(1:1501,[1:9]));


A=100.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:125];
f = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);

A=50.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:25];
a = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);


sag12=[a f];
t1=[0:0.1:150.1];
disp(length(t1));
subplot(3,6,12);
plot(t1,sag12);
title("Voltage Sag 12")
xlim([0 150]);
ylim([-100 100]);

stft=spectrogram(sag12,'yaxis');
csvwrite('spec_sag12.csv',stft);


COEFS = cwt(sag12,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag12);
SCimg=transpose(SCimg);

csvwrite('cwt_sag12.csv',SCimg(1:1501,[1:9]));


A=9800;
f=0.2;
W=2*pi*f;
t=[0:0.1:150];
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=12; t2=35;
sag13= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,13);
plot(t,sag13);
title('Voltage Sag 13');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sag13,'yaxis');
csvwrite('spec_sag13.csv',stft);


COEFS = cwt(sag13,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag13);
SCimg=transpose(SCimg);

csvwrite('cwt_sag13.csv',SCimg(1:1501,[1:9]));



f=0.2;
A=200;
W=2*pi*f;
t=[0:0.1:150];
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=12; t2=33;
sag14= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,14);
plot(t,sag14);
title('Voltage Sag 14');
xlabel('time');
ylabel('Amplitude');
xlim([0 150]);
ylim([-50 50]);

stft=spectrogram(sag14,'yaxis');
csvwrite('spec_sag14.csv',stft);



COEFS = cwt(sag14,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag14);
SCimg=transpose(SCimg);

csvwrite('cwt_sag14.csv',SCimg(1:1501,[1:9]));

A=11000;
f=0.2;
W=2*pi*f;
t = [0:0.1:150];
x=A*sin(W.*t);
disp("HELLO")
disp(length(x))
u=inline('t>=0');
a1=0.6; t1=125; t2=150;
sag15= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,15);
plot(t,sag15);
title('Voltage Sag 15');
xlabel('time');
ylabel('Amplitude');
xlim([0 150])
ylim([-100 100])

stft=spectrogram(sag15,'yaxis');
csvwrite('spec_sag15.csv',stft);


COEFS = cwt(sag15,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag15);
SCimg=transpose(SCimg);

csvwrite('cwt_sag15.csv',SCimg(1:1501,[1:9]));



A=5000;
f=0.2;
W=2*pi*f;
t = [0:0.1:150];
x=A*sin(W.*t);
disp("HELLO")
disp(length(x))
u=inline('t>=0');
a1=0.9; t1=125; t2=145;
sag16= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,6,16);
plot(t,sag16);
title('Voltage Sag 16');
xlabel('time');
ylabel('Amplitude');
xlim([0 150])
ylim([-100 100])

stft=spectrogram(sag16,'yaxis');
csvwrite('spec_sag16.csv',stft);


COEFS = cwt(sag16,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag16);
SCimg=transpose(SCimg);

csvwrite('cwt_sag16.csv',SCimg(1:1501,[1:9]));



A=25.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:125];
f = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);

A=10.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:25];
a = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);


sag17=[a f];
t1=[0:0.1:150.1];
disp(length(t1));
subplot(3,6,17);
plot(t1,sag17);
title("Voltage Sag 17")
xlim([0 150]);
ylim([-100 100]);

stft=spectrogram(sag17,'yaxis');
csvwrite('spec_sag17.csv',stft);


COEFS = cwt(sag17,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag17);
SCimg=transpose(SCimg);

csvwrite('cwt_sag17.csv',SCimg(1:1501,[1:9]));


A=10.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:125];
f = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);

A=2.0;
T=20;
w=2*pi*0.2;
t = [0:0.1:25];
a = A*sin(w*t);
%xlim([0 50]);
%ylim([-50 50]);


sag18=[a f];
t1=[0:0.1:150.1];
disp(length(t1));
subplot(3,6,18);
plot(t1,sag18);
title("Voltage Sag 18")
xlim([0 150]);
ylim([-100 100]);

stft=spectrogram(sag18,'yaxis');
stft=stft(1:256,:);
csvwrite('spec_sag18.csv',stft);


COEFS = cwt(sag18,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",sag18);
SCimg=transpose(SCimg);

csvwrite('cwt_sag18.csv',SCimg(1:1501,[1:9]));  


% VOLTAGE SWELL





figure
A=30;
f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=10; t2=30;
swell1= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,1);
plot(t,swell1);
title('Voltage Swell 1');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell1,'yaxis');
csvwrite('spec_swell1.csv',stft);


COEFS = cwt(swell1,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell1);
SCimg=transpose(SCimg);

csvwrite('cwt_swell1.csv',SCimg(1:1501,[1:9]));



f=0.2;
t=[0:0.1:150];
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.3; t1=10; t2=30;
swell13= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,13);
plot(t,swell13);
title('Voltage Swell 13');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell13,'yaxis');
csvwrite('spec_swell13.csv',stft);


COEFS = cwt(swell13,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell13);
SCimg=transpose(SCimg);

csvwrite('cwt_swell13.csv',SCimg(1:1501,[1:9]));



f=0.2;
t=[0:0.1:150];
W=2*pi*f;
A=60;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=10; t2=30;
swell25= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,25);
plot(t,swell25);
title('Voltage Swell 25');
xlabel('time');
ylabel('Amplitude');
ylim([-150 150]);
xlim([0 150]);

stft=spectrogram(swell25,'yaxis');
csvwrite('spec_swell25.csv',stft);


COEFS = cwt(swell25,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell25);
SCimg=transpose(SCimg);

csvwrite('cwt_swell25.csv',SCimg(1:1501,[1:9]));



A=9;
t=[0:0.1:150];
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=0; t2=20;
swell2= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,2);
plot(t,swell2);
title('Voltage Swell 2');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell2,'yaxis');
csvwrite('spec_swell2.csv',stft);


COEFS = cwt(swell2,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell2);
SCimg=transpose(SCimg);

csvwrite('cwt_swell2.csv',SCimg(1:1501,[1:9]));


t=[0:0.1:150]
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.3; t1=0; t2=25;
swell14= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,14);
plot(t,swell14);
title('Voltage Swell 14 ');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell14,'yaxis');
csvwrite('spec_swell14.csv',stft);


COEFS = cwt(swell14,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell14);
SCimg=transpose(SCimg);

csvwrite('cwt_swell14.csv',SCimg(1:1501,[1:9]));



t=[0:0.1:150]
f=0.2;
A=160;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=0; t2=20;
swell26= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,26);
plot(t,swell26);
title('Voltage Swell 26');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell26,'yaxis');
csvwrite('spec_swell26.csv',stft);


COEFS = cwt(swell26,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell26);
SCimg=transpose(SCimg);

csvwrite('cwt_swell26.csv',SCimg(1:1501,[1:9]));


A=10;
t=[0:0.1:150]
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=130; t2=150;
swell3= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,3);
plot(t,swell3);
title('Voltage Swell 3');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell3,'yaxis');
csvwrite('spec_swell3.csv',stft);


COEFS = cwt(swell3,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell3);
SCimg=transpose(SCimg);

csvwrite('cwt_swell3.csv',SCimg(1:1501,[1:9]));


t=[0:0.1:150]
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.3; t1=130; t2=150;
swell15= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,15);
plot(t,swell15);
title('Voltage Swell 15');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell15,'yaxis');
csvwrite('spec_swell15.csv',stft);


COEFS = cwt(swell15,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell15);
SCimg=transpose(SCimg);

csvwrite('cwt_swell15.csv',SCimg(1:1501,[1:9]));



t=[0:0.1:150];
f=0.2;
A=60;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=120; t2=140;
swell27= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,27);
plot(t,swell27);
title('Voltage Swell 27');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell27,'yaxis');
csvwrite('spec_swell27.csv',stft);


COEFS = cwt(swell27,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell27);
SCimg=transpose(SCimg);

csvwrite('cwt_swell27.csv',SCimg(1:1501,[1:9]));



A=10;
t=[0:0.1:150]
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=40; t2=60;
swell4= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,4);
plot(t,swell4);
title('Voltage Swell 4');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell4,'yaxis');
csvwrite('spec_swell4.csv',stft);


COEFS = cwt(swell4,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell4);
SCimg=transpose(SCimg);

csvwrite('cwt_swell4.csv',SCimg(1:1501,[1:9]));


t=[0:0.1:150]
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.3; t1=40; t2=60;
swell16= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,16);
plot(t,swell16);
title('Voltage Swell 16');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell16,'yaxis');
csvwrite('spec_swell16.csv',stft);


COEFS = cwt(swell16,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell16);
SCimg=transpose(SCimg);

csvwrite('cwt_swell16.csv',SCimg(1:1501,[1:9]));



t=[0:0.1:150]
f=0.2;
A=60;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=40; t2=60;
swell28= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,28);
plot(t,swell28);
title('Voltage Swell 28');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell28,'yaxis');
csvwrite('spec_swell28.csv',stft);


COEFS = cwt(swell28,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell28);
SCimg=transpose(SCimg);

csvwrite('cwt_swell28.csv',SCimg(1:1501,[1:9]));


A=10;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=10; t2=30;
swell5= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,5);
plot(t,swell5);
title('Voltage Swell 5');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell5,'yaxis');
csvwrite('spec_swell5.csv',stft);


COEFS = cwt(swell5,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell5);
SCimg=transpose(SCimg);

csvwrite('cwt_swell5.csv',SCimg(1:1501,[1:9]));


f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.3; t1=10; t2=30;
swell17= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,17);
plot(t,swell17);
title('Voltage Swell 17');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell17,'yaxis');
csvwrite('spec_swell17.csv',stft);


COEFS = cwt(swell17,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell17);
SCimg=transpose(SCimg);

csvwrite('cwt_swell17.csv',SCimg(1:1501,[1:9]));


f=0.2;
A=600;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=10; t2=30;
swell29= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,29);
plot(t,swell29);
title('Voltage Swell 29');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell29,'yaxis');
csvwrite('spec_swell29.csv',stft);


COEFS = cwt(swell29,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell29);
SCimg=transpose(SCimg);

csvwrite('cwt_swell29.csv',SCimg(1:1501,[1:9]));



A=1000;
t=[0:0.1:150]
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=0; t2=20;
swell6= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,6);
plot(t,swell6);
title('Voltage Swell 6');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell6,'yaxis');
csvwrite('spec_swell6.csv',stft);


COEFS = cwt(swell6,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell6);
SCimg=transpose(SCimg);

csvwrite('cwt_swell6.csv',SCimg(1:1501,[1:9]));



t=[0:0.1:150]
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.3; t1=0; t2=20;
swell18= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,18);
plot(t,swell18);
title('Voltage Swell 18');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell18,'yaxis');
csvwrite('spec_swell18.csv',stft);


COEFS = cwt(swell18,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell18);
SCimg=transpose(SCimg);

csvwrite('cwt_swell18.csv',SCimg(1:1501,[1:9]));


t=[0:0.1:150]
f=0.2;
A=60;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.8; t1=0; t2=50;
swell30= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,30);
plot(t,swell30);
title('Voltage Swell 30');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell30,'yaxis');
csvwrite('spec_swell30.csv',stft);


COEFS = cwt(swell30,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell30);
SCimg=transpose(SCimg);

csvwrite('cwt_swell30.csv',SCimg(1:1501,[1:9]));


A=2000;
t=[0:0.1:150]
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=130; t2=150;
swell7= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,7);
plot(t,swell7);
title('Voltage Swell 7');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell7,'yaxis');
csvwrite('spec_swell7.csv',stft);


COEFS = cwt(swell7,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell7);
SCimg=transpose(SCimg);

csvwrite('cwt_swell7.csv',SCimg(1:1501,[1:9]));


t=[0:0.1:150]
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.3; t1=130; t2=150;
swell19= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,19);
plot(t,swell19);
title('Voltage Swell 19');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell19,'yaxis');
csvwrite('spec_swell19.csv',stft);


COEFS = cwt(swell19,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell19);
SCimg=transpose(SCimg);

csvwrite('cwt_swell19.csv',SCimg(1:1501,[1:9]));

t=[0:0.1:150]
f=0.2;
A=6000;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=130; t2=150;
swell31= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,31);
plot(t,swell31);
title('Voltage Swell 31');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell31,'yaxis');
csvwrite('spec_swell31.csv',stft);


COEFS = cwt(swell31,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell31);
SCimg=transpose(SCimg);

csvwrite('cwt_swell31.csv',SCimg(1:1501,[1:9]));



A=1600;
t=[0:0.1:150]
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.5; t1=40; t2=60;
swell8= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,8);
plot(t,swell8);
title('Voltage Swell 8');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);


stft=spectrogram(swell8,'yaxis');
csvwrite('spec_swell8.csv',stft);


COEFS = cwt(swell8,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell8);
SCimg=transpose(SCimg);

csvwrite('cwt_swell8.csv',SCimg(1:1501,[1:9]));


t=[0:0.1:150]
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.4; t1=40; t2=60;
swell20= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,20);
plot(t,swell20);
title('Voltage Swell 20');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell20,'yaxis');
csvwrite('spec_swell20.csv',stft);


COEFS = cwt(swell20,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell20);
SCimg=transpose(SCimg);

csvwrite('cwt_swell20.csv',SCimg(1:1501,[1:9]));



t=[0:0.1:150]
f=0.2;
A=3500;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.85; t1=40; t2=60;
swell32= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,32);
plot(t,swell32);
title('Voltage Swell 32');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell32,'yaxis');
csvwrite('spec_swell32.csv',stft);


COEFS = cwt(swell32,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell32);
SCimg=transpose(SCimg);

csvwrite('cwt_swell32.csv',SCimg(1:1501,[1:9]));



A=10;
f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=10; t2=65;
swell9= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,9);
plot(t,swell9);
title('Voltage Swell 9');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell9,'yaxis');
csvwrite('spec_swell9.csv',stft);


COEFS = cwt(swell9,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell9);
SCimg=transpose(SCimg);

csvwrite('cwt_swell9.csv',SCimg(1:1501,[1:9]));



W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.1; t1=10; t2=37;
swell21= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,21);
plot(t,swell21);
title('Voltage Swell 21');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell21,'yaxis');
csvwrite('spec_swell21.csv',stft);


COEFS = cwt(swell21,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell21);
SCimg=transpose(SCimg);

csvwrite('cwt_swell21.csv',SCimg(1:1501,[1:9]));



W=2*pi*f;
A=500;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.15; t1=30; t2=65;
swell33= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,33);
plot(t,swell33);
title('Voltage Swell 33');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell33,'yaxis');
csvwrite('spec_swell33.csv',stft);


COEFS = cwt(swell33,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell33);
SCimg=transpose(SCimg);

csvwrite('cwt_swell33.csv',SCimg(1:1501,[1:9]));



A=0.9;
t=[0:0.1:150]
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.15; t1=0; t2=20;
swell10= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,10);
plot(t,swell10);
title('Voltage Swell 10');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell10,'yaxis');
csvwrite('spec_swell10.csv',stft);


COEFS = cwt(swell10,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell10);
SCimg=transpose(SCimg);

csvwrite('cwt_swell10.csv',SCimg(1:1501,[1:9]));


t=[0:0.1:150]
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.3; t1=110; t2=140;
swell22= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,22);
plot(t,swell22);
title('Voltage Swell 22');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell22,'yaxis');
csvwrite('spec_swell22.csv',stft);


COEFS = cwt(swell22,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell22);
SCimg=transpose(SCimg);

csvwrite('cwt_swell22.csv',SCimg(1:1501,[1:9]));

f=0.2;
t=[0:0.1:150]
W=2*pi*f;
A=9000;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=0; t2=20;
swell34= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,34);
plot(t,swell34);
title('Voltage Swell 34');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell34,'yaxis');
csvwrite('spec_swell34.csv',stft);


COEFS = cwt(swell34,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell34);
SCimg=transpose(SCimg);

csvwrite('cwt_swell34.csv',SCimg(1:1501,[1:9]));



A=1000;
t=[0:0.1:150]
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=130; t2=150;
swell11= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,11);
plot(t,swell11);
title('Voltage Swell 11');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);


stft=spectrogram(swell11,'yaxis');
csvwrite('spec_swell11.csv',stft);


COEFS = cwt(swell11,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell11);
SCimg=transpose(SCimg);

csvwrite('cwt_swell11.csv',SCimg(1:1501,[1:9]));




t=[0:0.1:15]
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.35; t1=130; t2=150;
swell23= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,23);
plot(t,swell23);
title('Voltage Swell 23');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell23,'yaxis');
csvwrite('spec_swell23.csv',stft);


COEFS = cwt(swell23,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell23);
SCimg=transpose(SCimg);

csvwrite('cwt_swell23.csv',SCimg(1:151,[1:9]));


t=[0:0.1:150]
W=2*pi*f;
A=75;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.7; t1=130; t2=150;
swell35= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,35);
plot(t,swell35);
title('Voltage Swell 35');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell35,'yaxis');
csvwrite('spec_swell35.csv',stft);


COEFS = cwt(swell35,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell35);
SCimg=transpose(SCimg);

csvwrite('cwt_swell35.csv',SCimg(1:1501,[1:9]));


A=5500;
t=[0:0.1:150]
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=40; t2=60;
swell12= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,12);
plot(t,swell12);
title('Voltage Swell 12');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell12,'yaxis');
csvwrite('spec_swell12.csv',stft);


COEFS = cwt(swell12,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell12);
SCimg=transpose(SCimg);

csvwrite('cwt_swell12.csv',SCimg(1:1501,[1:9]));


t=[0:0.1:150]
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.3; t1=40; t2=80;
swell24= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,24);
plot(t,swell24);
title('Voltage Swell 24');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell24,'yaxis');
csvwrite('spec_swell24.csv',stft);


COEFS = cwt(swell24,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell24);
SCimg=transpose(SCimg);

csvwrite('cwt_swell24.csv',SCimg(1:1501,[1:9]));


t=[0:0.1:150]
A=6050;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.9; t1=40; t2=77;
swell36= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(3,12,36);
plot(t,swell36);
title('Voltage Swell 36');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 150]);

stft=spectrogram(swell36,'yaxis');
csvwrite('spec_swell36.csv',stft);


COEFS = cwt(swell36,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",swell36);
SCimg=transpose(SCimg);

csvwrite('cwt_swell36.csv',SCimg(1:1501,[1:9]));



% HARMONIC SIGNALS 




figure
f1=100;
n_t1=0:1/f1:150;
%t=[0:0.01:50];
f=0.2;
v1=10*sin(2*pi*f.*n_t1);
v3=3*sin(2*pi*3*f.*n_t1);
v5=2*sin(2*pi*5*f.*n_t1);
%v7=1*sin(2*pi*7*f.*n_t1);
 
harmonic1=v1+v3+v5;
subplot(2,9,1);
plot(n_t1,harmonic1);
title('Harmonics 1');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 5]);

stft=spectrogram(harmonic1,'yaxis');
csvwrite('spec_harmonic1.csv',stft);


COEFS = cwt(harmonic1,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic1);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic1.csv',SCimg(:,[1:9]));


f1=100;
n_t1=0:1/f1:150;
f=0.2;
v1=10*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);

harmonic2=v1+v3+v5+v7;
subplot(2,9,2);
plot(n_t1,harmonic2);
title('Harmonics 2');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 5]);

stft=spectrogram(harmonic2,'yaxis');
csvwrite('spec_harmonic2.csv',stft);


COEFS = cwt(harmonic2,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic2);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic2.csv',SCimg(1:1524,[1:9]));



f1=100;
n_t1=0:1/f1:150;
f=0.2;
v1=10*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);
v9=1*sin(2*pi*9*f*n_t1);

harmonic3=v1+v3+v5+v7+v9;
subplot(2,9,03);
plot(n_t1,harmonic3);
title('Harmonics 3');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 5]);

stft=spectrogram(harmonic3,'yaxis');
csvwrite('spec_harmonic3.csv',stft);


COEFS = cwt(harmonic3,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic3);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic3.csv',SCimg(1:1524,[1:9]));


f1=100;
n_t1=0:1/f1:150;
f=0.2;
v1=10*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);
v9=1*sin(2*pi*9*f*n_t1);
v11=1*sin(2*pi*11*f*n_t1);


harmonic4=v1+v3+v5+v7+v9+v11;
subplot(2,9,4);
plot(n_t1,harmonic4);
title('Harmonics 4');
xlabel('time');
ylabel('Amplitude');
ylim([-10 10]);
xlim([0 5]);

stft=spectrogram(harmonic4,'yaxis');
csvwrite('spec_harmonic4.csv',stft);


COEFS = cwt(harmonic4,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic4);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic4.csv',SCimg(1:1524,[1:9]));

f1=100;
n_t1=0:1/f1:150;
f=0.2;
v1=25*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);

harmonic5=v1+v3+v5;
subplot(2,9,5);
plot(n_t1,harmonic5);
title('Harmonics 5');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 5]);

stft=spectrogram(harmonic5,'yaxis');
csvwrite('spec_harmonic5.csv',stft);


COEFS = cwt(harmonic5,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic5);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic5.csv',SCimg(1:1524,[1:9]));



f1=100;
n_t1=0:1/f1:150;
f=0.2;
v1=15*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);

harmonic6=v1+v3+v5+v7;
subplot(2,9,6);
plot(n_t1,harmonic6);
title('Harmonics 6');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 5]);

stft=spectrogram(harmonic6,'yaxis');
csvwrite('spec_harmonic6.csv',stft);


COEFS = cwt(harmonic6,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic6);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic6.csv',SCimg(1:1524,[1:9]));


% 2nd iteration

f1=100;
n_t1=0:1/f1:150;
%t=[0:0.01:50];
v1=11*sin(2*pi*f.*n_t1);
v3=3*sin(2*pi*3*f.*n_t1);
v5=2*sin(2*pi*5*f.*n_t1);
%v7=1*sin(2*pi*7*f.*n_t1);

harmonic7=v1+v3+v5;
subplot(2,9,7);
plot(n_t1,harmonic7);
title('Harmonics 7');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 1]);

stft=spectrogram(harmonic7,'yaxis');
csvwrite('spec_harmonic7.csv',stft);


COEFS = cwt(harmonic7,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic7);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic7.csv',SCimg(1:1524,[1:9]));


f1=100;
n_t1=0:1/f1:150;
v1=11*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);

harmonic8=v1+v3+v5+v7;
subplot(2,9,8);
plot(n_t1,harmonic8);
title('Harmonics 8');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 1]);

stft=spectrogram(harmonic8,'yaxis');
csvwrite('spec_harmonic8.csv',stft);


COEFS = cwt(harmonic8,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic8);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic8.csv',SCimg(1:1524,[1:9]));



f1=100;
n_t1=0:1/f1:150;
v1=11*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);
v9=1*sin(2*pi*9*f*n_t1);

harmonic9=v1+v3+v5+v7+v9;
subplot(2,9,9);
plot(n_t1,harmonic9);
title('Harmonics 9');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 1]);

stft=spectrogram(harmonic9,'yaxis');
csvwrite('spec_harmonic9.csv',stft);


COEFS = cwt(harmonic9,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic9);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic9.csv',SCimg(1:1524,[1:9]));


f1=100;
n_t1=0:1/f1:150;
v1=11*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);
v9=1*sin(2*pi*9*f*n_t1);
v11=1*sin(2*pi*11*f*n_t1);

harmonic10=v1+v3+v5+v7+v11+v9;
subplot(2,9,10);
plot(n_t1,harmonic10);
title('Harmonics 10');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 1]);

stft=spectrogram(harmonic10,'yaxis');
csvwrite('spec_harmonic10.csv',stft);


COEFS = cwt(harmonic10,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic10);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic10.csv',SCimg(1:1524,[1:9]));


f1=100;
n_t1=0:1/f1:150;
v1=11*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
harmonic11=v1+v3+v5;
subplot(2,9,11);
plot(n_t1,harmonic11);
title('Harmonics 11');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 1]);

stft=spectrogram(harmonic11,'yaxis');
csvwrite('spec_harmonic11.csv',stft);


COEFS = cwt(harmonic11,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic11);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic11.csv',SCimg(1:1524,[1:9]));


f1=100;
n_t1=0:1/f1:150;
v1=11*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);

harmonic12=v1+v3+v5+v7;
subplot(2,9,12);
plot(n_t1,harmonic12);
title('Harmonics 12');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 1]);

stft=spectrogram(harmonic12,'yaxis');
csvwrite('spec_harmonic12.csv',stft);


COEFS = cwt(harmonic12,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic12);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic12.csv',SCimg(1:1524,[1:9]));


% 3rd iteration 


f1=100;
n_t1=0:1/f1:150;
%t=[0:0.01:50];
v1=18*sin(2*pi*f.*n_t1);
v3=3*sin(2*pi*3*f.*n_t1);
v5=2*sin(2*pi*5*f.*n_t1);

harmonic13=v1+v3+v5;
subplot(2,9,13);
plot(n_t1,harmonic13);
title('Harmonics 13');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 0.1]);

stft=spectrogram(harmonic13,'yaxis');
csvwrite('spec_harmonic13.csv',stft);


COEFS = cwt(harmonic13,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic13);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic13.csv',SCimg(1:1524,[1:9]));


f1=100;
n_t1=0:1/f1:150;
v1=18*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);

harmonic14=v1+v3+v5+v7;
subplot(2,9,14);
plot(n_t1,harmonic14);
title('Harmonics 14');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 0.1]);

stft=spectrogram(harmonic14,'yaxis');
csvwrite('spec_harmonic14.csv',stft);


COEFS = cwt(harmonic14,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic14);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic14.csv',SCimg(1:1524,[1:9]));


f1=100;
n_t1=0:1/f1:150;
v1=18*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);
v9=1*sin(2*pi*9*f*n_t1);

harmonic15=v1+v3+v5+v7+v9;
subplot(2,9,15);
plot(n_t1,harmonic15);
title('Harmonics 15');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 0.1]);

stft=spectrogram(harmonic15,'yaxis');
csvwrite('spec_harmonic15.csv',stft);


COEFS = cwt(harmonic15,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic15);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic15.csv',SCimg(1:1524,[1:9]));


f1=100;
n_t1=0:1/f1:150;
v1=18*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);
v9=1*sin(2*pi*9*f*n_t1);
v11=1*sin(2*pi*11*f*n_t1);

harmonic16=v1+v3+v5+v7+v9+v11;
subplot(2,9,16);
plot(n_t1,harmonic16);
title('Harmonics 16');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 0.1]);

stft=spectrogram(harmonic16,'yaxis');
csvwrite('spec_harmonic16.csv',stft);


COEFS = cwt(harmonic16,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic16);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic16.csv',SCimg(1:1524,[1:9]));

f1=100;
n_t1=0:1/f1:150;
v1=18*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);

harmonic17=v1+v3+v5;
subplot(2,9,17);
plot(n_t1,harmonic17);
title('Harmonics 17');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 0.1]);

stft=spectrogram(harmonic17,'yaxis');
csvwrite('spec_harmonic17.csv',stft);


COEFS = cwt(harmonic17,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic17);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic17.csv',SCimg(1:1524,[1:9]));

f1=100;
n_t1=0:1/f1:150;
v1=18*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);

harmonic18=v1+v3+v5+v7;
subplot(2,9,18);
plot(n_t1,harmonic18);
title('Harmonics 18');
xlabel('time');
ylabel('Amplitude');
ylim([-50 50]);
xlim([0 0.1]);

stft=spectrogram(harmonic18,'yaxis');
csvwrite('spec_harmonic18.csv',stft);


COEFS = cwt(harmonic18,scales,'sym4');
SCimg=wscalogram('image',COEFS,'scales',scales,"ydata",harmonic18);
SCimg=transpose(SCimg);

csvwrite('cwt_harmonic18.csv',SCimg(1:1524,[1:9]));

wd1= wavedec2(sin2,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin2,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin2,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin2,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin2,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin2,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin2,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin2.csv");



wd1= wavedec2(sin3,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin3,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin3,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin3,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin3,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin3,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin3,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin3.csv");


wd1= wavedec2(sin4,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin4,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin4,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin4,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin4,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin4,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin4,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin4.csv");

wd1= wavedec2(sin5,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin5,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin5,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin5,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin5,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin5,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin5,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin5.csv");

wd1= wavedec2(sin6,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin6,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin6,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin6,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin6,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin6,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin6,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin6.csv");


wd1= wavedec2(sin7,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin7,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin7,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin7,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin7,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin7,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin7,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin7.csv");

wd1= wavedec2(sin8,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin8,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin8,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin8,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin8,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin8,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin8,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin8.csv");

wd1= wavedec2(sin9,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin9,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin9,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin9,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin9,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin9,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin9,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin9.csv");

wd1= wavedec2(sin10,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin10,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin10,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin10,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin10,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin10,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin10,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin10.csv");

wd1= wavedec2(sin11,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin11,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin11,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin11,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin11,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin11,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin11,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin11.csv");

wd1= wavedec2(sin12,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sin12,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sin12,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sin12,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sin12,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sin12,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sin12,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sin12.csv");



wd1= wavedec2(sag1,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag1,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag1,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag1,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag1,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag1,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag1,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag1.csv");

wd1= wavedec2(sag2,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag2,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag2,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag2,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag2,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag2,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag2,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag2.csv");

wd1= wavedec2(sag3,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag3,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag3,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag3,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag3,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag3,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag3,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag3.csv");

wd1= wavedec2(sag4,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag4,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag4,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag4,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag4,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag4,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag4,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag4.csv");

wd1= wavedec2(sag5,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag5,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag5,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag5,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag5,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag5,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag5,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag5.csv");

wd1= wavedec2(sag6,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag6,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag6,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag6,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag6,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag6,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag6,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag6.csv");

wd1= wavedec2(sag7,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag7,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag7,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag7,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag7,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag7,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag7,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag7.csv");

wd1= wavedec2(sag8,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag8,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag8,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag8,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag8,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag8,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag8,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag8.csv");

wd1= wavedec2(sag9,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag9,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag9,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag9,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag9,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag9,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag9,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag9.csv");

wd1= wavedec2(sag10,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag10,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag10,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag10,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag10,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag10,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag10,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag10.csv");

wd1= wavedec2(sag11,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag11,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag11,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag11,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag11,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag11,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag11,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag11.csv");

wd1= wavedec2(sag12,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag12,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag12,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag12,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag12,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag12,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag12,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag12.csv");

wd1= wavedec2(sag13,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag13,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag13,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag13,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag13,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag13,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag13,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag13.csv");

wd1= wavedec2(sag14,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag14,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag14,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag14,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag14,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag14,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag14,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag14.csv");

wd1= wavedec2(sag15,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag15,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag15,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag15,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag15,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag15,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag15,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag15.csv");

wd1= wavedec2(sag16,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag16,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag16,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag16,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag16,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag16,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag16,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag16.csv");

wd1= wavedec2(sag17,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag17,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag17,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag17,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag17,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag17,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag17,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag17.csv");

wd1= wavedec2(sag18,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(sag18,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(sag18,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(sag18,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(sag18,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(sag18,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(sag18,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_sag18.csv");

wd1= wavedec2(swell1,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell1,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell1,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell1,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell1,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell1,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell1,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell1.csv");

wd1= wavedec2(swell2,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell2,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell2,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell2,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell2,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell2,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell2,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell2.csv");

wd1= wavedec2(swell3,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell3,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell3,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell3,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell3,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell3,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell3,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell3.csv");

wd1= wavedec2(swell4,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell4,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell4,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell4,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell4,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell4,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell4,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell4.csv");

wd1= wavedec2(swell5,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell5,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell5,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell5,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell5,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell5,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell5,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell5.csv");

wd1= wavedec2(swell6,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell6,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell6,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell6,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell6,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell6,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell6,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell6.csv");

wd1= wavedec2(swell7,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell7,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell7,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell7,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell7,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell7,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell7,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell7.csv");

wd1= wavedec2(swell8,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell8,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell8,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell8,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell8,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell8,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell8,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell8.csv");

wd1= wavedec2(swell9,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell9,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell9,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell9,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell9,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell9,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell9,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell9.csv");

wd1= wavedec2(swell10,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell10,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell10,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell10,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell10,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell10,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell10,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell10.csv");

wd1= wavedec2(swell11,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell11,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell11,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell11,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell11,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell11,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell11,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell11.csv");

wd1= wavedec2(swell12,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell12,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell12,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell12,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell12,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell12,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell12,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell12.csv");

wd1= wavedec2(swell13,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell13,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell13,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell13,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell13,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell13,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell13,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell13.csv");

wd1= wavedec2(swell14,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell14,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell14,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell14,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell14,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell14,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell14,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell14.csv");

wd1= wavedec2(swell15,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell15,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell15,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell15,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell15,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell15,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell15,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell15.csv");

wd1= wavedec2(swell16,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell16,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell16,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell16,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell16,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell16,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell16,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell16.csv");

wd1= wavedec2(swell17,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell17,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell17,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell17,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell17,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell17,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell17,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell17.csv");

wd1= wavedec2(swell18,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell18,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell18,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell18,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell18,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell18,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell18,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell18.csv");

wd1= wavedec2(swell19,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell19,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell19,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell19,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell19,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell19,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell19,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell19.csv");

wd1= wavedec2(swell20,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell20,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell20,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell20,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell20,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell20,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell20,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell20.csv");

wd1= wavedec2(swell21,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell21,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell21,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell21,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell21,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell21,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell21,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell21.csv");

wd1= wavedec2(swell22,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell22,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell22,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell22,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell22,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell22,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell22,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell22.csv");

wd1= wavedec2(swell23,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell23,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell23,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell23,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell23,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell23,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell23,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell23.csv");

wd1= wavedec2(swell24,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell24,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell24,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell24,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell24,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell24,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell24,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell24.csv");

wd1= wavedec2(swell25,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell25,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell25,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell25,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell25,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell25,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell25,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell25.csv");

wd1= wavedec2(swell26,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell26,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell26,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell26,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell26,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell26,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell26,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell26.csv");

wd1= wavedec2(swell27,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell27,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell27,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell27,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell27,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell27,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell27,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell27.csv");

wd1= wavedec2(swell28,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell28,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell28,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell28,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell28,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell28,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell28,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell28.csv");

wd1= wavedec2(swell29,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell29,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell29,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell29,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell29,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell29,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell29,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell29.csv");

wd1= wavedec2(swell30,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell30,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell30,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell30,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell30,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell30,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell30,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell30.csv");

wd1= wavedec2(swell31,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell31,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell31,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell31,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell31,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell31,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell31,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell31.csv");

wd1= wavedec2(swell32,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell32,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell32,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell32,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell32,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell32,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell32,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell32.csv");

wd1= wavedec2(swell33,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell33,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell33,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell33,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell33,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell33,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell33,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell33.csv");

wd1= wavedec2(swell34,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell34,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell34,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell34,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell34,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell34,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell34,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell34.csv");

wd1= wavedec2(swell35,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell35,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell35,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell35,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell35,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell35,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell35,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell35.csv");

wd1= wavedec2(swell36,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(swell36,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(swell36,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(swell36,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(swell36,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(swell36,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(swell36,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_swell36.csv");


wd1= wavedec2(harmonic1,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic1,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic1,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic1,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic1,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic1,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic1,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic1.csv");

wd1= wavedec2(harmonic2,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic2,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic2,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic2,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic2,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic2,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic2,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic2.csv");

wd1= wavedec2(harmonic3,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic3,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic3,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic3,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic3,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic3,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic3,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic3.csv");


wd1= wavedec2(harmonic4,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic4,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic4,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic4,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic4,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic4,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic4,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic4.csv");

wd1= wavedec2(harmonic5,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic5,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic5,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic5,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic5,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic5,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic5,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic5.csv");

wd1= wavedec2(harmonic6,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic6,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic6,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic6,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic6,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic6,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic6,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic6.csv");

wd1= wavedec2(harmonic7,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic7,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic7,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic7,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic7,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic7,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic7,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic7.csv");

wd1= wavedec2(harmonic8,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic8,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic8,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic8,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic8,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic8,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic8,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic8.csv");

wd1= wavedec2(harmonic9,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic9,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic9,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic9,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic9,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic9,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic9,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic9.csv");

wd1= wavedec2(harmonic10,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic10,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic10,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic10,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic10,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic10,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic10,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic10.csv");


wd1= wavedec2(harmonic11,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic11,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic11,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic11,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic11,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic11,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic11,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic11.csv");

wd1= wavedec2(harmonic12,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic12,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic12,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic12,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic12,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic12,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic12,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic12.csv");

wd1= wavedec2(harmonic13,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic13,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic13,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic13,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic13,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic13,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic13,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic13.csv");

wd1= wavedec2(harmonic14,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic14,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic14,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic14,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic14,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic14,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic14,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic14.csv");

wd1= wavedec2(harmonic15,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic15,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic15,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic15,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic15,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic15,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic15,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic15.csv");

wd1= wavedec2(harmonic16,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic16,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic16,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic16,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic16,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic16,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic16,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic16.csv");

wd1= wavedec2(harmonic17,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic17,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic17,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic17,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic17,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic17,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic17,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic17.csv");

wd1= wavedec2(harmonic18,1,"db4");
wd1=wd1(:,1:300);
wd1=transpose(wd1)
wd2= wavedec2(harmonic18,2,"db4");
wd2=wd2(:,1:300);
wd2=transpose(wd2)
wd3= wavedec2(harmonic18,3,"db4");
wd3=wd3(:,1:300);
wd3=transpose(wd3)
wd4= wavedec2(harmonic18,4,"db4");
wd4=wd4(:,1:300);
wd4=transpose(wd4)
wd5= wavedec2(harmonic18,5,"db4");
wd5=wd5(:,1:300);
wd5=transpose(wd5)
wd6= wavedec2(harmonic18,6,"db4");
wd6=wd6(:,1:300);
wd6=transpose(wd6)
wd7= wavedec2(harmonic18,7,"db4");
wd7=wd7(:,1:300);
wd7=transpose(wd7)
wd=[wd1,wd2,wd3,wd4,wd5,wd6,wd7];
writematrix(wd,"wd_harmonic18.csv");



M = cwt(sin1);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sin1.csv")

M = cwt(sin2);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sin2.csv")

M = cwt(sin3);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sin3.csv")

M = cwt(sin4);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sin4.csv")

M = cwt(sin5);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sin5.csv")

M = cwt(sin6);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sin6.csv")

M = cwt(sin7);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sin7.csv")

M = cwt(sin8);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sin8.csv")

M = cwt(sin9);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sin9.csv")

M = cwt(sin10);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sin10.csv")

M = cwt(sin11);
M = abs(M);
M = rescale(M, 0, 1);
M=M(1:32,1:32);
writematrix(M,"cwt2_sin11.csv")

M = cwt(sin12);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sin12.csv")







M = cwt(sag1);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag1.csv")

M = cwt(sag2);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag2.csv")

M = cwt(sag3);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag3.csv")

M = cwt(sag4);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag4.csv")

M = cwt(sag5);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag5.csv")

M = cwt(sag6);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag6.csv")

M = cwt(sag7);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag7.csv")

M = cwt(sag8);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag8.csv")

M = cwt(sag9);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag9.csv")

M = cwt(sag10);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag10.csv")

M = cwt(sag11);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag11.csv")

M = cwt(sag12);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag12.csv")

M = cwt(sag13);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag13.csv")

M = cwt(sag14);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag14.csv")

M = cwt(sag15);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag15.csv")

M = cwt(sag16);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag16.csv")

M = cwt(sag17);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag17.csv")

M = cwt(sag18);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_sag18.csv")






M = cwt(swell1);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell1.csv")


M = cwt(swell2);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell2.csv")

M = cwt(swell3);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell3.csv")


M = cwt(swell4);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell4.csv")

M = cwt(swell5);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell5.csv")

M = cwt(swell6);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell6.csv")

M = cwt(swell7);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell7.csv")

M = cwt(swell8);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell8.csv")

M = cwt(swell9);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell9.csv")

M = cwt(swell10);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell10.csv")

M = cwt(swell11);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell11.csv")

M = cwt(swell12);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell12.csv")

M = cwt(swell13);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell13.csv")

M = cwt(swell14);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell14.csv")

M = cwt(swell15);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell15.csv")

M = cwt(swell16);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell16.csv")

M = cwt(swell17);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell17.csv")

M = cwt(swell18);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell18.csv")

M = cwt(swell19);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell19.csv")

M = cwt(swell20);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell20.csv")

M = cwt(swell21);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell21.csv")

M = cwt(swell22);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell22.csv")

M = cwt(swell23);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell23.csv")

M = cwt(swell24);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell24.csv")

M = cwt(swell25);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell25.csv")

M = cwt(swell26);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell26.csv")

M = cwt(swell27);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell27.csv")

M = cwt(swell28);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell28.csv")

M = cwt(swell29);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell29.csv")

M = cwt(swell30);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell30.csv")

M = cwt(swell31);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell31.csv")

M = cwt(swell32);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell32.csv")

M = cwt(swell33);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell33.csv")

M = cwt(swell34);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell34.csv")

M = cwt(swell35);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell35.csv")

M = cwt(swell36);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_swell36.csv")


M = cwt(harmonic1);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic1.csv")

M = cwt(harmonic2);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic2.csv")

M = cwt(harmonic3);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic3.csv")

M = cwt(harmonic4);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic4.csv")

M = cwt(harmonic5);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic5.csv")

M = cwt(harmonic6);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic6.csv")

M = cwt(harmonic7);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic7.csv")

M = cwt(harmonic8);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic8.csv")

M = cwt(harmonic9);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic9.csv")

M = cwt(harmonic10);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic10.csv")

M = cwt(harmonic11);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic11.csv")

M = cwt(harmonic12);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic12.csv")

M = cwt(harmonic13);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic13.csv")

M = cwt(harmonic14);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic14.csv")

M = cwt(harmonic15);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic15.csv")

M = cwt(harmonic16);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic16.csv")

M = cwt(harmonic17);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic17.csv")

M = cwt(harmonic18);
M = abs(M);
M = rescale(M, 0, 1);
M=M(:,1:7);
writematrix(M,"cwt2_harmonic18.csv")




