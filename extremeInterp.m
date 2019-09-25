function [flag] = extremeInterp(cp_x, cp_y, c_x, c_y)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
n = length(cp_x);
nt = length(c_x);
flag = 'false';
if cp_x(1)==c_x(1) & cp_y(1)==c_y(1) &cp_x(n)==c_x(nt) & cp_y(n)==c_y(nt)
    flag = 'true';
end

