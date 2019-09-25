function convex_hull(cp_x,cp_y)
%Convex_hull: funzione che colora il poligono di controllo.
%Input:
%-cp_x: vettore delle ascisse dei punti di controllo.
%-cp_y: vettore delle ordinate dei punti di controllo.
k = convhull(cp_x,cp_y); %ritorna gli indici dei punti del convexhull
%patch(cp_x(k),cp_y(k),[0.7 1 0.7]);
patch(cp_x(k),cp_y(k),'red','FaceAlpha',.2);
end

