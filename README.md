# MATH_5001

# RUN
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
	fprintf(fileID,"#### e = %e ####\n",e)
	fprintf(fileID,"%e \n",bisection_method(-1,1,e,lambda_function))
	fclose(fileID);
end
```

#Q3

#Q4