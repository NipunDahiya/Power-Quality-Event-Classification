A=1.0;
T=20;
w=2*pi*0.50;
t = [0:0.1:50*pi];
a = A*sin(w*t);
subplot(2,4,1) ;
plot(t,a);
title('Sine Wave');
xlabel('time');
ylabel('Amplitude');
xlim([0 10]);
ylim([-2 2]);


f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=12; t2=24;
b= (1-a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,4,2);
plot(t,b);
title('Voltage Sag');
xlabel('time');
ylabel('Amplitude');

ylim([-1.5 1.5]);


f1=1000;
n_t1=0:1/f1:50;
f=50;
v1=10*sin(2*pi*f*n_t1);
v3=3*sin(2*pi*3*f*n_t1);
v5=2*sin(2*pi*5*f*n_t1);
v7=1*sin(2*pi*7*f*n_t1);

c=v1+v3+v5+v7;
subplot(2,4,3);
plot(n_t1,c);
title('Harmonics');
xlabel('time');
ylabel('Amplitude');



f=0.2;
W=2*pi*f;
x=A*sin(W.*t);
u=inline('t>=0');
a1=0.6; t1=12; t2=24;
d= (1+a1*(u(t-t1)-u(t-t2))).*x;
subplot(2,4,4);
plot(t,d);
title('Voltage Swell');
xlabel('time');
ylabel('Amplitude');
ylim([-2 2]);

%scales = (1:256);

SCimg=cwt(d)
csvwrite('cwt_scalogram4.csv',SCimg);


%SCimg1=cwt(b)
%csvwrite('scalogram2.csv',SCimg1);

%SCimg2=cwt(a)
%csvwrite('scalogram1.csv',SCimg2);


%scales = (1:256);
%SCimg3=cwt(c)
%csvwrite('scalogram3.csv',SCimg3);


