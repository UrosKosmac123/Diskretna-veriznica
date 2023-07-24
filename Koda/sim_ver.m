function [X,Y] = sim_ver(x0,y0,L,M,u0)
% SIM_VER resi problem simetricne veriznice na sodo mnogo vozliscih
% iz ene enacbe za neznanko u.
% Rezultat X je 2x(n+2) tabela koordinat vozlisc, kjer
% prva vrstica doloca abscise, druga ordinate iskanih tock.
%
% Vhodni parametri:
% y0 - visina verižnice
% x0 - zacetna(x0) in končna(xn) abcisa, kjer sta (x_0,y0) in (x_n+1,y0) obesisci. 
% L - je vrstica, ki doloca dolzine prvih k = (n+1)/2 clenkov.
% M - je vrstica, ki doloca mase prvih k = (n+1)/2 clenkov.
% u0 - zaceten priblizek pri resevanju nelinearne enacbe za U.

 
mi = 1/2*(M(1:end-1) + M(2:end));

% vsota (k-1)_∑_j=i µ_i
vsota_mi = [cumsum(flip(mi)),0];
mi_k = M(end);

% Izracunamo u po enačbi 14)
U =@(u) enacba_za_U(u,x0,y0,vsota_mi,mi_k,L);
u = fsolve(U, u0);

% Zapišemo enačbi (10) in (11)
ksi = L./(sqrt(1 + (u.^2).*(vsota_mi + mi_k/2).^2));
eta = ksi.*(-u*(mi_k/2 + vsota_mi));

% sledi iz simetrije
ksi_cela = [ksi, flip(ksi)];
eta_cela = [eta, -flip(eta)];

%X = koordinate(x0(1),ksi_cela);
%Y = koordinate(y0,eta_cela);

[X,Y] = koordinate(x0,y0,ksi_cela,eta_cela)

end
