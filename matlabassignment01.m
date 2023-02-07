f = 0.2;
phi = 0.0;
t = 0;
val = zeros(51,1);
T = zeros(51,1);
Amp = 10.0;

for i=1:51
    val(i) = myfunc(Amp,f,phi,t);
    T(i) = t;
    t = t+1;
end

title('Position vs. Time for Simple Harmonic Oscillator');
xlabel('Time [seconds]');
ylabel('Position [units]');
plot(T,val);


function x = myfunc(A,f,phi,t)
    x = A*sin(pi*2*f*t + phi);
end
