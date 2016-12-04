i = 1;
offspring = zeros(1,2);
p1 = [1 2];
p2 = [3 4];
children = [p1;p2];
cross_rand = randperm(2);
offspring(i,:) = [children(cross_rand(1),1) children(cross_rand(2),2)];     % crossover 
offspring(i*2,:) = [children(cross_rand(2),1) children(cross_rand(1),2)];