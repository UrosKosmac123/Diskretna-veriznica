u0 = 2;
L = [8 8];
M = L;
x0 = [0 10];
y0 = 0;
n = 4;
[X,Y] = sim_ver(x0,y0,L,M,u0);

risi_veriznica(x0,y0,L,M,u0)

%risi_razpolovi(x0,y0,L,M,u0,n)
