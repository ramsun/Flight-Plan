function [t, delY] = W5Calc()
%constants provided
V =   350;
angle =  3*pi/180;
Vclimb = -18.3176;

%calculation of time
delZ = -10000-394.63;
t = delZ / Vclimb;

%calculation of change in y coordinate
Vhor = V * cos(angle);
delY = t * Vhor;

end