a = [1 .5 .2];
b = [1 .8 .3];
x = [1 4 2];

y = dftr(b, a, x);
plot(0:size(y,1)-1,y);