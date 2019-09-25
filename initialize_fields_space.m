function[handles]= initialize_fields_space(handles)

%converto le stringhe di punti in array
point=str2num(get(handles.edit17,'String'));
    handles.vettori.PointSpace1=point;
point=str2num(get(handles.edit19,'String'));
    handles.vettori.PointSpace2=point;
point=str2num(get(handles.edit20,'String'));
    handles.vettori.PointSpace3=point;

handles.dati.k_u=str2double(get(handles.edit21,'String'));
handles.dati.k_v=str2double(get(handles.edit22,'String'));
end