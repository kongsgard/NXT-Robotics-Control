% Double Inverted Pendulum on a Cart (DIPC)
%% System EOMs
% run('dipc_eom.m');

%% Simulation
X_0 = [0; 0; 0; 0; 0; 0];
[t_out,y_out] = ode45(@dipc_function,[0 5],X_0');

figure(11); clf;
plot(t_out, y_out);

simulate_frame_for_cart_with_two_link_pendulum(q);


%% System

% Linearize the system

A = 
B =

C = 

D = 


