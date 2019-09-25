function esegui(handles,t)
%i=1;

[flag] = calcola(handles, t);
X=handles.vettori.X;
Y=handles.vettori.Y;
cpX=handles.vettori.cpX;
cpY=handles.vettori.cpY;
switch(flag)
    case 1
        draw(handles.vettori.x_points, handles.vettori.y_points,X,Y);
    
    case 2
        %restituisco il risultato
        %plot(cpX,cpY);
        plot(cpX, cpY, '-O');
        
    case 3
        try
            degree = handles.dati.degree;
            for i=1:length(t)
                    [x_t,y_t]=de_casteljau(degree, cpX, cpY,t(i));
                    X1(i)=x_t;
                    Y1(i)=y_t;
            end
            draw(cpX,cpY, X1, Y1);
            for i=1:length(t)
                    [x_t,y_t]=de_casteljau(degree, X, Y,t(i));
                    X1(i)=x_t;
                    Y1(i)=y_t;
            end
            draw(X,Y, X1, Y1);
        catch
            %i=i+1
            calcola(handles, t);
        end
    end
end

