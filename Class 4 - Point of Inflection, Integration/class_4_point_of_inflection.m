clc
clear figure
syms x real
f = input('Enter the function of x:');
fx = diff(f,x);
c=solve(fx);
cmin=min(double(c));
cmax=max(double(c));
figure(1)
%ezplot(f, [cmin-5, cmax+5])
hold on
fxx = diff(fx,x);
for i=1:length(c)
    T1=subs(fxx,x,c(i));
    T3=subs(f,x, c(i));

if(double(T1)==0)
    sprintf('Test fails at x = %d', double(c(i)))
elseif(double(T1)<0)
    sprintf('The local maximum point is at %d', double(c(i)))
sprintf('The local maximum value of the function is %d', double(T3))
%end
end
plot(double(c(i)), double(T3), 'r*')
end
de = polynomialDegree(fxx);
if (de == 0)
    sprintf('The given polynomial has a degree less than 2')
else
    d = solve(fxx);
eps = 0.00001;
for i=1:length(d)
    T2 = subs(f, x , d(i));
    R = sign(subs(fxx, x, d(i)+eps));
    L = sign(subs(fxx,x, d(i)-eps));
if abs(L-R)==2
    sprintf("The given point x=%d is a point of inflection", double(d(i)));
else
    sprintf("The given point x=%d is not a point of inflection", double(d(i)));

end
plot(double(d(i)),double(T2), "m*", 'markersize', 15)