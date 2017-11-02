function [ F ] = getOmnibotF( phi_b )
%GETOMNIBOTF Outputs the F matrix for an omnibot 
%   Solves for the 3x3 matrix F, that can transform desired vehicle
%   velocities to required joint velocities

rw = 0.032;             % (meters)
L  = 0.09;             % (meters) 
a  = (2*pi/3)*[-1 0 1]; % alpha angles, of wheels, wrt body frame

F_11 = sin(phi_b + a(1)) / rw;
F_12 = -cos(phi_b + a(1)) / rw;
F_13 = -L / rw;
F_21 = sin(phi_b + a(2)) / rw;
F_22 = -cos(phi_b + a(2)) / rw;
F_23 = -L / rw;
F_31 = sin(phi_b + a(3)) / rw;
F_32 = -cos(phi_b + a(3)) / rw;
F_33 = -L / rw;

F = [ F_11 F_12 F_13;
      F_21 F_22 F_23;
      F_31 F_32 F_33 ];

end

