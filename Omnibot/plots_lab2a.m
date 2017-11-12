
%% Plot 1
% Square trajectory: Encoder data for the three motors along with the reference trajectories in a single subplot.

load('mat-files/plot1.mat');

figure(1); clf;
subplot(3, 1, 1); hold on;
plot(simout_ref_A.time, simout_ref_A.signals.values)
plot(simout_A.time, simout_A.signals.values);
title('Motor A trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'northwest');

ti = find(simout_A.time >= 25.8, 1);
text(simout_A.time(ti - 15), simout_A.signals.values(ti), 'O');
text(simout_A.time(ti + 30), simout_A.signals.values(ti), '$v_{max}$', 'Interpreter', 'Latex');

ti = find(simout_A.time >= 24.6, 1);
text(simout_A.time(ti - 15), simout_A.signals.values(ti), 'O');
text(simout_A.time(ti + 30), simout_A.signals.values(ti), '$a_{max}$', 'Interpreter', 'Latex');

subplot(3, 1, 2); hold on;
plot(simout_ref_B.time, simout_ref_B.signals.values)
plot(simout_B.time, simout_B.signals.values);
title('Motor B trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'southwest');

ti = find(simout_B.time >= 49, 1);
text(simout_B.time(ti - 15), simout_B.signals.values(ti), 'O');
text(simout_B.time(ti + 30), simout_B.signals.values(ti), '$v_{max}$', 'Interpreter', 'Latex');

ti = find(simout_B.time >= 30, 1);
text(simout_B.time(ti - 15), simout_B.signals.values(ti), 'O');
text(simout_B.time(ti + 30), simout_B.signals.values(ti), '$a_{max}$', 'Interpreter', 'Latex');

subplot(3, 1, 3); hold on;
plot(simout_ref_C.time, simout_ref_C.signals.values)
plot(simout_C.time, simout_C.signals.values);
title('Motor C trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'northwest');

ti = find(simout_C.time >= 25.8, 1);
text(simout_C.time(ti - 15), simout_C.signals.values(ti), 'O');
text(simout_C.time(ti + 30), simout_C.signals.values(ti), '$v_{max}$', 'Interpreter', 'Latex');

ti = find(simout_C.time >= 24.6, 1);
text(simout_C.time(ti - 15), simout_C.signals.values(ti), 'O');
text(simout_C.time(ti + 30), simout_C.signals.values(ti), '$a_{max}$', 'Interpreter', 'Latex');

%% Plot 2
% Circle trajectory: Encoder data for the three motors along with the reference trajectories in a single subplot.

load('mat-files/plot2.mat');

figure(2); clf;
subplot(3, 1, 1); hold on;
plot(simout_ref_A.time, simout_ref_A.signals.values)
plot(simout_A.time, simout_A.signals.values);
title('Motor A trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'northwest');

ti = find(simout_A.time >= 23.5, 1);
text(simout_A.time(ti - 15), simout_A.signals.values(ti), 'O');
text(simout_A.time(ti + 30), simout_A.signals.values(ti), '$v_{max}$', 'Interpreter', 'Latex');

ti = find(simout_A.time >= 23, 1);
text(simout_A.time(ti - 15), simout_A.signals.values(ti), 'O');
text(simout_A.time(ti + 30), simout_A.signals.values(ti), '$a_{max}$', 'Interpreter', 'Latex');

subplot(3, 1, 2); hold on;
plot(simout_ref_B.time, simout_ref_B.signals.values)
plot(simout_B.time, simout_B.signals.values);
title('Motor B trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'southwest');

ti = find(simout_B.time >= 28, 1);
text(simout_B.time(ti - 15), simout_B.signals.values(ti), 'O');
text(simout_B.time(ti + 30), simout_B.signals.values(ti), '$v_{max}$', 'Interpreter', 'Latex');

ti = find(simout_B.time >= 23.7, 1);
text(simout_B.time(ti - 15), simout_B.signals.values(ti), 'O');
text(simout_B.time(ti + 30), simout_B.signals.values(ti), '$a_{max}$', 'Interpreter', 'Latex');

subplot(3, 1, 3); hold on;
plot(simout_ref_C.time, simout_ref_C.signals.values)
plot(simout_C.time, simout_C.signals.values);
title('Motor C trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'northwest');

ti = find(simout_C.time >= 23.5, 1);
text(simout_C.time(ti - 15), simout_C.signals.values(ti), 'O');
text(simout_C.time(ti + 30), simout_C.signals.values(ti), '$v_{max}$', 'Interpreter', 'Latex');

ti = find(simout_C.time >= 22.9, 1);
text(simout_C.time(ti - 15), simout_C.signals.values(ti), 'O');
text(simout_C.time(ti + 30), simout_C.signals.values(ti), '$a_{max}$', 'Interpreter', 'Latex');

%% Plot 3
% Our best performance trajectory (square/circle) after improvements:
% Encoder data for the three motors along with the reference trajectories in a single subplot.

% List of improvements:
% - Optimize controller gains
% - Add integral control
% - Change the speed and/or amount of smoothness used in trajectory
% playback

load('mat-files/plot3.mat');

figure(3); clf;
subplot(3, 1, 1); hold on;
plot(simout_ref_A.time, simout_ref_A.signals.values)
plot(simout_A.time, simout_A.signals.values);
title('Motor A trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'northwest');

ti = find(simout_A.time >= 22.98, 1);
text(simout_A.time(ti - 15), simout_A.signals.values(ti), 'O');
text(simout_A.time(ti + 30), simout_A.signals.values(ti), '$v_{max}$', 'Interpreter', 'Latex');

ti = find(simout_A.time >= 22.7, 1);
text(simout_A.time(ti - 15), simout_A.signals.values(ti), 'O');
text(simout_A.time(ti + 30), simout_A.signals.values(ti), '$a_{max}$', 'Interpreter', 'Latex');

subplot(3, 1, 2); hold on;
plot(simout_ref_B.time, simout_ref_B.signals.values)
plot(simout_B.time, simout_B.signals.values);
title('Motor B trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'southwest');

ti = find(simout_B.time >= 28, 1);
text(simout_B.time(ti - 15), simout_B.signals.values(ti), 'O');
text(simout_B.time(ti + 30), simout_B.signals.values(ti), '$v_{max}$', 'Interpreter', 'Latex');

ti = find(simout_B.time >= 23.7, 1);
text(simout_B.time(ti - 15), simout_B.signals.values(ti), 'O');
text(simout_B.time(ti + 30), simout_B.signals.values(ti), '$a_{max}$', 'Interpreter', 'Latex');

subplot(3, 1, 3); hold on;
plot(simout_ref_C.time, simout_ref_C.signals.values)
plot(simout_C.time, simout_C.signals.values);
title('Motor C trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'northwest');

ti = find(simout_C.time >= 23, 1);
text(simout_C.time(ti - 15), simout_C.signals.values(ti), 'O');
text(simout_C.time(ti + 30), simout_C.signals.values(ti), '$v_{max}$', 'Interpreter', 'Latex');

ti = find(simout_C.time >= 22.6, 1);
text(simout_C.time(ti - 15), simout_C.signals.values(ti), 'O');
text(simout_C.time(ti + 30), simout_C.signals.values(ti), '$a_{max}$', 'Interpreter', 'Latex');

%% Plot 4

load('mat-files/plot1.mat');

A = simout_A.signals.values;
B = simout_B.signals.values;
C = simout_C.signals.values;
xy_a = getOmnibotJacobian(0) * [A'; B'; C'];
plot(xy_a(1,:), xy_a(2,:)); hold on;
plot(x, y);
title('Square trajectory of the center of body on the x-y plane', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('x (meters)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('y (meters)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'northwest');

%% Plot 5

load('mat-files/plot2.mat');

A = simout_A.signals.values;
B = simout_B.signals.values;
C = simout_C.signals.values;
xy_a = getOmnibotJacobian(0) * [A'; B'; C'];
plot(xy_a(1,:), xy_a(2,:)); hold on;
plot(x, y);
title('Circular trajectory of the center of body on the x-y plane', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('x (meters)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('y (meters)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'northwest');

%% Plot 6

load('mat-files/plot3.mat');

A = simout_A.signals.values;
B = simout_B.signals.values;
C = simout_C.signals.values;
xy_a = getOmnibotJacobian(0) * [A'; B'; C'];
plot(xy_a(1,:), xy_a(2,:)); hold on;
plot(x, y);
title('Circular trajectory of the center of body on the x-y plane', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('x (meters)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('y (meters)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'Reference trajectory', 'Encoder data'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'northwest');