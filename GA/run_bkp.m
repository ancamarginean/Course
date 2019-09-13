options = optimoptions('ga', 'Display', 'diagnose')

global items;

 x = ga(@fitness_bkp, size(items, 1),items(:, 1)',500,[],[],ones(1, size(items, 1)),20*ones(1, size(items, 1)),[],[1:size(items, 1)], options)
