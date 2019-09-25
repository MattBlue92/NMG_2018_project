close all;
clear;
n = 4;
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

%
%rappresentazione grafica di deCasteljau in u
%

u=r_u(50);
%u=0.5;

[Q_x,Q_y] = newDeCasteljau(n, cp_x, cp_y, u);
for i=2:length(Q_x)
    c=1;
    for j=1:length(Q_x)
        if Q_x(j, i)~=0
            x(c)=Q_x(j, i);
            y(c)=Q_y(j, i);
            c=c+1;
        end
    end
    plot(x,y,'g', 'linewidth', 1);
end