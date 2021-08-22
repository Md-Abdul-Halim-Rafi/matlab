syms x1 x2 x3 x4

eqn1 = 2*x1 + x2 + x3 - x4 == 12;
eqn2 = x1 + 5*x2 - 5*x3 + 6*x4 == 35;
eqn3 = - 7*x1 + 3*x2 - 7*x3 - 5*x4 == 7;
eqn4 = x1 - 5*x2 + 2*x3 + 7*x4 == 21;

[A, B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4], [x1, x2, x3, x4]);
X = vpa(linsolve(A, B), 4);
