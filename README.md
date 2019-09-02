# MATH_5001

# RUN
## BISECTION METHOD

### set anonymous functions
lambda_function = @(x) x.^2 + x;
lambda_function = @(x) atan(x);

### Console
bisection_method(-1,1,0.01,lambda_function)

### Print to file
fileID = fopen('out.txt','a+');
fprintf(fileID,"%f\n",bisection_method(-1,1,0.01,lambda_function))
fclose(fileID);