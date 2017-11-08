function [ t, q, q_dot ] = calculateJointTrajectoriesImproved( x, y, phi, dt )
%CALCULATEJOINTTRAJECTORIES 
%   Calculate joint trajectories 'q' and velocities 'q_dot' for a given
%   trajectory of the body of the robot.

v_x = [0, diff(x)/dt];
v_y = [0, diff(y)/dt];
v_phi = [0, diff(phi)/dt];

q_dot = zeros(3,length(v_x));
q = zeros(3,length(v_x));
for i=1:length(v_x)
    q_dot(:,i) = get_F(phi(i)) * [v_x(i); v_y(i); v_phi(i)];
    if i ~= 1
        q(:,i) = q(:,i-1) + q_dot(:, i) * dt;
    end
end

% q = (cumsum(q_dot')* dt)';

t = linspace(0, length(q)*dt, length(q));

end


