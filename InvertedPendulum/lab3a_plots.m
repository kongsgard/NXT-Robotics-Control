%% Run Lab3a_template_code first

%% Plot 1 
load('mat-files/plot1a.mat');

t = simout_theta.time;
theta = simout_theta.signals.values;
theta_dot = filter(dttf.num{1}, dttf.den{1}, theta);

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
load('mat-files/plot234a.mat');

t = simout_theta.time;
theta = simout_theta.signals.values;
theta_dot = filter(dttf.num{1}, dttf.den{1}, theta);

figure(2); clf;
subplot(2, 1, 1); hold on;
plot(t - 11, theta);
title('Tilt Angle, $\theta$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 16]);

subplot(2, 1, 2); hold on;
plot(t - 11, theta_dot);
title('Tilt Angular Velocity, $\dot{\theta}$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angular Velocity (rad/s)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 16]);

%% Plot 3
load('mat-files/plot234a.mat');

t = simout_phi.time;
phi = simout_phi.signals.values;
phi_dot = simout_dphi.signals.values;

figure(3); clf;
subplot(2, 1, 1); hold on;
plot(t - 11, phi);
title('Wheel Angle, $\phi$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 16]);

subplot(2, 1, 2); hold on;
plot(t - 11, phi_dot);
title('Wheel Angular Velocity, $\dot{\phi}$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angular Velocity (rad/s)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 16]);

%% Plot 4
load('mat-files/plot234a.mat');

t = simout_u.time;
u = simout_u.signals.values;

figure(4); clf;
plot(t - 11, u);
title('Actuator Output, $u$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Output', 'FontSize', 20, 'Interpreter', 'Latex');
ylim([-200 200])
xlim([0 16]);

%% Plot 1b
load('mat-files/plot1b.mat');

t_theta = simout_theta.time;
theta = simout_theta.signals.values;

t_phi = simout_phi.time;
phi = simout_phi.signals.values;

figure(5); clf;
subplot(2, 1, 1); hold on;
plot(t_theta - 56, theta);
title('Body Angle, $\theta$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 16]);

subplot(2, 1, 2); hold on;
plot(t_phi - 56, phi);
title('Wheel Angle, $\phi$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 16]);
