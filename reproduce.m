function offspring = reproduce(parents,fits,pop_size)    
    flip_fits = 1./(abs(fits)+0.00001);                 % we minimize
    fits_norm = flip_fits/sum(flip_fits);               % normalize to 1
    csum = cumsum(fits_norm);                             % accumlate sum
    offspring = zeros((pop_size),2);
    half_pop = pop_size/2;    
    for i=1:half_pop                     % get two parents randomly and combine them into new chromo
        p1 = roulette_wheel(csum,parents);	%1st chromo
        p2 = roulette_wheel(csum,parents);	%2nd chromo
        while p1(2) == p2(2)                 % in case the roulette_wheel choose the same parent
            p1 = roulette_wheel(csum,parents);
        end  
        [offspring(i,:), offspring(i + half_pop,:)] = crossover(p1,p2);
    end    
    offspring = mutate(offspring);
end