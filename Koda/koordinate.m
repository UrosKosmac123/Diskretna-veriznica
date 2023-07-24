function [X,Y] = koordinate(x0,y0,ksi,eta)
% Izracuna koordinate veriznice X in Y po enacbah (15) in 
% (16)

% Vhodni parametri:
% y0 - visina verižnice
% x0 - zacetna(x0) in končna(xn) abcisa, kjer sta (x_0,y0) in (x_n+1,y0) obesisci. 
% ksi - vrednosti izrazov po formuli (10)
% eta - vrednosti izrazov po formuli (11)

 X = x0(1) + [0,cumsum(ksi)];
 Y = y0 + [0,cumsum(eta)];
 
end