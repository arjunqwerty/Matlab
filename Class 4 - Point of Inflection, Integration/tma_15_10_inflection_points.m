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
figure(1);
hold on
fxx = diff(fx, x);
de = polynomialDegree(fxx);
if (de == 0)
    fprintf("\nThe given polynomial is second degree or less\n")
else
    d = solve(fxx);
    for j = 1 : length(d)
        T2 = subs(f, x, d(j));
        R1 = sign(subs(fxx, x, d(j) + 0.0001));
        L1 = sign(subs(fxx, x, d(j) - 0.0001));
        check = abs(R1 - L1);
        if (check == 2)
            fprintf("The point x = %d is a point of inflection\n", double(d(j)))
        else
            fprintf("The point x = %d is not a point of inflection\n", double(d(j)))
        end
    plot(double(d(j)), double(T2), "m*", "markersize", 15)
    end
end
