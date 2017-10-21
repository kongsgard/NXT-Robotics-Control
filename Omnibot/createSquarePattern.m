function [ x, y ] = createSquarePattern( sideLength, resolution )
%CREATESQUARETPATTERN 
%   Creates a bunch of x and y points that are placed in a square pattern
%   with side length 'sideLength' and number of points along each side to
%   be equal to resolution.
%   The direction is defined to start in lower left, and iterate in a
%   counter-clockwise direction.

x1 = linspace(0, sideLength, resolution);
y1 = zeros(1, resolution);

x2 = x1(end) * ones(1, resolution); 
y2 = linspace(0, sideLength, resolution);

x3 = fliplr(x1);
y3 = y2(end) * ones(1, resolution);

x4 = zeros(1, resolution);
y4 = fliplr(y2);

x = [x1 x2 x3 x4];
y = [y1 y2 y3 y4];

end

