function x = bisection_method(a,b,epsilon,lambda_function)
    %This fucntion is the bisection method
    % INPUT: parameter e is the error tolerance
    % OUTPUT: Either a point x that is within e of a solution z
    % or "failure to find a sign change"
    x(1) = 0;
    a(1) =a;
    b(1) =b;
    k = 1;

    while ((b(k)-a(k))/2 >= epsilon)
        fprintf('\n')
        x(k) = (a(k)+b(k))/2;
        fprintf('xk %f \n',x(k))
        fprintf('ak %f \n',a(k))
        fprintf('bk %f \n',b(k))
        fprintf('k %f \n',k)
        if (lambda_function(x(k)) * lambda_function(a(k))) > 0.0
            a(k+1) = x(k);
            b(k+1) = b(k);
            fprintf('cond1 \n')
        else
            b(k+1) = x(k);
            a(k+1) = a(k);
            fprintf('else \n')
        end
        k = k+1;        
    end
end