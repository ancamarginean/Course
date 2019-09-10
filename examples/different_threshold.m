%after export from Classification Learner APP
%save  trainModelLogisticFraud.mat trainedModelLogistic


%obtain classification
classes = trainedModelLogistic.predictFcn(fraud(1:10,:))
%obtain scores
probabilitiesfind = predict(trainedModelLogistic.GeneralizedLinearModel, fraud(1:100, :))

threshold = 0.7
predicted = probabilities>threshold;
actual = cell2mat(table2array(fraud(:, end)))


find(predicted <1)
%.26
TPR = sum(actual =='1' & predicted == 1)./sum(actual =='1')
%.0.99
FPR = sum(actual =='0' & predicted ~= 0)./sum(actual =='0')

threshold = 0.9
predicted = probabilities>threshold;
TPR = sum(actual(:,1) =='1' & predicted == 1)./sum(actual =='1')
