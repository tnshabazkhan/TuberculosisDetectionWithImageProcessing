load('fulltrainedclassifier');
T2 = readtable("H:\Final Project\test_data1.xlsx");
yfit = trainedClassifier.predictFcn(T2);
display(yfit);