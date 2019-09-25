function[flag]= calcola(handles, t)
%inserisco i dati nella struttura
handles.dati.degree=str2double(get(handles.edit2,'String'));
handles.dati.mid_point=str2double(get(handles.edit4,'String'));
handles.dati.algorithm=get(handles.popupmenu1,'Value');

%converto le stringhe di punti in array
points=str2num(get(handles.edit1,'String'));
handles.vettori.x_points=points(:, 1);
handles.vettori.y_points=points(:, 2);
handles.vettori.weigths=str2num(get(handles.edit3,'String'));

%restituisco il risultato
[flag, cpY,cpX,Y,X]=setUp(handles.dati.algorithm,handles.dati.degree,handles.vettori.x_points,handles.vettori.y_points, handles.vettori.weigths, handles.dati.mid_point, t);
%              cpX
%              cpY
%              X
%              Y
handles.vettori.X=X;
handles.vettori.Y=Y;
handles.vettori.cpX=cpX;
handles.vettori.cpY=cpY;

%salvole strutture appena create (dati e vettori)
%nellastruttura principale handles
guidata(handles.figure1,handles);
