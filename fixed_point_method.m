function result = fixed_point_method(initial_guess,epsilon,max_iter,lambda_function)
%FIXED_POINT_METHOD Summary of this function goes here
%   Detailed explanation goes here
    k = 2;    
    x(1)=initial_guess;
    x(2)=lambda_function(x(1));
    while abs(x(k+1)-x(k)) < epsilon && k <= max_iter
        x(k+1) = lambda_function(x(k));
        if abs(lambda_function(x(k+1)-x(k+1))) < epsilon
            break;
        end
        k = k+1;
    end
    result = x(k);
end

