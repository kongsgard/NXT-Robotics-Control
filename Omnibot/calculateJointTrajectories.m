function [ q, q_dot ] = calculateJointTrajectories( x, y, dt )
%CALCULATEJOINTTRAJECTORIES 
%   Calculate joint trajectories 'q' and velocities 'q_dot' for a given
%   trajectory of the body of the robot.

v_x = [0, diff(x)/dt];
v_y = [0, diff(y)/dt];
phi = zeros(1, length(v_x));

q_dot = getOmnibotF(phi(1)) * [v_x; v_y; phi];
q = cumsum(q_dot) * dt;

end


