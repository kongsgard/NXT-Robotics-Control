
%% Plot 1
% Designed trajectories for Xb, Yb and phi
% Run 'lab2b.m' first!

figure(1); clf;
subplot(3, 1, 1); hold on;
plot(t, x);
title('x', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (normalized)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');

subplot(3, 1, 2); hold on;
plot(t, y);
title('y', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (normalized)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');

subplot(3, 1, 3); hold on;
plot(t, unwrap(phi)*180/pi);
title('$\phi$', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (normalized)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');

%% Plot 2
