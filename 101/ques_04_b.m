x = linspace(0, 2*pi);
y = sin(x).^2;

plot(x, y, '-+k')
hold on

y2 = cos(x).^2;
plot(x, y2, '-o')
hold on

y3 = cos(2*x);
plot(x, y3, 'd')
hold off