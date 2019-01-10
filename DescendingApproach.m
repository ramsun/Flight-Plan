function [Vclimb, T] = DescendingApproach()

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

%calculations for VClimg and thrust
angle = -3*pi/180; %rad
V = 350; %ft/s
Vclimb = V*sin(angle);
T =(Vclimb + (2*Wfull/(pa*V*S*pi*b^2/S*e)) + 1/(2*Wfull) * pa*V^3*S*CD0)...
    *Wfull/V;
end







