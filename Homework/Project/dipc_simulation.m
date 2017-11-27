% Double Inverted Pendulum on a Cart (DIPC)
%% System EOMs
% run('dipc_eom.m');

%% Simulation
X_0 = [0; 0; 0; 0; 0; 0];
[t_out,y_out] = ode45(@dipc_function,[0 5],X_0');

figure(11); clf;
plot(t_out, y_out);




%% System

dt = 0.01;
t  = 0:dt:5; % 0 to 5 seconds

q_initial  = [0, 0, 0]; % Initial condition
dq_initial = [0, 0, 0]; 

%X = [] 


[t, q] = ode45(@sys, t, [q_initial dq_initial]);

% simulate_frame_for_cart_with_two_link_pendulum(q);
