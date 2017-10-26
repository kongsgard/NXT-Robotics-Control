
%% Plot 1
% Square trajectory: Encoder data for the three motors along with the reference trajectories in a single subplot.

% load('plot1.mat');

figure(1); clf; hold on;
subplot(3, 1, 1);
%plot(simout_ref_A.time, simout_ref_A.signals.values)
%plot(simout_A.time, simout_A.signals.values);
title('Motor A trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$Reference trajectory$', '$Encoder data$'}, 'FontSize', 20, 'Interpreter', 'Latex');

subplot(3, 1, 2);
%plot(simout_ref_B.time, simout_ref_B.signals.values)
%plot(simout_B.time, simout_B.signals.values);
title('Motor B trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$Reference trajectory$', '$Encoder data$'}, 'FontSize', 20, 'Interpreter', 'Latex');

subplot(3, 1, 3);
%plot(simout_ref_B.time, simout_ref_B.signals.values)
%plot(simout_C.time, simout_C.signals.values);
title('Motor C trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$Reference trajectory$', '$Encoder data$'}, 'FontSize', 20, 'Interpreter', 'Latex');

%% Plot 2
% Circle trajectory: Encoder data for the three motors along with the reference trajectories in a single subplot.

% load('plot2.mat'); Encoder data for the three motors along with the reference trajectories in a single subplot.

figure(2); clf; hold on;
subplot(3, 1, 1);
%plot(simout_ref_A.time, simout_ref_A.signals.values)
%plot(simout_A.time, simout_A.signals.values);
title('Motor A trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$Reference trajectory$', '$Encoder data$'}, 'FontSize', 20, 'Interpreter', 'Latex');

subplot(3, 1, 2);
%plot(simout_ref_B.time, simout_ref_B.signals.values)
%plot(simout_B.time, simout_B.signals.values);
title('Motor B trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$Reference trajectory$', '$Encoder data$'}, 'FontSize', 20, 'Interpreter', 'Latex');

subplot(3, 1, 3);
%plot(simout_ref_B.time, simout_ref_B.signals.values)
%plot(simout_C.time, simout_C.signals.values);
title('Motor C trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$Reference trajectory$', '$Encoder data$'}, 'FontSize', 20, 'Interpreter', 'Latex');

%% Plot 3
% Our best performance trajectory (square/circle) after improvements:
% Encoder data for the three motors along with the reference trajectories in a single subplot.

% List of improvements:
% - Optimize controller gains
% - Add integral control
% - Change the speed and/or amount of smoothness used in trajectory
% playback

% load('plot3.mat');

figure(3); clf; hold on;
subplot(3, 1, 1);
%plot(simout_ref_A.time, simout_ref_A.signals.values)
%plot(simout_A.time, simout_A.signals.values);
title('Motor A trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$Reference trajectory$', '$Encoder data$'}, 'FontSize', 20, 'Interpreter', 'Latex');

subplot(3, 1, 2);
%plot(simout_ref_B.time, simout_ref_B.signals.values)
%plot(simout_B.time, simout_B.signals.values);
title('Motor B trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$Reference trajectory$', '$Encoder data$'}, 'FontSize', 20, 'Interpreter', 'Latex');

subplot(3, 1, 3);
%plot(simout_ref_B.time, simout_ref_B.signals.values)
%plot(simout_C.time, simout_C.signals.values);
title('Motor C trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$Reference trajectory$', '$Encoder data$'}, 'FontSize', 20, 'Interpreter', 'Latex');