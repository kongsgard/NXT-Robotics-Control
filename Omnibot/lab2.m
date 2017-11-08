%% Simulink parameters
Kp = 50;
Kd = 1;
Ki = 0;
Ts = 0.005;
theta = 0; % Don't rotate the robot
Ts_traj = 0.3;

% DT lowpass filter
tau = 0.05;                                        % test BOTH 0. 0 5 AND 0. 1 0 seconds
cttf = tf([1 0], [tau 1]);                         % numer : "s"; denom: "tau * s + 1".
dttf = c2d(cttf, Ts, 'tustin');                    % create the DT lowpass filter

%% Square trajectory
sideLength = 1;    % Square side length (meters)
resolution = 25; % Number of points along each side of the square
[x, y] = createSquarePattern(sideLength, resolution);
x = (smooth(x, 20))';
y = (smooth(y, 20))';

[t, q, q_dot] = calculateJointTrajectories(x, y, Ts);

traj_A = q(1, :);
traj_dA = q_dot(1, :);
traj_B = q(2, :);
traj_dB = q_dot(2, :);
traj_C = q(3, :);
traj_dC = q_dot(3, :);

%% Circular trajectory
radius = 0.5;      % Circle radius (meters)
center = [0, 0.5]; % Center of the circle (meters)
resolution = 100;  % Number of points along the circle perimeter
[x, y] = createCircularPattern(radius, center, resolution);

[t, q, q_dot] = calculateJointTrajectories(x, y, Ts);

traj_A = q(1, :);
traj_dA = q_dot(1, :);
traj_B = q(2, :);
traj_dB = q_dot(2, :);
traj_C = q(3, :);
traj_dC = q_dot(3, :);