
clear , clc
syms x
cf=('3*x^2-exp(x)^x')
f=inline(cf);
derivada=diff(cf,x);
df=inline(derivada);
tol = 0.000010
error = 50;
x=2;
n =0;
disp('    n             xi       error')
while (error>tol)
fprintf('\t%i\t%3.5f\t%f\n', n, x, error);
n=n+1;
x=x-f(x)/df(x);
error= abs(f(x));
end