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

d2r_c   = (1/m_c)*(-m_c*r_c*dtheta^2 + k*(r_c-L) - m_c*g*cos(theta) - F_c);
d2theta = (1/(J_c+J_p+m_c*r_c^2+m_p*L^2))*(2*dr_c*dtheta*m_c*r_c + m_p*g*L*sin(theta+beta) + m_c*g*r_c*sin(theta));

%d2r_c    = (m_c*r_c*dtheta^2 + F_c + k - g*m_c + g*m_c*cos(theta))/m_c;
%d2theta  = -(2*dr_c*dtheta*m_c*r_c + L*g*m_p*sin(beta + theta) + (L^2*dtheta^2*m_p*sin(2*theta))/2 + g*m_c*r_c*sin(theta) - (L^2*dtheta^2*m_p*sin(2*beta + 2*theta))/2)/(J_c + J_p + L^2*m_p + m_c*r_c^2 - (L^2*m_p*cos(2*theta))/2 + (L^2*m_p*cos(2*beta + 2*theta))/2); 

dX      = [dr_c; dtheta; d2r_c; d2theta];
end