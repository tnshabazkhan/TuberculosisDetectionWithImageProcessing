clc;
    clear all;
    close all;
    
%srcfiles = dir('C:\Users\roopatejas\Documents\MATLAB\features\Dataset\t1.png');
srcfiles = dir('H:\Final Project\confirmed normal xray\nc10.png');
for i = 1 : length(srcfiles)
 % filename = strcat('C:\Users\roopatejas\Documents\MATLAB\features\Dataset\',srcfiles(i).name);
  filename = strcat('H:\Final Project\confirmed normal xray\',srcfiles(i).name);
  I = imread(filename);
  
  figure, imshow(I);
   % G=rgb2gray(I);
  
  RS=imresize(I,[426 354]);
   
  
  h=fspecial('gaussian');
 
  blurredimage=imfilter(RS,h);
  imshow(blurredimage);
  
  mask1=roipoly(blurredimage);
  mask2=immultiply(mask1,mask1);
  
  figure,imshow(mask2);
  
end