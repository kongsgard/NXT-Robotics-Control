%% Supplemental data used
% Due to unforeseen issues, we were not able to get our own data for lab 1. 
% run19.mat is kindly assigned to me, so I have data to use for the prelab.

load('twolinkarmstrials/run19.mat');

%% Plot 1 - theta_1 - Actual response and commanded reference trajectory

t_1_ref     = refa.time;
theta_1_ref = refa.signals.values;

t_1_com     = pa.time;
theta_1_com = pa.signals.values;

figure(1); clf; hold on;
plot(t_1_ref, theta_1_ref);
plot(t_1_com, theta_1_com);
title('$\theta_1$','FontSize',30,'Interpreter','Latex');
xlabel('Time (seconds)','FontSize',20,'Interpreter','Latex');
ylabel('Angle (rad)','FontSize',20,'Interpreter','Latex');
legend({'Reference $\theta_1$', 'Actual $\theta_1$'},'FontSize',20,'Interpreter','Latex')
grid on;

%% Plot 2 - theta_2 - Actual response trajectory
% (Commanded reference trajectory not available in supplemented data)

t_2_ref     = refb.time;
theta_2_ref = refb.signals.values;

t_2_com     = pb.time;
theta_2_com = pb.signals.values;

figure(2); clf; hold on;
plot(t_2_ref, theta_2_ref);
plot(t_2_com, theta_2_com);
title('$\theta_1$','FontSize',30,'Interpreter','Latex');
xlabel('Time (seconds)','FontSize',20,'Interpreter','Latex');
ylabel('Angle (rad)','FontSize',20,'Interpreter','Latex');
legend({'(Missing) reference $\theta_1$', 'Actual $\theta_1$'},'FontSize',20,'Interpreter','Latex');
grid on;

%% Plot 3 - Velocities for both link angles

Ts   = 0.01;
tau  = 0.05;                                        
cttf = tf([1 0], [tau 1]);                         % numer : "s"; denom: "tau * s + 1".
dttf = c2d(cttf, Ts, 'tustin');                    % create the DT lowpass filter
% dtraj = filter(dttf.num{:}, dttf.den{:} , traj); % filter data

dtheta_1_ref = filter(dttf.num{:}, dttf.den{:} , theta_1_ref);
dtheta_1_com = filter(dttf.num{:}, dttf.den{:} , theta_1_com);
dtheta_2_ref = filter(dttf.num{:}, dttf.den{:} , theta_2_ref);
dtheta_2_com = filter(dttf.num{:}, dttf.den{:} , theta_2_com);

figure(3); clf;
subplot(2,1,1); hold on;
plot(t_1_ref, dtheta_1_ref);
plot(t_1_com, dtheta_1_com);
title('$\dot{\theta}_1$','FontSize',30,'Interpreter','Latex');
xlabel('Time (seconds)','FontSize',20,'Interpreter','Latex');
ylabel('Angular Velocity (rad/s)','FontSize',20,'Interpreter','Latex');
legend({'Reference $\dot{\theta}_1$', 'Actual $\dot{\theta}_1$'},'FontSize',20,'Interpreter','Latex');
grid on;

subplot(2,1,2); hold on;
plot(t_2_ref, dtheta_2_ref);
plot(t_2_com, dtheta_2_com);
title('$\dot{\theta}_2$','FontSize',30,'Interpreter','Latex');
xlabel('Time (seconds)','FontSize',20,'Interpreter','Latex');
ylabel('Angular Velocity (rad/s)','FontSize',20,'Interpreter','Latex');
legend({'(Missing) reference $\dot{\theta}_2$', 'Actual $\dot{\theta}_2$'},'FontSize',20,'Interpreter','Latex');
grid on;

%% Plot 4/5/6 - The same plots as plot 1/2/3, since supplemented data has been used
