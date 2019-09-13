global items;

% options = optimoptions('gamultiobj', 'PopulationType', 'bitstring', 'Display', 'diagnose', 'PlotFcns', @gaplotpareto)
options = optimoptions('gamultiobj', 'PopulationType', 'bitstring', 'Mutation',{ @mutationuniform []}, 'PlotFcns', @gaplotpareto)

x = gamultiobj(@fitness_kp_binary_multi, size(items, 1),[],[],[],[],[],[],[], options);