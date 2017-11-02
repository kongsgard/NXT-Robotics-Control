function [ t, q, q_dot ] = calculateJointTrajectoriesImproved( x, y, dt )
%CALCULATEJOINTTRAJECTORIES 
%   Calculate joint trajectories 'q' and velocities 'q_dot' for a given
%   trajectory of the body of the robot.

v_x = [0, diff(x)/dt];
v_y = [0, diff(y)/dt];
phi = atan((0-y)./(0.9144-x));

for i=1:length(v_x)
    q_dot = getOmnibotF(phi(i)) * [v_x(i); v_y(i); phi(i)];
end
    
q = (cumsum(q_dot') * dt)';

t = linspace(0, length(q)*dt, length(q));

end


