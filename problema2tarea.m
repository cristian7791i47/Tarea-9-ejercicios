init_value=5;
i=1;
e(i)=10;

while(e(i)>0.001)
    
    if(i==1)
        x(i)=init_value;
    end
    
    g(i)=((5)/(x(i)^2-10));
i=i+1;
x(i)=g(i-1)
e(i)=abs(x(i-1)-x(i))
if(e(i)>50)
    break;
end
end

tamanio=size(e);
ite=1:1:tamanio(2);

plot(ite,e,'color',[1 0 0]);
grid on
hold on

plot(ite,x,'color',[0 1 1]);
