clc;
syms x y lam real;
F=f-lam*g;
f = input("Enter your function to be extremized");
g = input("Enter Constraint Funciton");
Fd = jacobian(F,[x,y, lam]);
[ax,ay,alam] = solve(Fd, x,y,lam);
ax = double(ax);
ay = double(ay);
T = subs(f,{x,y},{ax,ay}); T = double(T);
epxl = min(ax);
epxr = max(ax);
epyl = min(ay);
epu = max(ay);
D = [epxl-0.5, epxr+0.5, epyl-0.5, epu+0.5];
ezcontourf(f,D)
% fcontour(f,D)
hold on;
h = ezplot(g,D);
set(h,'Color',[1,0.7, 0.9])
for i=1:length(T)
    fprintf("The critical point of f(x,y) is  {%1.3f, %1.3f} \n",ax(i),ay(i));
    fprintf("The value of the function of is %1.3f \n",T(i));
    plot(ax(i),ay(i),'b*','markersize','15');
end
TT=sort(T);
f_min=TT(1);
f_max=TT(end);
