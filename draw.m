function [] = draw(cp_x,cp_y, p_x, p_y)
%DRAW: disegna la curva nel piano a griglia passando i vettori cp_x e cp_y
%(i punti di controllo) e i vettori p_x e p_y (i punti della curva)
%Input:
%-cp_x: parte x dei punti di controllo
%-cp_y: parte y dei punti di controllo
%-p_x: parte x della curva
%-p_y: parte y della curva
plot(cp_x, cp_y, '-O'); hold on; grid on;  axis equal;
plot(p_x, p_y, 'linewidth',1); hold on;axis equal;
end

