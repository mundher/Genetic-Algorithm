function offspring = mutate(offspring)
    prob = 0.1;
    for i=1:size(offspring,1)
        r = rand();
       if  r < prob 
           varIdx = randi(2);
           offspring(i,varIdx) = -2.048 + (2.048 + 2.048)*rand();
           %m = offspring(i,varIdx) + -0.1 + (0.1 + 0.1)*rand();
%            factor = randi([0 2])-1;
%            m = offspring(i,varIdx) + 0.01*factor;
%            m = min(max(m,-2.048),2.048);
           %offspring(i,varIdx) = m;
       end
    end
end