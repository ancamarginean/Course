function fitness = fitness_kp_binary(x)

% This function computes the fitness value for the 0-1 single objective knapsack problem
% x: The current chromosome

global items;
global max_capacity;

overall_weight = sum(x*items(:,1));

if overall_weight > max_capacity
    fitness = 0;
else
    fitness = -1*sum(x*items(:,2));
end