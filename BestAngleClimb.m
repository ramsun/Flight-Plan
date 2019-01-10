function [VTmin, angle] = BestAngleClimb()

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

VTmin = ((4*Wfull^2)/(pa^2 * S^2 * b^2/S * e * CD0))^(0.25);
T = ((pa/pS)^0.6) *(Tmax*2);
DVTmin=0.5 * pa * VTmin^2 * CD0 + 2*Wfull^2/(pa * VTmin^2 * S * pi *...
    b^2/S*e);
angle = T/Wfull -DVTmin/Wfull;

end