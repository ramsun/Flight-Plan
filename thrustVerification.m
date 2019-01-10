function [T] = thrustVerification()

throttle = 1;
%density values (slugs/ft^3)
p10000 = 0.00175;
pS = 0.002377;

Tmax = 6250; %in lbs

T = throttle * (p10000/pS)^(0.6) * (2*Tmax);


end