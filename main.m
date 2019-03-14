%Live file having matlab solution.
clc; close all; clear;

fprintf("Calling the constraints for problem 1\n");

[f,A,b,Aeq,beq,lb,ub] = lpp();

[X,FVAL] = linprog(f,A,b,Aeq,beq,lb,ub);

fprintf("\nDistance travelled by plane 1 : " + X(1)*1000 + "km");
fprintf("\nDistance travelled by plane 2 : " + X(2)*1000 + "km");
fprintf("\nDistance travelled by plane 3 : " + X(3)*1000 + "km");
fprintf("\nTotal minimum operating cost is : $" + FVAL*1000);

y = sum(X);

fprintf("\nTotal distance travelled by all the planes is "+y*1000+"km\n");
fprintf("\n\nNow calling the constraints for problem 2\n");

options = optimoptions(@fmincon,'Algorithm','sqp');

x0 = [1,1,1];

[X1,VAL] = fmincon(@objfun,x0,[],[],[],[],[0 0 0],[],@(x) confuneq(x,y),options);

fprintf("\nNumber of airports used by plane 1 : " + X1(1));
fprintf("\nNumber of airports used by plane 2 : " + X1(2));
fprintf("\nNumber of airports used by plane 3 : " + X1(3)+ "\n");
