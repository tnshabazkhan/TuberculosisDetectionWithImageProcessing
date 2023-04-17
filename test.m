
T1 = readtable("H:\Final Project\Results\severitydata.xlsx");
[trainedClassifier, validationAccuracy] = updatedtrainClassifier(T1);
filename=('H:\Final Project\severitytrainedclassifier');
save (filename, 'trainedClassifier', 'validationAccuracy');

