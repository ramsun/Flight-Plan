function [Range, Endurance, VTmin,Tmin] = RangeEnduranceCalc()

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

%calculates miminum thrust velocity and min thrust
VTmin = ((4*Wfull^2)/(p10000^2 * S^2 * b^2/S * e * CD0))^(0.25);
Tmin = 2*Wfull * sqrt(CD0/(pi * b^2/S * e));

%calculates Lift and Drag Coefficients at a particular velocity
CL = 2*Wfull/(p10000 * VTmin^2 * S);
CD = CD0 + CL^2/(pi * b^2/S * e);

%Calculates Range and Endurance of plane
Range = 2/c * sqrt(2/(p10000*S)) * CL^(0.5)/CD *...
    (Wfull^(0.5) - Wempty^(0.5));
Endurance = 1/c * CL/CD * log(Wfull/Wempty);

end


