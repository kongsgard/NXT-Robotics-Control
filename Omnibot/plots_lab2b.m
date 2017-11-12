
%% Plot 1
% Designed trajectories for Xb, Yb and phi
% Run 'lab2b.m' first!

figure(1); clf;
subplot(3, 1, 1); hold on;
plot(t, x);
title('x', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (normalized)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Distance (m)', 'FontSize', 20, 'Interpreter', 'Latex');

subplot(3, 1, 2); hold on;
plot(t, y);
title('y', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (normalized)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Distance (m)', 'FontSize', 20, 'Interpreter', 'Latex');

subplot(3, 1, 3); hold on;
plot(t, unwrap(phi)*180/pi);
title('$\phi$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (normalized)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');

%% Plot 2
% Elliptical trajectory in the x-y plane
figure(2); clf;
plot(x,y); axis image;
title('Top-down trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('x (m)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('y (m)', 'FontSize', 20, 'Interpreter', 'Latex');

%% Plot 3
% Designed link trajectories

figure(3); clf;
subplot(3, 1, 1); hold on;
plot(t, q(1,:));
title('Motor A trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 20])

subplot(3, 1, 2); hold on;
plot(t, q(2,:));
title('Motor B trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 20])

subplot(3, 1, 3); hold on;
plot(t, q(3,:));
title('Motor C trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 20])

%% Plot 3
% Designed link trajectories

figure(3); clf;
subplot(3, 1, 1); hold on;
plot(t, q_dot(1,:));
title('Motor A trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 20])

subplot(3, 1, 2); hold on;
plot(t, q_dot(2,:));
title('Motor B trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 20])

subplot(3, 1, 3); hold on;
plot(t, q_dot(3,:));
title('Motor C trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
xlim([0 20])

%% Plot 1
% Square trajectory: Encoder data for the three motors along with the reference trajectories in a single subplot.

load('mat-files/lab2.mat');

figure(1); clf;
subplot(3, 1, 1); hold on;
plot(simout_ref_A.time, simout_ref_A.signals.values)
plot(simout_A.time, simout_A.signals.values);
title('Motor A trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'northwest');
xlim([48 70])

subplot(3, 1, 2); hold on;
plot(simout_ref_B.time, simout_ref_B.signals.values)
plot(simout_B.time, simout_B.signals.values);
title('Motor B trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'southwest');
xlim([48 70])

subplot(3, 1, 3); hold on;
plot(simout_ref_C.time, simout_ref_C.signals.values)
plot(simout_C.time, simout_C.signals.values);
title('Motor C trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'northwest');
xlim([48 70])
