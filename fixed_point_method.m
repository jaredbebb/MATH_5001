function result = fixed_point_method(x,e,g)
%FIXED_POINT_METHOD Summary of this function goes here
%   Detailed explanation goes here
    k = 1;    
    x(1)=x;
    while abs(x(k+1)-x(k)) < e && k <= M -1
        x(k+1) = g(x(k));
        if abs(g(x(k+1)-x(k+1))) < e
        end
        k = k+1;
    end
    result = x(k+1);
end

