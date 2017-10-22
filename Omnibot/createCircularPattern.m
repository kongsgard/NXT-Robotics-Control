function [ x, y ] = createCircularPattern( radius, center, resolution )
%CREATECIRCULARPATTERN Creates many points positioned in a circle
%   Creates a points in a circle with radius 'radius' and center in x =
%   center(1) and y = center(2)
%   The points always starts in [x(1) y(1)] = [0 0], and iterates in a
%   counter-clockwise direction.

theta = -pi/2:2*pi/resolution:3/2*pi;
x = radius * cos(theta) + center(1);
y = radius * sin(theta) + center(2);

end


