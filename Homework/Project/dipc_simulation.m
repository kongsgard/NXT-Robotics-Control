% Double Inverted Pendulum on a Cart (DIPC)
%% System EOMs
% run('dipc_eom.m');

%% Open loop simulation
X_0 = [0; 0; 0; 0; 0; 0];
[t_out,y_out] = ode45(@dipc_function,[0 25],X_0');

figure(11); clf;
plot(t_out, y_out);

M = dipc_animate(t_out, y_out);

%% Closed loop simulation from an initial condition that is CLOSE to the equilibrium


%% Closed loop simulation from an initial condition that is FURTHER from the equilibrium

