function c = fitness_evaluation(x1,x2)
    c = 100*(x1.^2-x2).^2 + (1-x1).^2;
end