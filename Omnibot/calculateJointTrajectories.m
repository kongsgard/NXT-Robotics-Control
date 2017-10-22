function [ t, q, q_dot ] = calculateJointTrajectories( x, y, dt )
%CALCULATEJOINTTRAJECTORIES 
%   Calculate joint trajectories 'q' and velocities 'q_dot' for a given
%   trajectory of the body of the robot.

v_x = [0, diff(x)/dt];
v_y = [0, diff(y)/dt];
phi = zeros(1, length(v_x));

q_dot = getOmnibotF(phi(1)) * [v_x; v_y; phi]

%q_dot = zeros(3, length(v_x));
%F = getOmnibotF(phi(1));
%for i = 1:length(v_x)
%    q_dot(1:3, i) = F * [v_x(i); v_y(i), phi(i)];
%end
    
q = cumsum(q_dot') * dt;

t = 0:dt:length(v_x) - 1;

end


