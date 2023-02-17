dt = 0.5;
ti = 0;
tf = 5;
tvals = zeros(tf/dt,1);
xpos = 




function x = xfunc(t)
    x = 5.0 + (0.12*t^2);
end
function y = yfunc(t)
    y = t^3;
end