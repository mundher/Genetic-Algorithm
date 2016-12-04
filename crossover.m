function [offspring1,offspring2] = crossover(p1,p2)
cross_prob =0.9;
if rand()>cross_prob %no crossover
        offspring1 = p1;
        offspring2 = p2;
else          
    children = [p1;p2];
    cross_rand = randperm(2);
    offspring1 = [children(cross_rand(1),1) children(cross_rand(2),2)];     % crossover 
    offspring2 = [children(cross_rand(2),1) children(cross_rand(1),2)];
end
end