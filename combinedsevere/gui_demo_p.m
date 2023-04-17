function varargout = gui_demo_p(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_demo_p_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_demo_p_OutputFcn, ...
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

function gui_demo_p_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);


function varargout = gui_demo_p_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function pushbutton1_Callback(hObject, eventdata, handles)

global a;
I = im2bw(a);
I2 = edge(I,'canny');
%h=fspecial('gaussian');
%blurredimage=imfilter(a,h);
axes(handles.axes1);
imshow(I2);


function pushbutton2_Callback(hObject, eventdata, handles)

global b;
I = im2bw(b);
I2 = edge(I,'canny');
%h=fspecial('gaussian');
%blurredimage=imfilter(b,h);
axes(handles.axes2);
imshow(I2);


function pushbutton3_Callback(hObject, eventdata, handles)

global c;
I = im2bw(c);
I2 = edge(I,'canny');
%h=fspecial('gaussian');
%blurredimage=imfilter(c,h);
axes(handles.axes3);
imshow(I2);


function pushbutton5_Callback(hObject, eventdata, handles)

  gui_demo_s;
