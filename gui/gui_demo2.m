function varargout = gui_demo2(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_demo2_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_demo2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function gui_demo2_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);



% --- Outputs from this function are returned to the command line.
function varargout = gui_demo2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Medit_Callback(hObject, eventdata, handles)
% hObject    handle to Medit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Medit as text
%        str2double(get(hObject,'String')) returns contents of Medit as a double


% --- Executes during object creation, after setting all properties.
function Medit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Medit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Nedit_Callback(hObject, eventdata, handles)
% hObject    handle to Nedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Nedit as text
%        str2double(get(hObject,'String')) returns contents of Nedit as a double


% --- Executes during object creation, after setting all properties.
function Nedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Nedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Oedit_Callback(hObject, eventdata, handles)
% hObject    handle to Oedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Oedit as text
%        str2double(get(hObject,'String')) returns contents of Oedit as a double


% --- Executes during object creation, after setting all properties.
function Oedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Oedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pedit_Callback(hObject, eventdata, handles)
% hObject    handle to Pedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pedit as text
%        str2double(get(hObject,'String')) returns contents of Pedit as a double


% --- Executes during object creation, after setting all properties.
function Pedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Qedit_Callback(hObject, eventdata, handles)
% hObject    handle to Qedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Qedit as text
%        str2double(get(hObject,'String')) returns contents of Qedit as a double


% --- Executes during object creation, after setting all properties.
function Qedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Qedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Redit_Callback(hObject, eventdata, handles)
% hObject    handle to Redit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Redit as text
%        str2double(get(hObject,'String')) returns contents of Redit as a double


% --- Executes during object creation, after setting all properties.
function Redit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Redit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ledit_Callback(hObject, eventdata, handles)
% hObject    handle to Ledit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ledit as text
%        str2double(get(hObject,'String')) returns contents of Ledit as a double


% --- Executes during object creation, after setting all properties.
function Ledit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ledit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Kedit_Callback(hObject, eventdata, handles)
% hObject    handle to Kedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Kedit as text
%        str2double(get(hObject,'String')) returns contents of Kedit as a double


% --- Executes during object creation, after setting all properties.
function Kedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Jedit_Callback(hObject, eventdata, handles)
% hObject    handle to Jedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Jedit as text
%        str2double(get(hObject,'String')) returns contents of Jedit as a double


% --- Executes during object creation, after setting all properties.
function Jedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Jedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Iedit_Callback(hObject, eventdata, handles)
% hObject    handle to Iedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Iedit as text
%        str2double(get(hObject,'String')) returns contents of Iedit as a double


% --- Executes during object creation, after setting all properties.
function Iedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Iedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Hedit_Callback(hObject, eventdata, handles)
% hObject    handle to Hedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Hedit as text
%        str2double(get(hObject,'String')) returns contents of Hedit as a double


% --- Executes during object creation, after setting all properties.
function Hedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Hedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Aedit_Callback(hObject, eventdata, handles)
% hObject    handle to Aedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Aedit as text
%        str2double(get(hObject,'String')) returns contents of Aedit as a double

% --- Executes during object creation, after setting all properties.
function Aedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Aedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Cedit_Callback(hObject, eventdata, handles)
% hObject    handle to Cedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Cedit as text
%        str2double(get(hObject,'String')) returns contents of Cedit as a double


% --- Executes during object creation, after setting all properties.
function Cedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Dedit_Callback(hObject, eventdata, handles)
% hObject    handle to Dedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Dedit as text
%        str2double(get(hObject,'String')) returns contents of Dedit as a double


% --- Executes during object creation, after setting all properties.
function Dedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Dedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Eedit_Callback(hObject, eventdata, handles)
% hObject    handle to Eedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Eedit as text
%        str2double(get(hObject,'String')) returns contents of Eedit as a double


