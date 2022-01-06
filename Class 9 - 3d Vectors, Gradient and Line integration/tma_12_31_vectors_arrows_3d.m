clc
clear
syms x y z
f = input("enter the vector as i, j and k order in vector form: ");
p = inline(vectorize(f(1)), "x", "y", "z");
q = inline(vectorize(f(2)), "x", "y", "z");
r = inline(vectorize(f(3)), "x", "y", "z");
x = linspace(0, 1, 5);
y = x;
z = x;
[x1, y1, z1] = meshgrid(x, y, z);
u = p(x1, y1, z1);
v = q(x1, y1, z1);
w = r(x1, y1, z1);
quiver3(x1, y1, z1, u, v, w, 1)
axis on
xlabel("x")
ylabel("y")
zlabel("z")
