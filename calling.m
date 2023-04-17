A=xlsread('combined_data.xlsx');
trainedClassifier, validationAccuracy= trainClassifier('combined_data.xlsx');