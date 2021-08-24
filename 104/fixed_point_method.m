clc;
syms x;

tol = 10^-5;
x0 = 2;

f(x) = x^3 - x + exp(x);
g(x) = (x - exp(x))^(1/3);

dg(x) = diff(g);

if abs(dg(x0)) < 1
    disp('Form of g(x) is right')
else
    disp('Form of g(x) is wrong')
end

i = 1;
it = zeros();
c = zeros();

c(i) = x0;
it(i) = i;

i = i + 1;
it(i) = i;
c(i) = g(c(i - 1));

while abs(double(c(i) - c(i - 1))) > tol
    
    fprintf('%f %f\n', it(i), abs(double(c(i) - c(i - 1))))
    
    i = i + 1;
    it(i) = i;
    
    c(i) = g(c(i - 1));
    
end


% table(it', round(c', 5), 'VariableNames', {'Iteration', 'c'})


