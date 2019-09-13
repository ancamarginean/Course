function fitness = fitness_bkp(x)

% This function computes the fitness value for the bounded single objective knapsack problem
% x: The current chromosome

% 
global items;
    fitness = 1*sum(x*items(:,2));
end

