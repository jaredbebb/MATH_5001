function x = bisection_method(e,a,b)
%This fucntion is the bisection method
% INPUT: parameter e is the error tolerance
% OUTPUT: Either a point x that is within e of a solution z
% or "failure to find a sign change"

x(1) = 0;
a(1) =a;
b(1) =b;
k = 1;
while (abs((b(k)-a(k))/2) >= e)
    fprintf('while %f \n',abs((b(k)-a(k))/2))
    x(k) = (a(k)+b(k))/2;
    fprintf('xk %f \n',x(k))
    fprintf('ak %f \n',a(k))
    fprintf('bk %f \n',b(k))
    fprintf('k %f \n',k)
    % disp("next")
    if (x(k) * a(k) > 0.0)
        disp("if")
        a(k+1) = x(k);
        b(k+1) = b(k);
        k = k+1;
        fprintf('cond1 k %f \n',k)
        % disp(a(k) * b(k))
    else
        disp("else")
        b(k+1) = x(k);
        a(k+1) = a(k);
        k = k+1;
       
    disp("setting k")
    %fprintf('value of a: %d\n', a);
    %fprintf('value of b: %d\n', b);
    %fprintf('value of x: %d\n', x);
    end
end