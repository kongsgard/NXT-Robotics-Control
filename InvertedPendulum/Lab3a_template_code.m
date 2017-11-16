%% Define params

%Measure these!
Rw = .019;             % (meters) Radius of wheel (SMALL wheel)
mw = 0.03;              % (kg) combined mass of BOTH wheels (SMALL WHEELS)
L = .095;               % (meters)  Length from wheel to body mass.
mb = 0.626;             % (kg) body mass 

acc_offset = 0.027770636593421;  %sensor calibration to be done by you
gyro_offset = 63.703796386718757;

Jw = mw*Rw^2/2;         % wheel inertia
Jb = mb*L^2/3;          % body inertia
b = 0.062;              % damping factor (approximate!)
g = 9.81;               % (m/s^2) gravity
Nmotors=2;              % number of motors used
Klego = 0.23;                    
Km = Nmotors*b/Klego ;  % Motor effort constant;
W = 165*10^(-3);        % wheel-to-wheel width

Ts=0.005;               %sampling time of control task
Ts_traj = Ts;
traj_phi = 0; traj_dphi = 0;
%% Define Filters

%Comp. Filters
s=tf('s');
Ha = 15.75/(s+15.75);   %accelerometer frequency response
Hg = 28.24/(s+28.24);   %gyro frequency response
Ga = tf([1], [2,1]);    %accel base lowpass (can tweak this)
Gg = minreal( (1 - Ha*Ga)/(tf([1,0],[1])*Hg) ); %solve for gyro filter
GyroFilt = c2d(Gg, Ts,'tustin');
AccFilt = c2d(Ga, Ts, 'tustin');

%Low-pass filters -- I observe best results with f between 1-20 rad/s.
f = 10;
VF = tf([f],[1, f]);
LowPass = c2d(VF,Ts,'tustin');
LowPass2 = LowPass;
%Derivative filter
s = tf('s');
pole_loc = f;
tau = 1/pole_loc; %extra pole for derivative estimation
derr_filter_c = s/(tau*s +1);  
dttf = c2d(derr_filter_c, Ts,'tustin');


%% Define SS Model

Kw = .5*(Jw + Rw^2*(mb+mw));
Kb = .5*mb*L^2 + .5*Jb;
Kc = mb*Rw*L;

m33 = Jw + Rw^2*(mb+mw); % 2*Kw
m34 = L*Rw*mb; % Kc
m43 = L*Rw*mb; % Kc
m44 = Jb + L^2*mb; % 2*Kb 

M = [1, 0, 0, 0; 0, 1, 0 ,0 ; 0, 0, m33, m34; 0, 0, m43, m44];
A_m = [0,0,1,0; 0,0,0,1; 0,0,-b,b; 0,L*g*mb,b,-b];
B_m = Km*[0;0;1;-1];

A = inv(M)*A_m;
B = inv(M)*B_m;

%% Create LQR State Feedback Controller
% build system dx = A*x + B*u, y = C*x + D*u
C = diag([1 1 1 1]);
D = [0 0 0 0]';
ss1 = ss(A,B,C,D);
open_loop_poles = eig(A);


Q = diag([ 10 1000 500 500 ]);
R = 1;
K = lqr(A,B,Q,R);

K(3) = 0;           %performance is better w/ dphi state zero or small
K;
eig(A-B*K)




%    _________________________________
%   |:::::::::::::;;::::::::::::::::::|
%   |:::::::::::'~||~~~``:::::::::::::|
%   |::::::::'   .':     o`:::::::::::|
%   |:::::::' oo | |o  o    ::::::::::|
%   |::::::: 8  .'.'    8 o  :::::::::|
%   |::::::: 8  | |     8    :::::::::|
%   |::::::: _._| |_,...8    :::::::::|
%   |::::::'~--.   .--. `.   `::::::::|
%   |:::::'     =8     ~  \ o ::::::::|
%   |::::'       8._ 88.   \ o::::::::|
%   |:::'   __. ,.ooo~~.    \ o`::::::|
%   |:::   . -. 88`78o/:     \  `:::::|
%   |::'     /. o o \ ::      \88`::::|   "He will save his data or DIE."
%   |:;     o|| 8 8 |d.        `8 `:::|
%   |:.       - ^ ^ -'           `-`::|
%   |::.                          .:::|
%   |:::::.....           ::'     ``::|
%   |::::::::-'`-        88          `|
%   |:::::-'.          -       ::     |
%   |:-~. . .                   :     |
%   | .. .   ..:   o:8      88o       |
%   |. .     :::   8:P     d888. . .  |
%   |.   .   :88   88      888'  . .  |
%   |   o8  d88P . 88   ' d88P   ..   |
%   |  88P  888   d8P   ' 888         |
%   |   8  d88P.'d:8  .- dP~ o8       |   
%   |      888   888    d~ o888    LS |
%   |_________________________________|
