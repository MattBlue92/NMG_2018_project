function [flag, cpY, cpX, Y, X] = setUp(chosenAlgorithm,degree, xPoint, yPoint, weigths, mid_point, t)
    switch chosenAlgorithm
        case 1
            for i=1:length(t)
                [x_t,y_t]=de_casteljau(degree, xPoint, yPoint,t(i));
                X(i)=x_t;
                Y(i)=y_t;
            end
            cpY=0; cpX=0;
            flag = 1;
        case 2
            for i=1:length(t)
                [x_t,y_t]=de_casteljauR(degree, xPoint, yPoint, t(i), weigths);
                X(i)=x_t;
                Y(i)=y_t;
            end
            cpY=0; cpX=0;
            flag = 1;
        case 3
            [cpX,cpY]=degree_elevation(degree+1,xPoint,yPoint);
            X=0; Y=0;
            flag = 2;
        case 4
            [cpX,cpY, X,Y] = subdivision(xPoint, yPoint, degree+1, mid_point);
            flag = 3;
    end          
            
end

