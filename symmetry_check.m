function [flag] = symmetry_check(p_x,p_y, x, y)
flag=1;
n=length(p_x);
for i = 1:n
    if (abs(p_x(i) - x(n-i+1))>0.00001)
        flag =0;
        break
    end
    if (abs(p_y(i) - y(n-i+1))>0.00001)
        flag =0;
        break
    end
end
end