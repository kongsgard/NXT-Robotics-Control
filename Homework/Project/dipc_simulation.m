% Double Inverted Pendulum on a Cart (DIPC)
%% System EOMs
% run('dipc_eom.m');

%% Open loop simulation
X_0 = [0; 0.1; -0.2; 0; 0; 0];
[t_out,y_out] = ode45(@dipc_function,[0 5],X_0');

figure(11); clf;
plot(t_out, y_out);

M = dipc_animate(t_out, y_out);

%% Closed loop simulation from an initial condition that is CLOSE to the equilibrium
load('ABCD.mat'); %State space matrices for the system (with numeric values)

X_0 = [0; 0; 0.01; 0; 0; 0];
[t_out,y_out] = ode45(@dipc_cl_function,[0 20],X_0');
y_out(:,1) = -y_out(:,1); % For some reason, the x output is inverted, so this is a quick fix to that problem

figure(11); clf;
plot(t_out, y_out);

M = dipc_animate(t_out, y_out);

% Q and R matrices used. The resulting K is entered into dipc_cl_function
Q = diag(1./[5*pi/180 5*pi/180 1 0.5 0.5 1].^2);
R = [1];
K = lqr(A, B, Q, R);

X_dot_cl = ss(A-B*K,[], C, D);
eig_cl_R1 = eig(A-B*K);

%% Closed loop simulation from an initial condition that is FURTHER from the equilibrium

X_0 = [0; 0.1; 0.1; 0; 0; 0];
[t_out,y_out] = ode45(@dipc_cl_function,[0 20],X_0');
y_out(:,1) = -y_out(:,1);

figure(11); clf;
plot(t_out, y_out);

M = dipc_animate(t_out, y_out);

%% Plot 1
dt = 0.001;
t = 0:dt:20;
[y_out,t_out,~] = initial(X_dot_cl, X_0, t);
y_out(:,1) = -y_out(:,1);

figure(11); clf;
plot(t_out, y_out);

M = dipc_animate(t_out, y_out);