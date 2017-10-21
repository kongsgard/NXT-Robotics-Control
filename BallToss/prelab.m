
% Arm geometry and initial joint angles
R1 = 7.9; % cm
R2 = 14.3; % cm
q1_initial = 177.5; % deg
q2_initial = 11.5; % deg

% 
x_f = 35+20;
v_xf = 20;
t_f = 1;

syms sym_ax_2 sym_ax_3;
eqns = [x_f == sym_ax_2 * t_f^2 + sym_ax_3 * t_f^3, v_xf == 2 * sym_ax_2 * t_f + 3 * sym_ax_3 * t_f^2];
vars = [sym_ax_2 sym_ax_3];
[ax_2, ax_3] = solve(eqns, vars);

t = linspace(0, 1, 10);
x = ax_2 * t.^2 + ax_3 * t.^3;
v_x = 2 * ax_2 * t + 3 * ax_3 * t.^2;
y = ay_2

% Ball trajectory in "joint space"
D = (x^2 + y^2 - R1^2 - R2^2) / (2 * R1 * R2);
q2 = atan2d(-sqrt(1 - D), D);

k_1 = R_1 + R_2 * cosd(q2);
k_2 = R_2 * sind(q2);
q1 = atan2d(y, x) - atan2d(k_2, k_1);

% Causal filter
tau = 0.05;                                        % test BOTH 0. 0 5 AND 0. 1 0 seconds
cttf = tf([1 0], [tau 1]);                         % numer : "s"; denom: "tau * s + 1".
dttf = c2d(cttf, Ts, 'tustin');                    % create the DT lowpass filter

% Simulink diagram for PD-controller

% Non-causal filter


%% Ball trajectory in "task space"
x1 = R1 * cosd(180 - q1) + R2 * cosd(180 - q1 - q2);
y1 = R1 * sind(180 - q1) + R2 * sind(180 - q1 - q2);

