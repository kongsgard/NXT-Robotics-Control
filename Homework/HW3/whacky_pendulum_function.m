function [dX] = whacky_pendulum_function(t, X)

r_c     = X(1);
theta   = X(2);
dr_c    = X(3);
dtheta  = X(4);

m_p     = 0.5;
m_c     = 0.5;
L       = 0.5;
J_c     = 0.01;
J_p     = 0.01;
k       = 10;
beta    = 40*pi/180; % (rad)
g       = 9.81;

F_c     = 0;
%F_c     = -2*dr_c;

d2r_c = (F_c + (k*(2*L - 2*r_c))/2 + L*g*m_c*cos(theta))/m_c;
d2theta = -(L*g*m_p*sin(beta + theta) + L*g*m_c*r_c*sin(theta))/(J_c + J_p);

dX      = [dr_c; dtheta; d2r_c; d2theta];
end