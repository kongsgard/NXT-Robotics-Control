
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

subplot(3, 1, 2); hold on;
plot(t, q(2,:));
title('Motor B trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');

subplot(3, 1, 3); hold on;
plot(t, q(3,:));
title('Motor C trajectory', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (seconds)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Angle (rad)', 'FontSize', 20, 'Interpreter', 'Latex');