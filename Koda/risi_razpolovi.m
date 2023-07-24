function risi_razpolovi(x0,y0,L,M,u0,n)
% funkcija risi_razpolovi izrise n - iteracij razpolavljanja členkov
% Vhodni parametri:
% y0 - visina verižnice
% x0 - zacetna(x0) in končna(xn) abcisa, kjer sta (x_0,y0) in (x_n+1,y0) obesisci. 
% L - je vrstica, ki doloca dolzine prvih k = (n+1)/2 clenkov.
% M - je vrstica, ki doloca mase prvih k = (n+1)/2 clenkov.
% u0 - zaceten priblizek pri resevanju nelinearne enacbe za U.
% n - stevilo razpolovitev členkov

L_pol =@(n) 1/(2.^n)*repelem(L,2*n); 
M_pol =@(n) 1/(2.^n)*repelem(M,2*n); 

for i=1:n
  [X,Y] = sim_ver(x0,y0,L_pol(n),M_pol(n),u0);
  clf
  plot(X,Y,'MarkerSize', 5)
  pause(0.5)
  drawnow
  
end
