function [tW3, tW4, tW5] = timeDubinsCalc()

VTmin = 548.02;
R = 1.6168 * 10^4;
disp1 = 0.5 * 2 * R * pi;
tW3 = disp1/VTmin;

W3 = [6.84*10^4, 2.2852*10^4];
W4 = [-4.1067 * 10^5, -1.2373*10^5];

disp2 = sqrt((W4(1)-W3(1))^2 + (W4(2)-W3(2))^2);
tW4 = disp2/VTmin;

disp3 = 1/3 * 2 * R * pi;
tW5 = disp3/VTmin;

end