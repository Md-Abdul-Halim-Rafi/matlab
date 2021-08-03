year = (1930:10:2020);
pop = [249 277 316 350 431 539 689 833 1014 1203];

pol = polyfit(year, pop, 2);

f = polyval(pol,year);
hold on
plot(year,f)
hold on
plot(year,pop,'o')
legend('second order polynomial fit', 'data points') 
hold off