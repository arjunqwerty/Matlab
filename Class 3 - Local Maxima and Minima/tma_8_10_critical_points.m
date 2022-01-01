clc
clear
clear figure
syms x real
f = input("Enter the function f(x): ");
fx = diff(f, x);
c = solve(fx);
cmin = min(double(c));
cmax = max(double(c));
figure(1);
ezplot(f, [cmin-2, cmax+2])
hold on
fxx = diff(fx, x);
for i = 1:length(c)
    t1 = subs(fxx, x, c(i));
    t3 = subs(f, x, c(i));
    if (double(t1) == 0)
        fprintf("The test fails at x=%d\n", double(c(i)))
    elseif (double(t1) < 0)
        fprintf("\nThe local maximum at x=%d\n", double(c(i)))
        fprintf("The local maximum value of the function at x=%d\n", double(t3))
    else
        fprintf("\nThe local minimum at x=%d\n", double(c(i)))
        fprintf("The local minumum value of the function at x=%d\n", double(t3))
    end
    plot(double(c(i)), double(t3), "r*");
end