% Lab 1b
%% Plots 1-3
%load('lab1b_1.mat');

figure(1); clf; hold on;
%plot(t_ref_throw, theta1_throw_traj);
%plot(motorA_rad.time, motorA_rad.signals.values);
title('Trajectory for $\theta_1$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time [s]', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle [rad]', 'FontSize', 20, 'Interpreter', 'Latex');
lgd = legend({'Actual response', 'Commanded reference trajectory'}, 'FontSize', 20, 'Interpreter', 'Latex');

figure(2); clf; hold on;
%plot(t_ref_throw, theta2_throw_traj);
%plot(motorB_rad.time, motorB_rad.signals.values);
title('Trajectory for $\theta_2$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time [s]', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle [rad]', 'FontSize', 20, 'Interpreter', 'Latex');
lgd = legend({'Actual response', 'Commanded reference trajectory'}, 'FontSize', 20, 'Interpreter', 'Latex');

figure(3); clf; hold on;
subplot(2,1,1);
%plot(t_ref_throw, dtheta1_throw_traj);
%plot(motorA_vel.time, motorA_vel.signals.values);
title('Velocity for $\dot{\theta_1}$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time [s]', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Velocity [rad/s]', 'FontSize', 20, 'Interpreter', 'Latex');
lgd = legend({'Actual velocity', 'Desired velocity trajectory'}, 'FontSize', 20, 'Interpreter', 'Latex');

subplot(2,1,2);
%plot(t_ref_throw, dtheta2_throw_traj);
%plot(motorB_vel.time, motorB_vel.signals.values);
title('Velocity for $\dot{\theta_2}$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time [s]', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Velocity [rad/s]', 'FontSize', 20, 'Interpreter', 'Latex');
lgd = legend({'Actual velocity', 'Desired velocity trajectory'}, 'FontSize', 20, 'Interpreter', 'Latex');

%% Plots 4-6