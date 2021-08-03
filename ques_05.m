[X, Y] = meshgrid(1:10, 1:100);

Z = .56.*cos(X.*Y);

surf(X, Y, Z)

