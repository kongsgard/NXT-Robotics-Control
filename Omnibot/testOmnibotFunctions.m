
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
sideLength = 1;     % Square side length (meters)
resolution = 1000;  % Number of points along each side of the square
[x, y] = createSquarePattern(sideLength, resolution);

dt = 0.001; % Time step
[q, q_dot] = calculateJointTrajectories(x, y, dt);
t = linspace(0, length(q)*dt, length(q));

figure(1); clf; hold on;
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


%% Test [x, y] = createCircularPattern( radius, center, resolution )
[x, y] = createCircularPattern(0.5, [0, 0.5], 1000);
plot(x, y, 'LineWidth', 5); % Should plot a circle with a center in (0, 0.5)

%% Create joint trajectories to move the center of body of the robot in a _circular_ pattern
radius = 1;        % Circle radius (meters)
center = [0, 0.5]; % Center of the circle (meters)
resolution = 5000; % Number of points along the circle perimeter
[x, y] = createCircularPattern(radius, center, resolution);

dt = 0.01; % Time step
[q, q_dot] = calculateJointTrajectories(x, y, dt);
t = linspace(0, length(q)*dt, length(q));

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
