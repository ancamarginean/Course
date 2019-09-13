

function fitness = fitness_kp_binary_multi(x)

% This function computes the fitness value for the 0-1 multiobjective knapsack problem
% x: The current chromosome

% Objective: minimize the (-1)*weight of the knapsack

global items;
global max_capacity;

overall_weight = sum(x*items(:,1));

if overall_weight > max_capacity
    fitness(:, 1) = 0; 
    fitness(:, 2)= 0;
    
else
    fitness(:, 1) = -1*sum(x*items(:,2)); 
    fitness(:, 2) = sum(x);
end