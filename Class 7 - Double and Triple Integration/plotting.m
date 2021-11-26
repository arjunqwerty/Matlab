clc
clear
syms x y z;
vol = int(int(sqrt(25-x^2-y^2),x,-y,y),y,0,4);
vol1 = int(int(sqrt(25-x^2-y^2),x,-sqrt(16-y^2),sqrt(16-y^2)),y,0,4);
viewSolidOne(z,0,sqrt(25-x^2-y^2),x,-sqrt(16-y^2),sqrt(16-y^2),y,0,4);
%vol =  int(int(2*y^2*sin(x*y),y,x,2),x,0,2);
%viewSolid(z,0,2*y^2*sin(x*y),y,x,2, x,0,2);
viewSolidOne(z,0,sqrt(25-x^2-y^2),y,-sqrt(16-x^2), sqrt(16-x^2), x,0,4)
axis equal;
grid on;

