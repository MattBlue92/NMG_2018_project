function initialize_gui(handles)
%creo la struttura dati che conterra' i dati
handles.dati.degree=0;
handles.dati.points='0 0; 0 0';
handles.dati.mid_point=0;
handles.dati.init_weights='0 0';
handles.dati.algorithm=1;

handles.dati.property=1;
handles.dati.type_property=1;
handles.dati.alpha=0;
handles.dati.d=0;
handles.dati.s=0;

handles.vettori.x_points=[];
handles.vettori.y_points=[];
handles.vettori.weigths=[];

%creo la struttura con i vettori (le soluzioni)
handles.vettori.X=[];
handles.vettori.Y=[];
handles.vettori.cpX=[];
handles.vettori.cpY=[];

%salvole strutture appena create (dati e vettori)
%nellastruttura principale handles
guidata(handles.figure1,handles);

%passo i dati alle edit text
set(handles.popupmenu1, 'Value', 1);
set(handles.edit1, 'String', handles.dati.points);
set(handles.edit2, 'String', handles.dati.degree);
set(handles.edit3, 'String', handles.dati.init_weights);
set(handles.edit4, 'String', handles.dati.mid_point);

set(handles.popupmenu2, 'Value', 1);
set(handles.popupmenu3, 'Value', 1);
set(handles.edit9,'String',handles.dati.alpha);
set(handles.edit16,'String',handles.dati.d);
set(handles.edit15,'String',handles.dati.s);

%nascondo text pesi e mid-point
set(handles.edit3,'Enable','off');
set(handles.edit4,'Enable','off');

set(handles.popupmenu3,'Enable','off');
set(handles.popupmenu2,'Enable','off');
set(handles.edit9,'Enable','off');
set(handles.edit16,'Enable','on');
set(handles.edit15,'Enable','on');

cla(handles.axes1, 'reset')



cla;