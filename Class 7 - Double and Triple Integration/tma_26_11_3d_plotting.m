clc
clear
syms x y z
vol = int(int(sqrt(25-x^2-y^2), y, -sqrt(16-x^2), sqrt(16-x^2)), x, 0.4)
viewSolidOne(z, 0+0*x*y, sqrt(25-x^2-y^2), y, -sqrt(16-x^2), sqrt(16-x^2), x, 0, 4);
axis equal;
grid on;
% 2*y^2*sin(x*y), y, x, 2, x, 0.2
% sqrt(25-x^2-y^2), y, -sqrt(16-x^2), sqrt(16-x^2), x, 0, 0.4