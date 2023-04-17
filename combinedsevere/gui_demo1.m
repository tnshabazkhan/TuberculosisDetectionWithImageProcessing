function varargout = gui_demo1(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_demo1_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_demo1_OutputFcn, ...
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

function gui_demo1_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);


function varargout = gui_demo1_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function pushbutton1_Callback(hObject, eventdata, handles)

global a;
[Filename,Pathname]=uigetfile('*.png','File Selector');
global sheetname1;
sheetname1 = Filename;
name=strcat(Pathname,Filename);
a=imread(name);
axes(handles.axes1);
imshow(a);


function pushbutton2_Callback(hObject, eventdata, handles)

global b;
[Filename,Pathname]=uigetfile('*.png','File Selector');
global sheetname2;
sheetname2 = Filename;
name=strcat(Pathname,Filename);
b=imread(name);
axes(handles.axes2);
imshow(b);


function pushbutton3_Callback(hObject, eventdata, handles)

global c;
[Filename,Pathname]=uigetfile('*.png','File Selector');
global sheetname3;
sheetname3 = Filename;
name=strcat(Pathname,Filename);
c=imread(name);
axes(handles.axes3);
imshow(c);

function pushbutton5_Callback(hObject, eventdata, handles)

  gui_demo_c;


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
global a;
I = im2bw(a);
I2 = edge(I,'canny');
%h=fspecial('gaussian');
%blurredimage=imfilter(c,h);
axes(handles.axes6);
imshow(I2);
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
global b;
I = im2bw(b);
I2 = edge(I,'canny');
%h=fspecial('gaussian');
%blurredimage=imfilter(c,h);
axes(handles.axes7);
imshow(I2);
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
global c;
I = im2bw(c);
I2 = edge(I,'canny');
%h=fspecial('gaussian');
%blurredimage=imfilter(c,h);
axes(handles.axes8);
imshow(I2);
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
global a;
threshold_value = graythresh(a);
threshold_image = im2bw(a,threshold_value);  
axes(handles.axes9);
imshow(threshold_image);
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
global b;
threshold_value = graythresh(b);
threshold_image = im2bw(b,threshold_value);  
axes(handles.axes10);
imshow(threshold_image);
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
global c;
threshold_value = graythresh(c);
threshold_image = im2bw(c,threshold_value);  
axes(handles.axes11);
imshow(threshold_image);
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes7