% --- Executes during object creation, after setting all properties.
function Eedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Eedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fedit_Callback(hObject, eventdata, handles)
% hObject    handle to Fedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fedit as text
%        str2double(get(hObject,'String')) returns contents of Fedit as a double


% --- Executes during object creation, after setting all properties.
function Fedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global mask2;
axes(handles.axes1);
imshow(mask2);
global E;
E = entropy(mask2);
set(handles.Aedit,'String',E);

global GL;
GL = mean( double( reshape( mask2, [], 1 ) ) );
set(handles.edit14,'String',GL);

%5.Homogeneity
  h = graycoprops(graycomatrix(mask2),'Homogeneity');

   global H;
  H = h.Homogeneity;
  set(handles.Eedit,'String',H);
 
c = graycoprops(graycomatrix(mask2),'Contrast');
  global C;
  C = c.Contrast;
  set(handles.Fedit,'String',C);
  
en = graycoprops(graycomatrix(mask2),'Energy');
  global EN;
  EN = en.Energy;
  set(handles.Ledit,'String',EN);

co = graycoprops(graycomatrix(mask2),'Correlation');
global CO;
  CO = co.Correlation;
  set(handles.Redit,'String',CO);

I2 = im2double(mask2);
global SK;
SK = skewness(I2(:));
set(handles.Cedit,'String',SK);

img1 = double(mask2(:));
ima1 = max(img1(:));
imi1 = min(img1(:));
ims1 = std(img1(:));
global SNR;
SNR = 20*log10((ima1-imi1)./ims1);
set(handles.Dedit,'String',SNR);

[r,c]=size(mask2);
global Mean;
Mean = sum(mask2(:))/(r*c);
set(handles.Qedit,'String',Mean);

totdiff=(mask2-Mean).^2;
totsum=sum(totdiff(:));
nele=(r*c)-1;
global VR;
VR=totsum/nele;
set(handles.edit12,'String',VR);

global SD;
SD=sqrt(VR);
set(handles.Hedit,'String',SD);

UL = unique(mask2); 
global L;
L = numel(UL);     
set(handles.Iedit,'String',L);


  
  k1=regionprops(mask2,{'Area','Perimeter','MajorAxisLength','MinorAxisLength','Eccentricity','Orientation'});
  global area;
  area = k1.Area;
  set(handles.Jedit,'String',area);
  global perimeter;
  perimeter = k1.Perimeter;
   set(handles.Kedit,'String',perimeter);
  global majoraxis;
  majoraxis = k1.MajorAxisLength;
   set(handles.Medit,'String',majoraxis);
  global minoraxis;
  minoraxis = k1.MinorAxisLength;
 set(handles.Nedit,'String',minoraxis);
 global eccentricity; 
 eccentricity = k1.Eccentricity;
   set(handles.Oedit,'String',eccentricity);
  global orientation;
  orientation = k1.Orientation;
   set(handles.Pedit,'String',orientation);


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
global sheetname;
global E;
global GL;
global SK;
global SNR;
global C;
global EN;
global CO;
global Mean;
global VR;
global SD;
global area;
global perimeter;
global majoraxis;
global minoraxis;
global eccentricity;
global orientation;
display(E);

T = table(E,GL,SK,SNR,C,EN,CO,Mean,VR,SD,area,perimeter,majoraxis,minoraxis,eccentricity,orientation);
T.Properties.VariableNames = {'entropy' 'gray_level' 'skewness' 'SNR' 'contrast' 'energy'	'correlation' 'mean' 'variance'	'SD' 'area' 'perimeter' 'majoraxislength'	'minoraxislength' 'eccentricity' 'Orientation'};
folder = 'H:\Final Project\outputsheet';
if ~exist(folder, 'dir')
    mkdir(folder);
end
baseFileName = strcat(sheetname,'.xlsx');
filename = fullfile(folder, baseFileName);

writetable(T,filename,'Sheet',1,'Range','A1')
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
gui_demo3;
