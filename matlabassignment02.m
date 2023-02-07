dt = 0.5;
ti = 0;
tn = 0;
tf = 5;
i = 1;
n = int16(tf/dt);
tvals = zeros(n,1);
xpos = zeros(n,1);
ypos = zeros(n,1);

while tn<=tf
    xpos(i) = xfunc(tn);
    ypos(i) = yfunc(tn);
    tvals(i) = tn;
    tn = tn + dt;
    i = i + 1;
end

figure
plot(xpos,ypos);
hold on
scatter(xpos,ypos,"filled");
title('Particle Trajectory Taken in 0.5 Second Intervals');
xlabel('x position [units]');
ylabel('y position [units]');
hold off
legend('Path','Intervals');

function x = xfunc(t)
    x = 5.0 + (0.12*t^2);
end
function y = yfunc(t)
    y = t^3;
end