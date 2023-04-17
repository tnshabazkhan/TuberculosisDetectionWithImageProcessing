srcfiles = dir('H:\DataSet\ChinaSet_AllFiles\severity');
for i = 3 : length(srcfiles)
    filename = strcat('H:\DataSet\ChinaSet_AllFiles\severity\',srcfiles(i).name);
    image = imread(filename);
    RS=imresize(image,[426 354]);
    h=fspecial('gaussian');
    blurredimage=imfilter(RS,h);
    threshold_value = graythresh(blurredimage);
    threshold_image = im2bw(image,threshold_value);
    folder = 'H:\Final Project\trial3';
    baseFileName = strcat(srcfiles(i).name,'.png');
    file = fullfile(folder, baseFileName);
    imwrite(threshold_image, file);
end
