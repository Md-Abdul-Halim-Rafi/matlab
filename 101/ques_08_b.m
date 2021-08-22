year = (1930:10:2020);
pop = [249 277 316 350 431 539 689 833 1014 1203];
predict_year = 1995;

linear_int = polyfit(year, pop, 1);
sp_int = spline(year, pop, year);
f = polyval(linear_sp,year);

Linear = interp1(year, pop, predict_year);
Spline = spline(year, pop, predict_year);
resutl = table(Linear, Spline);

hold on
plot(year,f)
hold on
plot(year, sp_int, year, pop, 'o')
title('Data fitting')
legend('linear', 'spline', 'data points') 
hold off
