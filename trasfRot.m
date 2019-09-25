function [X,Y] = trasfRot(x,y,a)
%trasfRot: Funzione che esegue la trasformazione affine di rotazione.
%Input:
%-x:punti di controllo lato x, i punti devono essere passati per colonna.
%-y:punti di controllo lato y, i punti devono essere passati per colonna.
%-a: angolo, da passare in radianti.
%Output:
%-X: punti di controllo trasformato lato x.
%-Y: punti di controllo trasformato lato y.
A = [cos(a) -sin(a); sin(a) cos(a)];
v = zeros(2,1);
[X,Y] = trasfAffi(A,v,x,y);
end

