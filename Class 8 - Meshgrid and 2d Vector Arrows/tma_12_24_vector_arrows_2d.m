clc
clear
syms x y
f = input("enter the vector as i and j order in vector form: ");
p = inline(vectorize(f(1)), "x", "y");
q = inline(vectorize(f(2)), "x", "y");
x = linspace(-1, 1, 10);
y = x;
[x1, y1] = meshgrid(x, y);
u = p(x1, y1);
v = q(x1, y1);
quiver(x1, y1, u, v, 1)
axis on
xlabel("x")
ylabel("y")
