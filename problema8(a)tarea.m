
xl = 9;
xu = 11;
i = 1;
e(i) = 10;

while(e(i)>0.01)

    xr = (xl + xu)/2;

    g_xl = (xl^xl)-exp(10);
    g_xr = (xr^xr)-exp(10);
    g_xu = (xu^xu)-exp(10);

    if(g_xl*g_xr<0)
        xu = xr;
        e(i + 1) = abs(xr - xl);
    end

    if(g_xu*g_xr<0)
        xl = xr;
        e(i + 1) = abs(xr - xu);
    end
    i = i + 1;
    if(g_xu*g_xr==0);
        xr = xr;
    end
end

tamanio = size(e);
ite = 1:1:tamanio(2);

figure('DefaultAxesFontSize',14)
set(gcf,'color','white')
plot(ite,e,'color',[1,0,0],'linewidth',2)
grid on
xlabel('iterations')
ylabel('error')
legend('error')