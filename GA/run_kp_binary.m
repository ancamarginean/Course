global items;

options = optimoptions('ga', 'PopulationType', 'bitstring', 'Display', 'diagnose')

x = ga(@fitness_kp_binary, size(items, 1),[],[],[],[],[],[],[], options)