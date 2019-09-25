function [X,Y] = trasfScal(x,y,d,s)
%trasfRot: Funzione che esegue la trasformazione affine di scalatura.
%Input:
%-x:punti di controllo lato x, i punti devono essere passati per colonna.
%-y:punti di controllo lato y, i punti devono essere passati per colonna.
%-d: quantità di scalatura lungo l'asse x.
%-s: quantità di scalatura lungo l'asse y.
%Output:
%-X: punti di controllo trasformato lato x.
%-Y: punti di controllo trasformato lato y.
%A =  eye(2);
%v = [d s];
%A = v*A;
A = [d 0; 0 s];
v = zeros(2,1);
[X,Y] = trasfAffi(A,v,x,y);
end
