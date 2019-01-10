function [xNorth, yEast, zDown] = NEDConversion()
wgs84InFeet = wgs84Ellipsoid('ft');
[xNorth, yEast, zDown] = geodetic2ned(41.0120278, 83.6686111,812.8,...
    42.2124167, 83.3533889, 0,  wgs84InFeet);
    
end