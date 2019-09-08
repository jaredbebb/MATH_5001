function x = secant_method(initial_guess1, initial_guess2, error, max_iter, lambda_function)
%SECANT METHOD Summary of this function goes here
%   Detailed explanation goes here
x(1) = initial_guess1;
x(2) = initial_guess2;
k = 2;

while k <= max_iter && abs(x(k)) >= error
    x(k+1) = x(k) - ( lambda_function(x(k)) * (x(k) - (x(k-1))) ) / ...
            ( lambda_function(x(k)) - lambda_function(x(k-1)) );
    k = k+1;
end