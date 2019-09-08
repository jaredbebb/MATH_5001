function x = newtons_method(initial_guess, error, max_iter, lambda_function, deriv_lambda_function)
%NEWTONS_METHOD Summary of this function goes here
%   Detailed explanation goes here
x(1) = initial_guess;
k = 1;
h = 1;

while abs(h) >= error && k < max_iter
    h = lambda_function(x(k))/deriv_lambda_function(x(k));
    x(k+1) = x(k)-h;
    k = k+1;
end

