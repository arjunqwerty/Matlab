clc
clear
syms x y
f = input("Enter the fucntion f(x, y):");
f1 = diff(f, x);
f2 = diff(f, y);
p = inline(vectorize(f1), "x", "y");
q = inline(vectorize(f2), "x", "y");
x = linspace(-2, 2, 10);
y = x;
[x1, y1] = meshgrid(x, y);
u = p(x1, y1);
v = q(x1, y1);
quiver(x1, y1, u, v, 1);
axis on
xlabel("x")
ylabel("y")
hold on
ezcontour(f, [-2, 2])
