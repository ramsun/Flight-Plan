function [Vclimb, t, delX] = W2Calc()
%calculation of Vclimb
VTmin =   504.6800;
BestAngle =  0.1409;
Vclimb = VTmin*sin(BestAngle);

%calculation of time
delZ = 10000-645.2;
t = delZ / Vclimb;

%calculation of change in x and y coordinates
Vhor = VTmin * cos(BestAngle);
delX = t * Vhor;

end