dt = 0.01;                                         % sampling time
Ts = dt;

% Controller gains
Kp1 = 400;
Kd1 = 1;
Kp2 = 180;
Kd2 = 1;

% Trajectories
% Init phase
t_ref_init = linspace(0, 1, 10);
theta1_init_traj = linspace(0, 1, 10);
theta2_init_traj = linspace(0, 1, 10);

% Throw phase
t_ref_throw = linspace(0, 1, 10);

%theta1_throw_traj = [0 0.015 0.035 0.05 0.065 0.08 0.15 0.2 0.30 1.2];
%theta1_throw_traj = [0 0.015 0.035 0.05 0.065 0.08 0.1 1.0 1.2 1.4];

theta1_throw_traj = [0 0 0 1.3 1.3 1.3 1.3 1.3 1.3 1.3];

dtheta1_throw_traj = [0, diff(theta1_throw_traj)/dt]; 

% theta2_throw_traj = [0 0.009 0.02 0.04 0.05 0.075 0.09 0.11 0.2 1];
%theta2_throw_traj = [0 0.009 0.02 0.04 0.05 0.075 0.09 0.7 0.8 1];

theta2_throw_traj = [0 0 0 1 1 1 1 1 1 1];

dtheta2_throw_traj = [0, diff(theta2_throw_traj)/dt];

% PD-control
tau = 0.05;                                        % test BOTH 0. 0 5 AND 0. 1 0 seconds
cttf = tf([1 0], [tau 1]);                         % numer : "s"; denom: "tau * s + 1".
dttf = c2d(cttf, Ts, 'tustin');                    % create the DT lowpass filter
% dtheta_tau_005 = filter(dttf.num{:}, dttf.den{:} , theta1_init_traj); % filter data