clc
clear
x = -1:0.5:1;
y = x;
[x, y] = meshgrid(x, y); % Creates matrix of z with all values in the x by y area
z = 4 - x.^2 - y.^2;
% z = 0 * x.^0 * y.^0;
subplot(2, 1, 1);
surf(x, y, z)
subplot(2, 1, 2)
mesh(x, y, z)