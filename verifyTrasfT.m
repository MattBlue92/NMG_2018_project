function [flag] = verifyTrasfT(cp_x, cp_y,r_u,d,s)

%calcolo la curva dai punti di controllo
n=length(cp_x)-1;
for i = 1:length(r_u)
    [t_x, t_y] = de_casteljau(n, cp_x, cp_y, r_u(i));
    p_x(i) = t_x;
    p_y(i) = t_y;
end
draw(cp_x, cp_y, p_x, p_y); %la curva dei punti non trasformati

%applico la trasformazione ai punti, disegno i punti traformati
for i = 1:length(cp_x)
    [cpX(i),cpY(i)] = trasfTrasl(cp_x(i), cp_y(i),d,s);
end
for i = 1:length(r_u)
    [t_x, t_y] = de_casteljau(n, cpX, cpY, r_u(i));
    p1_x(i) = t_x;
    p1_y(i) = t_y;
end
draw(cpX, cpY, p1_x, p1_y); %la curva dei punti trasformati


%applico la trasformazione alla curva
for i = 1:length(r_u)
    [p2_x(i),p2_y(i)] = trasfTrasl(p_x(i), p_y(i),d,s); %curva trasformata
end
plot(p2_x,p2_y,'linewidth',1); hold on;

%verifico che la curva trasformata e' uguale a quella ottenuta dai punti
%traformati
flag=1;
n=length(r_u);
for i = 1:n
    abs(p1_x(i) - p2_x(i))
    if (abs(p1_x(i) - p2_x(i))>0.0001)
        flag =0;
        break;
    end
    abs(p1_y(i) - p2_y(i))
    if (abs(p1_y(i) - p2_y(i))>0.0001)
        flag =0;
        break;
    end
end

