
clear , clc
y=('x-2^-x')
f=inline(y);
a=-5
b=5
error=0.000010

c=0 ; n=0 ; xr = (b-a)/2;
fprintf('\t n \t\ta \t\t c \t\t b \t\t xr\n')

while ( xr > error)
    c = (a+b)/2;
    disp([n,a,c,b,xr])
    if (f(a)*f(c)<0)
        b=c;
    else a=c;
    end
    xr = (b-a)/2;
    n=n+1;
end
fprintf('la raiz es: %f\n',c)
