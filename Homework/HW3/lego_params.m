% Below are parameters to use in Prelab 3.
% Katie Byl, 2012. ECE/ME 179D. UCSB.
% Note: Use these values for prelab only! In lab, you need to change some!

J_w      = 1.6e-05;           % (kg*m^2) Wheel inertia
R_w      = 0.0310;            % (meters)  Radius of wheel
L        = 0.0950;            % (meters)  Length from wheel to body mass.
m_b      = 0.5910;            % (kg) body mass
m_w      = 0.034;             % (kg) combined mass of BOTH wheels
J_b      = 0.0019;            % (kg*m^2) Body inertia
b        = 0.062;             % damping factor (approximate!)
g        = 9.81;              % (m/s^2) gravity
N_motors = 2;                 % number of motors used
K_lego   = 2;                 % A scaling parameter for motor output (approx)
K_m      = N_motors*b/K_lego; % Motor effort constant; Km = 0.062 (approx)