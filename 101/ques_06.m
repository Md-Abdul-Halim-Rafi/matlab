function [grad] = ques_06(x, y)
    
    f = x^2 + y^2 - 2.*x.*y + 4;
    grad = gradient(f);
    
end