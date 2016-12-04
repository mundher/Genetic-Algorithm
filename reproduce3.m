function offspring = reproduce3(parents,fits,pop_size) 
    [B,I] = sort(fits);
    parents = parents(I,:);    
    flip_fits = 1./(abs(fits)+0.00001);                 % we minimize
    fits_norm = flip_fits/sum(flip_fits);               % normalize to 1
    csum = cumsum(fits_norm);                             % accumlate sum
    offspring = zeros((pop_size),2);
    half_pop = pop_size/2;        
    for i=1:half_pop                     % get two parents randomly and combine them into new chromo
        idx = sum(csum < rand())+1;
        idx = min(idx,pop_size-1);
        p1 = parents(idx,:);
        p2 = parents(idx+1,:);        
        [offspring(i,:), offspring(i + half_pop,:)] = crossover(p1,p2);
    end    
    offspring = mutate(offspring);
end