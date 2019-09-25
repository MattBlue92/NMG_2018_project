function [x,y] = de_casteljauR(n, x_p, y_p, u,beta)
%DE_CASTELJAU: esegue l'algoritmo di DE_CASTELJAU per calcolare i punti di
%una curva di bazier razionale.
%Input:
%-n: numero di punti di controllo
%-x_p: vettore dei punti, componente x
%-y_p: vettore dei punti, componente y
%-beta_x: vettore dei pesi, componente x
%-beta_y: vettore dei pesi, componente y
%Output:
%-x: componente x del punto della curva restituito dall'algoritmo 
%-y: componente y del punto della curva restituito dall'algoritmo 
    Q_x = zeros(n+1, n+1);
    Q_y = zeros(n+1, n+1);
    B_x = zeros(n+1, n+1);
    B_y = zeros(n+1, n+1);
    Q_x(:,1) = x_p; %prendi da Q_x la prima colonna per le x
    Q_y(:,1) = y_p; %prendi da Q_y la prima colonna per le y
    B(:,1) = beta ;%prendi da Q_x la prima colonna per le x
    for i = 2:n+1
        for j = i:n+1
            B(j,i) = (1-u)*B(j-1, i-1)+u*B(j, i-1);
        end
    end
    for r = 2:n+1
        for i = r:n+1
            Q_x(i,r) = (1-u)*Q_x(i-1, r-1)*(B(i-1,r-1)/B(i,r))+u*Q_x(i, r-1)*(B(i,r-1)/B(i,r)); %passo di calcolo per le x
            Q_y(i,r) = (1-u)*Q_y(i-1, r-1)*(B(i-1,r-1)/B(i,r))+u*Q_y(i, r-1)*(B(i,r-1)/B(i,r)); %passo di calcolo per le y
        end
    end
    x = Q_x(n+1, n+1);
    y = Q_y(n+1, n+1);
end

