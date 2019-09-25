function [X,Y] = trasfTrasl(x,y,d,s)
%trasfRot: Funzione che esegue la trasformazione affine di traslazione.
%Input:
%-x:punti di controllo lato x, i punti devono essere passati per colonna.
%-y:punti di controllo lato y, i punti devono essere passati per colonna.
%-d: quantità di traslazione lungo l'asse x.
%-s: quantità di traslazione lungo l'asse y.
%Output:
%-X: punti di controllo trasformato lato x.
%-Y: punti di controllo trasformato lato y.
A = eye(2);
v = [d;s];
[X,Y] = trasfAffi(A,v,x,y);
end