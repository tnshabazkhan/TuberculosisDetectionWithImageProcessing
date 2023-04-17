function varargout = gui_demo_s(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_demo_s_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_demo_s_OutputFcn, ...
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

function gui_demo_s_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;


guidata(hObject, handles);


function varargout = gui_demo_s_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;



function pushbutton1_Callback(hObject, eventdata, handles)
global sheetname1;
global a;
threshold_value = graythresh(a);
threshold_image = im2bw(a,threshold_value);  
axes(handles.axes1);
imshow(threshold_image);


global E;
E = entropy(threshold_image);


global GL;
GL = mean( double( reshape( threshold_image, [], 1 ) ) );


%5.Homogeneity
  h = graycoprops(graycomatrix(threshold_image),'Homogeneity');

   global H;
  H = h.Homogeneity;
 
 
c = graycoprops(graycomatrix(threshold_image),'Contrast');
  global C;
  C = c.Contrast;
  
  
en = graycoprops(graycomatrix(threshold_image),'Energy');
  global EN;
  EN = en.Energy;
 

co = graycoprops(graycomatrix(threshold_image),'Correlation');
global CO;
  CO = co.Correlation;


I2 = im2double(threshold_image);
global SK;
SK = skewness(I2(:));


img1 = double(threshold_image(:));
ima1 = max(img1(:));
imi1 = min(img1(:));
ims1 = std(img1(:));
global SNR;
SNR = 20*log10((ima1-imi1)./ims1);


[r,c]=size(threshold_image);
global Mean;
Mean = sum(threshold_image(:))/(r*c);


totdiff=(threshold_image-Mean).^2;
totsum=sum(totdiff(:));
nele=(r*c)-1;
global VR;
VR=totsum/nele;


global SD;
SD=sqrt(VR);


UL = unique(threshold_image); 
global L;
L = numel(UL);     



  
  k1=regionprops(threshold_image,{'Area','Perimeter','MajorAxisLength','MinorAxisLength','Eccentricity','Orientation'});
  global area;
  area = k1.Area;
  
  global perimeter;
  perimeter = k1.Perimeter;
   
  global majoraxis;
  majoraxis = k1.MajorAxisLength;
   
  global minoraxis;
  minoraxis = k1.MinorAxisLength;
 
 global eccentricity; 
 eccentricity = k1.Eccentricity;
   
  global orientation;
  orientation = k1.Orientation;
   
   
T1 = table(E,GL,SK,SNR,C,EN,Mean,VR,SD);
T1.Properties.VariableNames = {'entropy' 'gray_level' 'skewness' 'SNR' 'contrast' 'energy' 'mean' 'variance'	'SD'};
T = table(E,GL,SK,H,C,EN,CO,Mean,VR,SD,majoraxis);
T.Properties.VariableNames = {'entropy' 'gray_level' 'skewness' 'homogenity' 'contrast' 'energy' 'correlation' 'mean' 'variance' 'SD' 'majoraxislength'};
folder = 'H:\Final Project\outputsheet';
if ~exist(folder, 'dir')
    mkdir(folder);
end
folder = 'H:\Final Project\outputsheet';
baseFileName = strcat(sheetname1,'status','.xlsx');
baseFileName1 = strcat(sheetname1,'.xlsx');
filename = fullfile(folder, baseFileName);
filename1 = fullfile(folder, baseFileName1);
writetable(T,filename,'Sheet',1,'Range','A1')
writetable(T1,filename1,'Sheet',1,'Range','A1')



function pushbutton2_Callback(hObject, eventdata, handles)
global sheetname2;
global b;
threshold_value = graythresh(b);
threshold_image = im2bw(b,threshold_value);  
axes(handles.axes2);
imshow(threshold_image);


global E;
E = entropy(threshold_image);


global GL;
GL = mean( double( reshape( threshold_image, [], 1 ) ) );

%5.Homogeneity
  h = graycoprops(graycomatrix(threshold_image),'Homogeneity');

   global H;
  H = h.Homogeneity;
  
 
c = graycoprops(graycomatrix(threshold_image),'Contrast');
  global C;
  C = c.Contrast;
 
  
en = graycoprops(graycomatrix(threshold_image),'Energy');
  global EN;
  EN = en.Energy;
  

co = graycoprops(graycomatrix(threshold_image),'Correlation');
global CO;
  CO = co.Correlation;
  

I2 = im2double(threshold_image);
global SK;
SK = skewness(I2(:));


img1 = double(threshold_image(:));
ima1 = max(img1(:));
imi1 = min(img1(:));
ims1 = std(img1(:));
global SNR;
SNR = 20*log10((ima1-imi1)./ims1);


[r,c]=size(threshold_image);
global Mean;
Mean = sum(threshold_image(:))/(r*c);


totdiff=(threshold_image-Mean).^2;
totsum=sum(totdiff(:));
nele=(r*c)-1;
global VR;
VR=totsum/nele;


global SD;
SD=sqrt(VR);


UL = unique(threshold_image); 
global L;
L = numel(UL);     



  
  k1=regionprops(threshold_image,{'Area','Perimeter','MajorAxisLength','MinorAxisLength','Eccentricity','Orientation'});
  global area;
  area = k1.Area;
  
  global perimeter;
  perimeter = k1.Perimeter;
  
  global majoraxis;
  majoraxis = k1.MajorAxisLength;
 
  global minoraxis;
  minoraxis = k1.MinorAxisLength;

 global eccentricity; 
 eccentricity = k1.Eccentricity;
  
  global orientation;
  orientation = k1.Orientation;
  
   
   T1 = table(E,GL,SK,SNR,C,EN,Mean,VR,SD);
T1.Properties.VariableNames = {'entropy' 'gray_level' 'skewness' 'SNR' 'contrast' 'energy' 'mean' 'variance'	'SD'};
T = table(E,GL,SK,H,C,EN,CO,Mean,VR,SD,majoraxis);
T.Properties.VariableNames = {'entropy' 'gray_level' 'skewness' 'homogenity' 'contrast' 'energy' 'correlation' 'mean' 'variance' 'SD' 'majoraxislength'};
folder = 'H:\Final Project\outputsheet';
if ~exist(folder, 'dir')
    mkdir(folder);
end
folder = 'H:\Final Project\outputsheet';
baseFileName = strcat(sheetname2,'status','.xlsx');
baseFileName1 = strcat(sheetname2,'.xlsx');
filename = fullfile(folder, baseFileName);
filename1 = fullfile(folder, baseFileName1);
writetable(T,filename,'Sheet',1,'Range','A1')
writetable(T1,filename1,'Sheet',1,'Range','A1')



function pushbutton3_Callback(hObject, eventdata, handles)
global sheetname3;
global c;
threshold_value = graythresh(c);
threshold_image = im2bw(c,threshold_value);  
axes(handles.axes3);
imshow(threshold_image);


global E;
E = entropy(threshold_image);


global GL;
GL = mean( double( reshape( threshold_image, [], 1 ) ) );

%5.Homogeneity
  h = graycoprops(graycomatrix(threshold_image),'Homogeneity');

   global H;
  H = h.Homogeneity;
  
 
c = graycoprops(graycomatrix(threshold_image),'Contrast');
  global C;
  C = c.Contrast;
 
  
en = graycoprops(graycomatrix(threshold_image),'Energy');
  global EN;
  EN = en.Energy;
  

co = graycoprops(graycomatrix(threshold_image),'Correlation');
global CO;
  CO = co.Correlation;
  

I2 = im2double(threshold_image);
global SK;
SK = skewness(I2(:));


img1 = double(threshold_image(:));
ima1 = max(img1(:));
imi1 = min(img1(:));
ims1 = std(img1(:));
global SNR;
SNR = 20*log10((ima1-imi1)./ims1);


[r,c]=size(threshold_image);
global Mean;
Mean = sum(threshold_image(:))/(r*c);


totdiff=(threshold_image-Mean).^2;
totsum=sum(totdiff(:));
nele=(r*c)-1;
global VR;
VR=totsum/nele;


global SD;
SD=sqrt(VR);


UL = unique(threshold_image); 
global L;
L = numel(UL);     



  
  k1=regionprops(threshold_image,{'Area','Perimeter','MajorAxisLength','MinorAxisLength','Eccentricity','Orientation'});
  global area;
  area = k1.Area;
  
  global perimeter;
  perimeter = k1.Perimeter;
  
  global majoraxis;
  majoraxis = k1.MajorAxisLength;
 
  global minoraxis;
  minoraxis = k1.MinorAxisLength;

 global eccentricity; 
 eccentricity = k1.Eccentricity;
  
  global orientation;
  orientation = k1.Orientation;
  
   
   T1 = table(E,GL,SK,SNR,C,EN,Mean,VR,SD);
T1.Properties.VariableNames = {'entropy' 'gray_level' 'skewness' 'SNR' 'contrast' 'energy' 'mean' 'variance'	'SD'};
T = table(E,GL,SK,H,C,EN,CO,Mean,VR,SD,majoraxis);
T.Properties.VariableNames = {'entropy' 'gray_level' 'skewness' 'homogenity' 'contrast' 'energy' 'correlation' 'mean' 'variance' 'SD' 'majoraxislength'};
folder = 'H:\Final Project\outputsheet';
if ~exist(folder, 'dir')
    mkdir(folder);
end
folder = 'H:\Final Project\outputsheet';
baseFileName = strcat(sheetname3,'status','.xlsx');
baseFileName1 = strcat(sheetname3,'.xlsx');
filename = fullfile(folder, baseFileName);
filename1 = fullfile(folder, baseFileName1);
writetable(T,filename,'Sheet',1,'Range','A1')
writetable(T1,filename1,'Sheet',1,'Range','A1')


function pushbutton5_Callback(hObject, eventdata, handles)

  gui_demo_c;
