b=[1;1;1;1;2;2;1;1;2;2]


a=cell(100,1)
for i=1:100
    a(i)={rand(2,5)}
end

for i=1:100
    smaller = 0
    if a{i}(1,2)<a{i}(1,3) & a{i}(1,3)<a{i}(1,4)
            smaller = 1
        
    end
    b(i)=smaller
 end
 b=categorical(b)

numFeatures = 2;
numHiddenUnits = 20;
numClasses = 2;

layers = [ 
    sequenceInputLayer(numFeatures)
    lstmLayer(numHiddenUnits,'OutputMode','last')
    fullyConnectedLayer(numClasses)
    softmaxLayer
    classificationLayer];

options = trainingOptions('adam', ...
    'MiniBatchSize', 10,...
    'Shuffle', 'once',...
    'MaxEpochs',60, ...
    'GradientThreshold',2, ...
    'Verbose',0, ...
    'Plots','training-progress');

net = trainNetwork(a,b, layers,options);
