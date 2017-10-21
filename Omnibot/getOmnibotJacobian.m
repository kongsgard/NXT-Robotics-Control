function J = getOmnibotJacobian( phi_b )
%GETOMNIBOTJACOBIAN Outputs the Jacobian for an omnibot
%   This function takes robot body angle, phi_b, as an input and outputs
%   the 3x3 Jacobian for the omnibo.

rw = 0.032;             % (meters)
L  = 0.146;             % (meters) 
a  = (2*pi/3)*[-1 0 1]; % alpha angles, of wheels, wrt body frame

J_11 = sin(phi_b + a(1)) * (2 * rw / 3);
J_12 = sin(phi_b + a(2)) * (2 * rw / 3);
J_13 = sin(phi_b + a(3)) * (2 * rw / 3);
J_21 = -cos(phi_b + a(1)) * (2 * rw / 3);
J_22 = -cos(phi_b + a(2)) * (2 * rw / 3);
J_23 = -cos(phi_b + a(3)) * (2 * rw / 3);
J_31 = - rw / (3 * L);
J_32 = - rw / (3 * L);
J_33 = - rw / (3 * L);

J = [ J_11 J_12 J_13;
      J_21 J_22 J_23;
      J_31 J_32 J_33; ];

end

