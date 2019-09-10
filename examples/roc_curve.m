trainedModelLogistic = load("trainModelLogisticFraud");
model = trainedModelLogistic.trainedModelLogistic

fraud = readtable("creditcard.csv");
probabilities = predict(model.GeneralizedLinearModel, fraud);
actual = cell2mat(table2array(fraud(:, end)));

numTrials = 1000;
threshold = linspace(0,1, numTrials);
TPR = zeros(numTrials,1);
FPR = zeros(numTrials,1);
for i=1:numTrials
    predicted = probabilities<threshold(i);
    TPR(i,1) = sum(actual =='1' & predicted == 1)./sum(actual =='1');
    FPR(i,1) = sum(actual =='0' & predicted ~= 0)./sum(actual =='0');
end

plot(FPR, TPR, '-k')

%clear all