%% Simulink parameters
Ts = 0.05;
theta = 0; % Don't rotate the robot
Ts_traj = 0.01;

% DT lowpass filter
tau = 0.05;                                        % test BOTH 0. 0 5 AND 0. 1 0 seconds
cttf = tf([1 0], [tau 1]);                         % numer : "s"; denom: "tau * s + 1".
dttf = c2d(cttf, Ts, 'tustin');                    % create the DT lowpass filter

%% Square trajectory
sideLength = 1;    % Square side length (meters)
resolution = 100; % Number of points along each side of the square
[x, y] = createSquarePattern(sideLength, resolution);

dt = 0.01; % Time step (seconds)
[t, q, q_dot] = calculateJointTrajectories(x, y, dt);

traj_A = q(1, :);
dtraj_A = q_dot(1, :);
traj_B = q(2, :);
dtraj_B = q_dot(2, :);
traj_C = q(3, :);
dtraj_C = q_dot(3, :);