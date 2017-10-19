dt = 0.01;                                         % sampling time
Ts = dt;

% Controller gains
Kp1 = 180;
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
theta1_throw_traj = linspace(0, 1, 10);
dtheta1_throw_traj = linspace(0, 1, 10);
theta2_throw_traj = linspace(0, 1, 10);
dtheta2_throw_traj = linspace(0, 1, 10);

% PD-control
tau = 0.05;                                        % test BOTH 0. 0 5 AND 0. 1 0 seconds
cttf = tf([1 0], [tau 1]);                         % numer : "s"; denom: "tau * s + 1".
dttf = c2d(cttf, Ts, 'tustin');                    % create the DT lowpass filter
% dtheta_tau_005 = filter(dttf.num{:}, dttf.den{:} , theta1_init_traj); % filter data