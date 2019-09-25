n = 5;
r_u = linspace(0,1,100);
[cp_x, cp_y] = ginput(n+1);
p_x = zeros(1, length(r_u));
p_y = zeros(1, length(r_u));

%beta = randi(10,n+1,1)/10;
%for i = 1:length(r_u)
%    [t_x, t_y] = de_casteljauR(n, cp_x, cp_y, r_u(i),beta);
%    p_x(i) = t_x;
%    p_y(i) = t_y;
%end
draw(cp_x,cp_y, p_x, p_y)
%[cp1_x, cp1_y] = degree_elevation(n+1,cp_x,cp_y)

for i = 1:length(r_u)
    [t_x, t_y] = de_casteljau(n, cp_x, cp_y, r_u(i));
    p_x(i) = t_x;
    p_y(i) = t_y;
end

draw(cp_x,cp_y, p_x, p_y);
%flag =  extremeInterp(cp1_x, cp1_y, p_x, p_y);
%disp(['Verifica interpolazione agli estremi: ', flag]);
