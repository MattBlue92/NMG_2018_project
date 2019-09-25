n = 5;
k= 30;
r_u = linspace(0,1,100);
[cp_x, cp_y] = ginput(n+1);
plot(cp_x, cp_y, '-O'); hold on; grid on;
for i= 1:k
    n=n+1;
    [cp1_x, cp1_y] = degree_elevation(n,cp_x,cp_y);
    %plot(cp1_x, cp1_y, '-O'); hold on; grid on;
    cp_x = cp1_x;
    cp_y = cp1_y;
end
plot(cp_x, cp_y, '-O'); hold on; grid on;