function [x,y] = symmetric(cp_x,cp_y, r_u )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
n=length(cp_x);
for i = 1:n
    cp_xq(i) = cp_x(n-i+1);
    cp_yq(i) = cp_y(n-i+1);
end
for i = 1:length(r_u)
    [t_x, t_y] = de_casteljau(n-1, cp_xq, cp_yq, r_u(i));
    x(i) = t_x;
    y(i) = t_y;
end
end

