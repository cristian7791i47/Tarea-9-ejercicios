xl=0;
xu=2.5;
i=1;
e(i)=10;


while (e(i)> 0.001)
    
    xr=(xl+xu)/2;
   
    gxl= xl^3+(xl^2)*4-10;
    gxu= xu^3+(xu^2)*4-10;
    gxr= xr^3+(xr^2)*4-10;
    
    
    if (gxl*gxr < 0)
    xu=xr;
    e(i+1)=abs(xr-xl);
end

if (gxu*gxr < 0)
    xl=xr;
    e(i+1)=abs(xu-xr);
end
i=i+1;

if (gxu*gxr == 0)
    xr=xr;
end
end
     

disp(xr)

tamanio=size(e);
ite= 1:1:tamanio(2);

figure('DefaultAxesFontSize',14)
set(gcf,'color','white');
plot(ite,e,'color',[1 0 0])
grid on
