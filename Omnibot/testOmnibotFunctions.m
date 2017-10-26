
%% Test J = getOmnibotJacobian( phi_b )

phi_b = pi/6;
J_calc = getOmnibotJacobian( phi_b );
J_act = [ -0.0213 0.0107  0.0107
          0.0000  -0.0185 0.0185
          -0.0731 -0.0731 -0.0731 ];
if abs(J_calc-J_act) < 0.01
    disp('getOmnibotJacobian returns the correct Jacobian for phi_b = pi/6');
end

%% Test F = getOmnibotF( phi_b )

phi_b = pi/6;
F_calc = getOmnibotF( phi_b );
F_act = inv(getOmnibotJacobian( phi_b ));

if abs(F_calc - F_act) < 0.01
    disp('getOmnibotF returns the correct F matrix for phi_b = pi/6');
end

%% Test [x, y] = createSquarePattern( sideLength, resolution )
[x, y] = createSquarePattern(2, 1000);
plot(x, y, 'LineWidth', 5); % Should plot a square from (0,0) -> (1,0) -> (1,1) -> (0,1) -> (0,0)

%% Create joint trajectories to move the center of body of the robot in a _square_ pattern
sideLength = 1;    % Square side length (meters)
resolution = 1000;  % Number of points along each side of the square
[x, y] = createSquarePattern(sideLength, resolution);

dt = 0.01; % Time step (seconds)
[t, q, q_dot] = calculateJointTrajectories(x, y, dt);

figure(1); clf; hold on;
subplot(2, 1, 1);
plot(t, q);
title('Trajectories, $q$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angles (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$q_1$', '$q_2$', '$q_3$'}, 'FontSize', 20, 'Interpreter', 'Latex');

subplot(2, 1, 2);
plot(smooth(q_dot, 20));
title('Velocities, $\dot{q}$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angular speed (rad/s)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$\dot{q}_1$', '$\dot{q}_2$', '$\dot{q}_3$'}, 'FontSize', 20, 'Interpreter', 'Latex');

%% Test [x, y] = createCircularPattern( radius, center, resolution )
[x, y] = createCircularPattern(0.5, [0, 0.5], 1000);
plot(x, y, 'LineWidth', 5); % Should plot a circle with a center in (0, 0.5)

%% Create joint trajectories to move the center of body of the robot in a _circular_ pattern
radius = 0.5;      % Circle radius (meters)
center = [0, 0.5]; % Center of the circle (meters)
resolution = 3600;  % Number of points along the circle perimeter
[x, y] = createCircularPattern(radius, center, resolution);

dt = 0.001; % Time step (seconds)
[t, q, q_dot] = calculateJointTrajectories(x, y, dt);

figure(2); clf; hold on;
subplot(2, 1, 1);
plot(t, q);
title('Trajectories, $q$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angles (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$q_1$', '$q_2$', '$q_3$'}, 'FontSize', 20, 'Interpreter', 'Latex');

subplot(2, 1, 2);
plot(t, q_dot);
title('Velocities, $\dot{q}$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angular speed (rad/s)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$\dot{q}_1$', '$\dot{q}_2$', '$\dot{q}_3$'}, 'FontSize', 20, 'Interpreter', 'Latex');

%% Smoothen velocities

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

% Plot the differences before and after smoothing
figure(3); clf; hold on;
plot( t(1:length(t_scale)), q_dot(1, 1:length(t_scale)) );
plot( t_scale, q_dot(1, 1:length(t_scale)) );
title('Velocities, $\dot{q}$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angular speed (rad/s)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$\dot{q}_1$ (without smoothing)', '$\dot{q}_1$ (with smoothing)'}, 'FontSize', 20, 'Interpreter', 'Latex');

%% Smoothen velocities using smoothTrajectory( t, q_dot )
t_new = smoothTrajectory(t, q_dot);

% For the square trajectory, smooth one 'side' at a time with this function
% For the circular trajectory, the movement is smooth, so only the initial
% jump in velocity will need to be smoothened.

