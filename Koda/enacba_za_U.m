function U = enacba_za_U(u,x0,y0,vsota_mi,mi_k,L)

% Sestavimo in rešimo nelinearno enačbo za U, po enacbi
% (14)
% Vhodni parametri:
% u - parameter, ki ga bomo iskali za izračun ksi in eta
% y0 - visina verižnice
% x0 - zacetna(x0) in končna(xn) abcisa, kjer sta (x_0,y0) in (x_n+1,y0) obesisci. 
% vsote_mi - je vrstica, ki doloca kumulative vsote mas povprecja mas.
% mi_k - k = (n+1)/2 - ta masa členka
% L - je vrstica, ki doloca dolzine prvih k = (n+1)/2 clenkov.

ksi = L./(sqrt(1 + (u.^2).*(vsota_mi + mi_k/2).^2));
U = 2*sum(ksi) - (x0(2) - x0(1));

end