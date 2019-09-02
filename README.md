# MATH_5001

# RUN
## BISECTION METHOD

### set anonymous functions
my_fun = @(x) x.^2 + x;
my_fun = @(x) atan(x);

### Console
bisection_method(-1,1,0.01,my_fun)

### Print to file
fileID = fopen('out.txt','a+');
fprintf(fileID,"%f\n",bisection_method(-1,1,0.01,my_fun))
fclose(fileID);