function [x,y,z] = de_castelS(n, cp_x, cp_y, cp_z, u)
%de_castelS: implementazioni dell'algoritmo di De_casteljau per le
%superfici
%Input:
%-n: numero di punti di controllo
%-cp_x: vettore dei punti, componente x
%-cp_y: vettore dei punti, componente y
%-cp_z: vettore dei punti, componente z
%Output:
%-x: componente x del punto della curva restituito dall'algoritmo 
%-y: componente y del punto della curva restituito dall'algoritmo 
%-z: componente z del punto della curva restituito dall'algoritmo
    Q_x = zeros(n+1,n+1);
    Q_y = zeros(n+1,n+1);
    Q_z = zeros(n+1,n+1);
    Q_x(:,1) = cp_x;
    Q_y(:,1) = cp_y;
    Q_z(:,1) = cp_z;
    for i = 2:n+1
        for j = i:n+1
            Q_x(j,i) = (1-u)*Q_x(j-1, i-1)+u*Q_x(j, i-1);
            Q_y(j,i) = (1-u)*Q_y(j-1, i-1)+u*Q_y(j, i-1);
            Q_z(j,i) = (1-u)*Q_z(j-1, i-1)+u*Q_z(j, i-1);
        end
    end
    x = Q_x(n+1, n+1);
    y = Q_y(n+1, n+1);
    z = Q_z(n+1, n+1);
end

