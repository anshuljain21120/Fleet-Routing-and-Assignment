% Problem 1
function [f,A,b,Aeq,beq,lb,ub] = lpp()
    f = [20 15 40];
    A = [-2 -1 -2;1 2 1;2 1 1];
    b = [-72 60 80];
    Aeq = [];
    beq = [];
    lb = [1 1 1];
    ub = [20 20 20];
end
