clc
clear
syms x y z;
%val = int(int(int(sin(x*y*z),z,x^2-y^2,x^2+y^2),y,x,x^2),x,1,2);
val = int( ...
         int( ...
                int(1,z,(x^2+3*y^2),(8-x^2-y^2) )...
                ,y,-sqrt(0.5*(4-x^2)),sqrt(0.5*(4-x^2)) ...
                ),x,-2,2 ...
    );

disp(val)
