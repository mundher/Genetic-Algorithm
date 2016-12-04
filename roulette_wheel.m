function sample = roulette_wheel(cs, parents)
    idx = sum(cs < rand())+1; % sum is at least greater than rand
    sample = parents(idx,:);
end