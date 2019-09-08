# MATH_5001

# HW 1

## BISECTION METHOD

### set anonymous functions
```
lambda_function = @(x) x.^2 + x;
```
```
lambda_function = @(x) atan(x);
```

### Console
```
bisection_method(-1,1,0.01,lambda_function)
```

### Print to file
```
fileID = fopen('out.txt','a+');
fprintf(fileID,"%f\n",bisection_method(-1,1,0.01,lambda_function))
fclose(fileID);
```

#Q1

#Q2
```
format long
lambda_function = @(x) atan(x);
for e = [10^-2,10^-4, 10^-8, 10^-16, 10^-32, 10^-132]
	fileID = fopen('q2.txt','a+');
	fprintf(fileID,"\n#### e = %1.3e ####\n",e)
	fprintf(fileID,"%1.3e \n",bisection_method(-4.9,5.1,e,lambda_function))
	fclose(fileID);
end
```

#Q3
```
format short
fileID = fopen('q3.txt','a+');
initial_guess = -0.1;
epsilon = 0.00001;
epsilon_f = 10^(-6);
lambda_function = @(x) (x/2)+(1/x);
max_iter = 10;
result = fixed_point_method(initial_guess,epsilon,epsilon_f,max_iter,lambda_function)
fprintf(fileID,"%1.3e \n",result); 


```

#Q4