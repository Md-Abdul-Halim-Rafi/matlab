clc;
syms x;

f(x) = exp(x) - 2 - cos(exp(x) - 2);

a = 0.5;
b = 1.5;
tol = 0.00001;

if (f(a) * f(b)) < 1
    disp('Initial guesses are right')
else
    disp('Initial guesses are wrong')
end

i = 0;
c = zeros();
ll = zeros();
ul = zeros();
it = zeros();

while abs(f(a) - f(b)) > tol

    i = i + 1;
    it(i) = i;
    
    c(i) = (a + b) / 2;
    ll(i) = a;
    ul(i) = b;
    
    if (f(c(i)) * f (a)) < 0
        b = c(i);
    elseif (f(c(i)) * f (b)) < 0
        a = c(i);        
    end    
end

fc = abs(double(f(c)));

table(it', round(ll', 5), round(ul', 5), round(c', 5), round(fc', 5), 'VariableNames', {'Iteration', 'a', 'b', 'c', 'fc'})


