function varargout = gui_demo(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_demo_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_demo_OutputFcn, ...
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

function gui_demo_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);


function varargout = gui_demo_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function pushbutton1_Callback(hObject, eventdata, handles)

global a;
[Filename,Pathname]=uigetfile('*.png','File Selector');
global sheetname;
sheetname = Filename;
name=strcat(Pathname,Filename);
a=imread(name);
axes(handles.axes1);
imshow(a);


function pushbutton2_Callback(hObject, eventdata, handles)

global a;
I = im2bw(a);
I2 = edge(I,'canny');
%h=fspecial('gaussian');
%blurredimage=imfilter(a,h);
axes(handles.axes2);
imshow(I2);


function pushbutton3_Callback(hObject, eventdata, handles)

global a;
global threshold_image;
threshold_value = graythresh(a);
threshold_image = im2bw(a,threshold_value);  
axes(handles.axes3);
imshow(threshold_image);


function pushbutton5_Callback(hObject, eventdata, handles)

  gui_demo2;
