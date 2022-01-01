clear
syms x
f=input("Enter the function x");
a=input("Enter the lower limit of x");
b=input("Enter the upper limit of x");
n=input("Enter the partitions");
value = 0;
h= (b-a)/n
for k=1:n
    c = a+k*h;
    d = subs(f,x,c);
    value = value + d;
end
value = h*value;
ezplot(f,[a,b]);
rsums(f,a,b);

