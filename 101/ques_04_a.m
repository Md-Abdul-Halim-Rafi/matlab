subplot(2, 2, 1)

x = linspace(0, 2*pi);
y = sin(x).^2;

plot(x, y, '-+k')
title('Subplot 1 : sin(x)^2')

subplot(2, 2, 2)

y2 = cos(x).^2;
plot(x, y2, '-o')
title('Subplot 2 : cos(x)^2')

subplot(2, 2, 3)

y3 = cos(2*x);
plot(x, y3, '-')
title('Subplot 1 : cos(2x)')
