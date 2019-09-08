# MATH_5001

# HW 2


# Differentiate
```
syms x
f = log(x)
diff(f)
	1/x
```

# Q3
```
lambda_function = @(x) atan(x);
deriv_lambda_function = @(x) 1/(x^2 + 1);
error = 10^-10;
max_iter = 20;
for x = [0.5, 1, 1.3, 1.4, 1.35, 1.375, 1.3875, 1.39375, 1.390625, 1.3921875]
	fileID = fopen('q3.txt','a+');
	fprintf(fileID,"\n#### x = %f ####\n",x)
	fprintf(fileID,"%f \n",newtons_method(x, error, max_iter, lambda_function, deriv_lambda_function))
	fclose(fileID);
end
```

# Q4
```
lambda_function = @(x) atan(x);
error = 10^-10;
max_iter = 20;
a(:, :) = [0.5 1; 1 1.3; 1.4 1.5; 10 11]
for i=1: length(a)
	x1 = a(i,1);
	x2 = a(i,2);
	str_x1_s2 = strcat(num2str(x1),",",num2str(x2));
	fileID = fopen('q4.txt','a+');
	fprintf(fileID,"\n#### x = (%s) ####\n",str_x1_s2);
	fprintf(fileID,"%f \n",secant_method(x1, x2, error, max_iter, lambda_function));
	fclose(fileID);
end
```