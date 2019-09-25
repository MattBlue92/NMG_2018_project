function [Q_x,Q_y] = newDeCasteljau(n, x_p, y_p, u)
    Q_x = zeros(n+1, n+1);
    Q_y = zeros(n+1, n+1);
    Q_x(:,1) = x_p; %prendi da Q_x la prima colonna per le x
    Q_y(:,1) = y_p; %prendi da Q_y la prima colonna per le y
    for i = 2:n+1
        for j = i:n+1
            Q_x(j,i) = (1-u)*Q_x(j-1, i-1)+u*Q_x(j, i-1); %passo di calcolo per le x
            Q_y(j,i) = (1-u)*Q_y(j-1, i-1)+u*Q_y(j, i-1); %passo di calcolo per le y
        end
    end
end