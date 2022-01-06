clc
clear
clear figure
syms t x y z
f = input("Enter the f vector as i and j order in vector form");
rbar = input("Enter the r vector as i and j order in vector form");
lim = input("Enter the limit of integration: ");
vecfi = input("Enter the vector field range:");
drbar = diff(rbar, t);
sub = subs(f, [x, y, z], rbar);
f1 = dot(sub, drbar)
int(f1, t, lim(1), lim(2))
p = inline(vectorize(f(1)), "x", "y", "z");
q = inline(vectorize(f(2)), "x", "y", "z");
r = inline(vectorize(f(3)), "x", "y", "z");
x = linspace(vecfi(1), vecfi(2), 10);
y = x;
z = x;
[x1, y1, z1] = meshgrid(x, y, z);
u = p(x1, y1, z1);
v = q(x1, y1, z1);
w = r(x1, y1, z1);
quiver3(x1, y1, z1, u, v, w)
hold on
fplot3(rbar(1), rbar(2), rbar(3), [lim(1), lim(2)])
axis on
xlabel("x")
ylabel("y")
zlabel("z")