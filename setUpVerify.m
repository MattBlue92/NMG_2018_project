function [flag] = setUpVerify(property,type, alpha, d, s,cp_x, cp_y, c_x, c_y,t)

    switch property
        case 1
            [flag] = extremeInterp(cp_x, cp_y, c_x, c_y);
        case 2
            variation_dim();
            flag=1;
        case 3
            switch type
                case 1
                    [flag] = verifyTrasfS(cp_x, cp_y,t,d,s);
                case 2
                    [flag] = verifyTrasfT(cp_x, cp_y,t,d,s);
                case 3
                    [flag] = verifyTrasfR(cp_x, cp_y,t,alpha);
            end
        case 4
            convex_hull(cp_x,cp_y);
            flag=1;
        case 5
            [p_x, p_y]=symmetric(cp_x,cp_y, t);
            [flag] = symmetry_check(p_x,p_y, c_x, c_y);
    end
            
                    
end

