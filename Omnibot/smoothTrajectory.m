function [ t_new ] = smoothTrajectory( t, q_dot )
%SMOOTHTRAJECTORY Smooth the trajectory to avoid sharp changes in angles
%   The velocity values are actually completely unchanged, it is only the
%   time values that are shifted according to the square root of the
%   original time values for the time slot that is smoothened.

q_dot_max = 900; % Maximum motor speed (deg/s)
t_peak_vel = 0.05; % Time to get from zero to peak velocity for the motors (s)
t_peak_vel_index = find(t >= 0.05, 1);
q_peak_vel = q_dot(:, t_peak_vel_index);

% Find initial points, which need new "time stamps"
fi_scale = find(t <= t_peak_vel);
t_last  = t(t_peak_vel_index);
t_scale = t_peak_vel * sqrt(t(fi_scale) ./ t_last);

% Then find the rest of the points, which will need a time shift:
fi_shift = find(t > t_peak_vel);
t_shift = t(fi_shift) + (t_peak_vel - t_last);

% The new time points include both sets, defined above
t_new = [t_scale, t_shift];  % Just redefine the time points

end

