n = 3;
r_u = linspace(0,1,100);
[cp_x, cp_y] = ginput(n+1);
p_x = zeros(1, length(r_u));
p_y = zeros(1, length(r_u));
for i = 1:length(r_u)
    [t_x, t_y] = de_casteljau(n, cp_x, cp_y, r_u(i));
    p_x(i) = t_x;
    p_y(i) = t_y;
end
draw(cp_x, cp_y,p_x, p_y); %qui disegna la curva di bezier
t_hat = ginput(1);
[cp_x1,cp_y1, cp_x2,cp_y2] = subdivision(cp_x, cp_y,n+1,t_hat(1));
for i = 1:length(r_u)
    [t_x, t_y] = de_casteljau(n, cp_x1, cp_y1, r_u(i));
    p_x(i) = t_x;
    p_y(i) = t_y;
end
draw(cp_x1,cp_y1,p_x, p_y);
for i = 1:length(r_u)
    [t_x, t_y] = de_casteljau(n, cp_x2, cp_y2, r_u(i));
    p_x(i) = t_x;
    p_y(i) = t_y;
end
draw(cp_x2,cp_y2,p_x, p_y);