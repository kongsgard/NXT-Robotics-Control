function [ q, q_dot ] = calculateJointTrajectories( x, y, dt )
%CALCULATEJOINTTRAJECTORIES 
%   Calculate joint trajectories 'q' and velocities 'q_dot' for a given
%   trajectory of the body of the robot.

dx = [0, diff(x)/dt];
dy = [0, diff(y)/dt];
phi = zeros(1, length(dx));

q_dot = getOmnibotF(phi(1)) * [dx; dy; phi];
q = cumsum(q_dot) * dt;

end

