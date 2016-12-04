clear;
clc;
close all;
candidates = [];
fits = [];
for i=1:10
   [f,c] = genetic_solver(); 
   fits = [fits f];
   candidates = [candidates; c];
end

[V,I] = min(fits);
sprintf('the min value %f with %f,%f and the average is %f',V,candidates(I,:),mean(fits))