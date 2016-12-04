function [best_fit_cost,best_candidate] = genetic_solver()
max_generation = 20;
pop_size = 10000;
candidates = -2.048 + (2.048 + 2.048)*rand(pop_size,2);
fits = fitness_evaluation(candidates(:,1),candidates(:,2));
[best_fit_cost, best_fit_idx] = min(fits);
best_candidate = candidates(best_fit_idx,:);
avg_lst = zeros(1,max_generation);
bst_lst = zeros(1,max_generation);
cand_lst = zeros(max_generation,2);
%sprintf('best fit is %f,%f with cost %f average= %f',best_candidate,best_fit_cost,mean(fits))
for g=1:max_generation
    candidates = reproduce3(candidates,fits,pop_size);
    fits = fitness_evaluation(candidates(:,1),candidates(:,2));   
    [best_fit_cost_c, best_fit_idx_c] = min(fits);
    if best_fit_cost_c < best_fit_cost
       best_fit_cost = best_fit_cost_c; 
       best_candidate = candidates(best_fit_idx_c,:);
    end
    %sprintf('%d best fit with fittnes value %f average= %f',g,best_fit_cost_c,best_candidate(1))
    avg_lst(g) = mean(fits);
    bst_lst(g) = best_fit_cost_c;    
    %cand_lst(g,:) = best_candidate;
    cand_lst(g,:) = candidates(best_fit_idx_c,:);
end
sprintf('solution is %f,%f',best_candidate)
sprintf('best fit with fittnes value %f average= %f',best_fit_cost,mean(fits))
figure,plot(1:max_generation,bst_lst,'b')
figure,plot(1:max_generation,cand_lst(:,1),'b')
hold on;
plot(1:max_generation,cand_lst(:,2),'r')