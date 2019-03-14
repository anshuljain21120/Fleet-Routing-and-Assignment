%Constraints of Problem 2
function [c,ceq] = confuneq(x,y)
    c = [];
    ceq = 4*(x(1)+x(2)+x(3))- y;   
end