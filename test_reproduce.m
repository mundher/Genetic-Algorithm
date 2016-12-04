parents = [1 2;3 4;5 6];
fits = [0.4 0.4 0.2];
res = reproduce(parents,fits,1000);
histogram(int32(res),6)