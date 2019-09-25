function [c_x,c_y] = degree_elevation(n, cp_x, cp_y)
%DEGREE_ELEVATION: algoritmo che dagli n punti di controllo ne calcola n+1
%nuovi punti di controllo
%Input:
%:-n: numero iniziale dei punti di controllo
%:cp_x: vettore delle ascisse dei pc
%:cp_y: vettore delle ordinate dei pc
%Output:
%:c_x: nuovo vettore delle ascisse dei pc
%:c_y: nuovo vettore delle ordinate dei pc
c_x = [cp_x; 0];
c_y = [cp_y; 0];
for i = 2:n
    k = (i-1)/n;
    c_x(i) = k*cp_x(i-1)+(1-k)*cp_x(i);
    c_y(i) = k*cp_y(i-1)+(1-k)*cp_y(i);
end
c_x(n+1) = cp_x(n);
c_y(n+1) = cp_y(n);

