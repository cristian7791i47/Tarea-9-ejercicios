xl=-4;
xu=-2;
i=1;
e(i)=10;
while (e(i)> 0.01)
    
    xr=(xl+xu)/2;
 
    gxl= xl^3-10*xl-5;
    gxu= xu^3-10*xu-5;
    gxr= xr^3-10*xr-5;
    
    
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
     

xll=-4;
xuu=-2;
ii=1;
e(ii)=10;
while (e(ii)> 0.01)
    
    xrr=(xll+xuu)/2;
 
    gxll= xll^3-10*xll-5;
    gxuu= xuu^3-10*xuu-5;
    gxrr= xrr^3-10*xrr-5;
    
    
    if (gxll*gxrr < 0)
    xuu=xrr;
    e(ii+1)=abs(xrr-xll);
end

if (gxuu*gxrr < 0)
    xll=xrr;
    e(ii+1)=abs(xuu-xrr);
end
ii=ii+1;

if (gxuu*gxrr == 0)
    xrr=xrr;
end
end


disp(xr)
disp(xrr)
tamanio=size(e);
ite= 1:1:tamanio(2);

figure('DefaultAxesFontSize',14)
set(gcf,'color','white');
plot(ite,e,'color',[1 0 0])
grid on