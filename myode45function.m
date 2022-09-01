function myoutput = myode45function(t,y)
Ab = pi*0.006^2;
mp = 127e-3;
Pres= 4.137e+6;
Vres = 0.002;
gammab = 1.4;
gamma_a=1.667;
a = 340;
a_h=970;
patm = 101325;
myoutput = [y(2);Ab/mp *(((Pres*Vres)/(Vres+Ab*y(1))*(1-(gammab-1)/(2*a_h)*(y(2)))^(2*gammab/(gammab-1)) - (patm*(1+(y(2)/a)^2*(gamma_a*(gamma_a+1)/4)+(gamma_a*y(2)/a)*(1+((gamma_a)/4)^2*(y(2)/a)^2)^0.5))))];
end