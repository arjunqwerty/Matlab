clc
clear
clear figure
syms t x y
f = input("Enter the f vector as i and j order in vector form");
rbar = input("Enter the r vector as i and j order in vector form");
lim = input("Enter the limit of integration: ");
vecfi = input("Enter the vector field range:");
drbar = diff(rbar, t);
sub = subs(f, [x, y], rbar);
f1 = dot(sub, drbar)
int(f1, t, lim(1), lim(2))
p = inline(vectorize(f(1)), "x", "y");
q = inline(vectorize(f(2)), "x", "y");
x = linspace(vecfi(1), vecfi(2), 10);
y = x;
[x1, y1] = meshgrid(x, y);
u = p(x1, y1);
v = q(x1, y1);
quiver(x1, y1, u, v)
hold on
fplot(rbar(1), rbar(2), [lim(1), lim(2)])
axis on
xlabel("x")
ylabel("y")
