function risi_veriznica(x0,y0,L,M,u0)
% RISI_VERIZNICA narise sliko veriznice
%
% Vhodni parametri:
% y0 - visina verižnice
% x0 - zacetna(x0) in končna(xn) abcisa, kjer sta (x_0,y0) in (x_n+1,y0) obesisci. 
% L - je vrstica, ki doloca dolzine prvih k = (n+1)/2 clenkov.
% M - je vrstica, ki doloca mase prvih k = (n+1)/2 clenkov.
% u0 - zaceten priblizek pri resevanju nelinearne enacbe za U.


[X,Y] = sim_ver(x0,y0,L,M,u0);

hold on
plot(X,Y);
plot(X,Y,'MarkerSize', 5);
hold off


end