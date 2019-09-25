function [X,Y] = trasfAffi(A,v,x,y)
%trasfAffi: Procedura che esegue una trasformazione lineare.
%Input:
%-A: matrice di trasformazione
%-v: vettore di trasformazione
%-x: punti di controllo lato x, i punti devono essere passati per colonna
%-y: punti di controllo lato y, i punti devono essere passati per colonna
%Output:
%-X: punti di controllo trasformato lato x
%-Y: punti di controllo trasformato lato y
A
v
P = [x;y]
T = A*P+v
X = T(1,:)
Y = T(2,:)
end

