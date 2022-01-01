clc
clear
clear figure
syms x
f = input("Enter function: ");
a = input("Enter lower limit: ");
b = input("Enter upper limit: ");
n = input("Enter number of partitions");
value = 0;
h = (b - a) / n;
for k = 1:n
    c = a + (k * h);
    d = subs(f, x ,c);
    value = value + d;
end
value = h * value;
ezplot(f, [a, b])
z = int(f, a, b);
rsums(f, a, b)
