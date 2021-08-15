a = [10 -1 2 0; -1 11 -1 3; 2 -1 10 -1; 0 3 -1 8];
b = [6; 25; -11; 15];
n = length(b); % Number of equations/variables

ab = [a b];
tol = 0.00001;
iter_limit = 100;

x = zeros(n, 1); % Initial guess (0, 0, 0, 0)
x_new = zeros(n, 1);

for iter = 1:iter_limit
    
    convergence = 0;
    for i = 1:n
        
        x = x_new;
        sum = 0;
        for j = 1:n
            
            if j ~= i
                sum = sum + a(i,j) .* x (j);
            end
        end
            
        x_new(i) = (b(i) - sum) / a(i,i);
            
        if abs(x_new(i) - x(i)) < tol
            convergence = 1;
        end
    end
    
    if convergence
        break;
    end
end

disp('Gauss Seidal Solution: ')
x
fprintf('Iterations took : %d\n', iter)