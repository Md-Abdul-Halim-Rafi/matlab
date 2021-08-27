function [grad] = findGrad(x, y)

    % FINDGRAD findGrad(x, y)
    % it takes two arguments as functional point
    % ex: findGrad(1, 1)
    %
    % return gradient of function
    %   f(x) = x^2 + y^2 - 2.*x.*y + 4
    
    f = x^2 + y^2 - 2.*x.*y + 4;
    grad = gradient(f);
    
end