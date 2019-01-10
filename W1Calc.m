function [t, x] = W1Calc()
%units in pounds
Wfull = 73000;
Wfuel = 28000;
Wempty = Wfull - Wfuel;
Tmax = 6250;
%fuel consumption rate (/sec)
c = 0.0001917;
%Span area (ft^2) and span (ft)
S = 950;
b = 75.5;
%Coefficients
CLMax = 2.8;
CL0 = 0.015;
CLa = 0.12;
CD0 = 0.015;
e = 0.95;
%density values (slugs/ft^3)
p10000 = 0.00175;
pS = 0.002377;
pa = (p10000+pS)/2;

u = 0.1;
g = 32.174; %ft/s^2

Vstall = sqrt((2*Wfull)/(pS*S*CLMax));
Vr = 1.2 * Vstall;
T = (pS/pS)^(0.6) * (2*Tmax);
L= 0.5 * pS * Vr^2 * CL0;
D = 0.5*pS*Vr^2*S*CD0 + (2*L^2)/(pS*Vr^2 * S * pi * b^2/S); 
Fbalance = T - D - u*(Wfull - L);

t = (Wfull/g) * Vr / Fbalance;
a = Vr/t;
x = 0.5 * a * t^2;
end






