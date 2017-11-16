%% Plot 1
% 
load('mat-files/plot1a.mat');

t = 1;
theta = 1;
theta_dot = 1;

figure(1); clf;
subplot(2, 1, 1); hold on;
plot(t, theta);
title('Tilt Angle, $\theta$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');

subplot(2, 1, 2); hold on;
plot(t, theta_dot);
title('Tilt Angular Velocity, $\dot{\theta}$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angular Velocity (rad/s)', 'FontSize', 20, 'Interpreter', 'Latex');

%% Plot 2
%
load('mat-files/plot2a.mat');

t = 1;
theta = 1;
theta_dot = 1;

figure(2); clf;
subplot(2, 1, 1); hold on;
plot(t, theta);
title('Tilt Angle, $\theta$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');

subplot(2, 1, 2); hold on;
plot(t, theta_dot);
title('Tilt Angular Velocity, $\dot{\theta}$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angular Velocity (rad/s)', 'FontSize', 20, 'Interpreter', 'Latex');

%% Plot 3
%
load('mat-files/plot3a.mat');

t = 1;
phi = 1;
phi_dot = 1;

figure(3); clf;
subplot(2, 1, 1); hold on;
plot(t, phi);
title('Wheel Angle, $\phi$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');

subplot(2, 1, 2); hold on;
plot(t, phi_dot);
title('Wheel Angular Velocity, $\dot{\phi}$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angular Velocity (rad/s)', 'FontSize', 20, 'Interpreter', 'Latex');

%% Plot 4
%
load('mat-files/plot4a.mat');

t = 1;
u = 1;

figure(4); clf;
plot(t, u);
title('Actuator Output, $u$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Output', 'FontSize', 20, 'Interpreter', 'Latex');
