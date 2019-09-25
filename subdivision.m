function [cp_x1,cp_y1, cp_x2,cp_y2] = subdivision(cp_x, cp_y, n, t_hat)
%SUBDIVISION: L'algoritmo di subdivision dato un punto t_hat sulla curva
%divide in 2 la curva.
%Input:
%-cp_x: vettori delle ascisse dei punti di controllo 
%-cp_y: vettori delle ordinate dei punti di controllo
%-n: numero di punti di controllo
%-t_hat: punto di suddivisione
%Output:
%-cp_x1: vettori delle ascisse dei punti di controllo per la prima metà
%della curva
%-cp_y1: vettori delle ordinate dei punti di controllo per la prima metà
%della curva
%-cp_x2: vettori delle ascisse dei punti di controllo per la seconda metà
%della curva
%-cp_y2: vettori delle ordinate dei punti di controllo per la seconda metà
%della curva
Qx(:,:) = cp_x(:,:);
Qy(:,:) = cp_y(:,:);
cp_x1(1,:) = cp_x(1,:);
cp_y1(1,:) = cp_y(1,:);
%tx_hat = t_hat(1,1)
%ty_hat = t_hat(1,2)
for k = 1:n-1
    for i = 1:n-k
        Qx(i,:) = ((1-t_hat)*Qx(i,:))+(t_hat*Qx(i+1,:));
        Qy(i,:) = ((1-t_hat)*Qy(i,:))+(t_hat*Qy(i+1,:));
    end
cp_x1(k+1,:) = Qx(1,:);
cp_y1(k+1,:) = Qy(1,:);
end
cp_x2(:,:) = Qx(:,:);
cp_y2(:,:) = Qy(:,:);
end

