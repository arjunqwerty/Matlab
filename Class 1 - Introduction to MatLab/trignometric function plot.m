clc
%var = linspace(0,100,10);
%line = 0:100:10;
%plot(var, line)
syms x
fx = sin(2*x)+cos(3*x);
ezplot(fx, [-2,6])