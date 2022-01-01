clc
clear
x = -2:0.1:2;

y1 = x;
y2 = x.^2;
y3 = x.^3;
subplot(3,1,1)
plot(x,y1)
subplot(3,1,2)
plot(x,y2)
subplot(3,1,3)
plot(x,y3)