function initialize_gui_space(handles)
    %creo la struttura dati che conterra' i dati,
    handles.dati.PointSpace1_init='1 2 3; 6 1 9; 2 8 4';
    handles.dati.PointSpace2_init='1 5 5; 3 3 3; 6 0 1';
    handles.dati.PointSpace3_init='2 9 1; 3 3 3; 4 5 8';
    handles.dati.k_u=3;
    handles.dati.k_v=3;
    handles.vettori.PointSpace1=[];
    handles.vettori.PointSpace2=[];
    handles.vettori.PointSpace3=[];
    
    %creo la struttura con i vettori (le soluzioni)
handles.vettori.X=[];
handles.vettori.Y=[];
handles.vettori.cpX=[];
handles.vettori.cpY=[];

%salvole strutture appena create (dati e vettori)
%nellastruttura principale handles
guidata(handles.figure1,handles);

%passo i dati alle edit text
set(handles.edit17, 'String', handles.dati.PointSpace1_init);
set(handles.edit19, 'String', handles.dati.PointSpace2_init);
set(handles.edit20, 'String', handles.dati.PointSpace3_init);
set(handles.edit21, 'String', handles.dati.k_u);
set(handles.edit22, 'String', handles.dati.k_v);

%nascondo text pesi e mid-point
set(handles.edit3,'Enable','off');
set(handles.edit4,'Enable','off');

cla;