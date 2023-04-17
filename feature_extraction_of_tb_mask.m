clc ;
clear all;
close all;
 

%srcfiles = dir('C:\Users\roopatejas\Documents\MATLAB\features\TB-Masked\tbm*.png');
srcfiles = dir('H:\Final Project\maskedtb');
for i = 3 : length(srcfiles)
  filename = strcat('H:\Final Project\maskedtb\',srcfiles(i).name);
  %filename = strcat('C:\Users\roopatejas\Documents\MATLAB\features\TB-Masked\',srcfiles(i).name);
  I = imread(filename);
  %figure,imshow(I);
 
%  I = imread('MS_1.png');
  I1= rgb2gray(I);
  figure, imshow(I1);
 
%  I = imread('MS_1.png');
  %1.Entropy
  e = entropy(I1);
  if i == 3
      E = e;
  else
    E = [E; e];
  end
  display(E);
  
  %2.Gray-level
  gl = mean( double( reshape( I1, [], 1 ) ) );
  if i == 3
      GL = gl;
  else
    GL = [GL; gl];
  end
  display(GL);
  
  %03.skewness
  I2 = im2double(I1);
  sk = skewness(I2(:));
  if i == 3
      SK = sk;
  else
    SK = [SK; sk];
  end
  display(SK);
 
  %4.SNR
  img1 = double(I1(:));
  ima1 = max(img1(:));
  imi1 = min(img1(:));
  ims1 = std(img1(:));
  snr = 20*log10((ima1-imi1)./ims1);
  if i == 3
      SNR = snr;
  else
    SNR = [SNR; snr];
  end
  display(SNR);
 
 
  %5.Homogeneity
  h = graycoprops(graycomatrix(I1),'Homogeneity');
  if i == 3
      H = h.Homogeneity;
  else
    H = [H; h.Homogeneity];
  end
  display(H);
  
  %6.Contrast
  c = graycoprops(graycomatrix(I1),'Contrast');
  if i == 3
      C = c.Contrast;
  else
      
    C = [C; c.Contrast];
  end
  display(C);
  
  %7.Energy
  en = graycoprops(graycomatrix(I1),'Energy');
  if i == 3
      EN = en.Energy;
  else
    EN = [EN; en.Energy];
  end
  display(EN);
  
  %8.Correlation
  co = graycoprops(graycomatrix(I1),'Correlation');
  if i == 3
      CO = co.Correlation;
  else
    CO = [CO; co.Correlation];
  end
  display(CO);
 
  %9.Mean
  [r,c]=size(I1);
  tmean = sum(I1(:))/(r*c);
  if i == 3
      TMean = tmean;
  else
    TMean = [TMean; tmean];
  end
  display(TMean);
  
  %10.Variance
  totdiff=(I1-tmean).^2;
  totsum=sum(totdiff(:));
  nele=(r*c)-1;
  vr=totsum/nele;
  if i == 3
      VR = vr;
  else
    VR = [VR; vr];
  end
  display(VR);
  
  %11.Standard Deviation
  sd=sqrt(vr);
  if i == 3
      SD = sd;
  else
    SD = [SD; sd];
  end
  display(SD);
 
  %12.Uniformity
  UL = unique(I1);          % Get all intensity levels
  l = numel(UL);            % Number of intensity levels
  if i == 3
      L = l;
  else
    L = [L; l];
  end
  display(L);
  
  %13.Area 14.Perimeter 15.MajorAxisLength 16.MinorAxisLength 17.Centroid
  %18.Eccentricity 19.Orientation 
  l1=im2bw(I,0);
 
  %figure,imshow(l1);
 
  label=bwlabel(l1);
 
  %figure,imshow(label==1);
  
  l2 = (label==2);
  k1=regionprops(l2,{'Area','Perimeter','MajorAxisLength','MinorAxisLength','Eccentricity','Orientation'});
  area = k1.Area;
  if i == 3
      Area = area;
  else
    Area = [Area; area];
  end
  display(Area);
  perimeter = k1.Perimeter;
  if i == 3
      Perimeter = perimeter;
  else
    Perimeter = [Perimeter; perimeter];
  end
  display(Perimeter);
  majoraxis = k1.MajorAxisLength;
  if i == 3
      Majoraxis = majoraxis;
  else
    Majoraxis = [Majoraxis; majoraxis];
  end
  display(Majoraxis);
  minoraxis = k1.MinorAxisLength;
  if i == 3
      Minoraxis = minoraxis;
  else
    Minoraxis = [Minoraxis; minoraxis];
  end
  display(Minoraxis);
%  centroid = k1.Centroid;
 % display(centroid);
  eccentricity = k1.Eccentricity;
  if i == 3
      Eccentricity = eccentricity;
  else
    Eccentricity = [Eccentricity; eccentricity];
  end
  display(Eccentricity);
  orientation = k1.Orientation;
  if i == 3
      Orientation = orientation;
  else
    Orientation = [Orientation; orientation];
  end
  display(Orientation);
  
  display('end');
  
  tb = 'YES';
  if i == 3
      TB = tb;
  else
    TB = [TB; tb];
  end
  display(TB);
  
  imgname = srcfiles(i).name;
  if i == 3
      Imgname = {imgname};
  else
    Imgname = [Imgname; imgname];
  end
  
  display(Imgname);
  
  slno = i - 2;
  if i == 3
      Slno = slno;
  else
    Slno = [Slno; slno];
  end
  display(Slno);
  
  
end

T = table(Slno,Imgname,E,GL,SK,SNR,H,C,EN,CO,TMean,VR,SD,L,Area,Perimeter,Majoraxis,Minoraxis,Eccentricity,Orientation,TB);
T.Properties.VariableNames = {'Sl_No' 'Image_Name' 'entropy' 'gray_level' 'skewness' 'SNR' 'homogenity'	'contrast' 'energy'	'correlation' 'mean' 'variance'	'SD' 'uniformity' 'area' 'perimeter' 'majoraxislength'	'minoraxislength' 'eccentricity' 'Orientation' 'TB_Presence'};
folder = 'H:\Final Project\Results';
if ~exist(folder, 'dir')
    mkdir(folder);
end
baseFileName = 'maskedtb.xlsx';
filename = fullfile(folder, baseFileName);

writetable(T,filename,'Sheet',1,'Range','A1')