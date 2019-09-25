function verify(handles,t)
%inserisco i dati nella struttura
handles.dati.property=get(handles.popupmenu2,'Value');
handles.dati.type_property=get(handles.popupmenu3,'Value');
handles.dati.alpha=str2double(get(handles.edit9,'String'));
handles.dati.d=str2double(get(handles.edit16,'String'));
handles.dati.s=str2double(get(handles.edit15,'String'));

[flag] = setUpVerify(handles.dati.property,handles.dati.type_property, handles.dati.alpha, handles.dati.d, handles.dati.s,handles.vettori.x_points, handles.vettori.y_points, handles.vettori.X, handles.vettori.Y,t);

end

