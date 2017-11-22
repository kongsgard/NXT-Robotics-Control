
%% Arm parameters
a_1 = 177.5; % initial angles, in degrees, as offsets.
a_2 = 11.5;
L_1 = 0.143; % length is in meters, so gravity, etc., fit to SI units later
L_2 = 0.079;

%% Link angles
n_points = 100 + 25;
t = linspace(0, 2+1, n_points);
dt = 3/n_points;

theta_1 = logspace(-10, 0, 100); %[0 to 1] %[0, 0.68]
theta_1 = [theta_1 theta_1(end)*ones(1,25)];
theta_2 = logspace(-10, 0, 100); %[0 to 1] %[0, 0.93]
theta_2 = [theta_2 theta_2(end)*ones(1,25)];

%% Plot arm movement in "joint space"
figure(20); clf; hold on;
plot(t,theta_1);
plot(t,theta_2,'r--');
title('Plot of arm movement in "joint space"','FontSize',30,'Interpreter','Latex');
xlabel('Time (seconds)','FontSize',20,'Interpreter','Latex');
ylabel('Angle (rad)','FontSize',20,'Interpreter','Latex');
legend({'$\theta_1$', '$\theta_2$'},'FontSize',20,'Interpreter','Latex')

%%  (x1,y1) is the elbow. (x2,y2) is the center of the ball.
x_1 = L_1*cos((theta_1));
y_1 = L_1*sin((theta_1));
x_2 = L_2*cos((theta_1+theta_2)) + x_1;
y_2 = L_2*sin((theta_1+theta_2)) + y_1;

%% Plot arm movement in "task space" (The arm starts on the right side of the y-axis and moves LEFT)
figure(21); clf; hold on;
plot(x_1,y_1);
plot(x_2,y_2,'r');
title('Plot of arm movement in "task space"','FontSize',30,'Interpreter','Latex');
xlabel('x','FontSize',20,'Interpreter','Latex');
ylabel('y','FontSize',20,'Interpreter','Latex');
legend({'Elbow ($x_1$, $y_1$)', 'Center of the ball ($x_2$, $y_2$'},'FontSize',20,'Interpreter','Latex')

%% Use a non-causal filter to estimate velocity
dtheta_1 = [0, diff(theta_1)/dt];
dtheta_2 = [0, diff(theta_2)/dt];

figure(30); clf; hold on;
plot(t, dtheta_1);
plot(t, dtheta_2,'r--');
title('Angular velocity of each joint (using a non-causal filter)','FontSize',30,'Interpreter','Latex');
xlabel('Time (seconds)','FontSize',20,'Interpreter','Latex');
ylabel('Angular Velocity (rad/s)','FontSize',20,'Interpreter','Latex');
legend({'$\dot{\theta_1}$', '$\dot{\theta_2}$'},'FontSize',20,'Interpreter','Latex')

%% Use a causal filter to estimate velocity (too)
Ts   = 0.01;
tau  = 0.05;                                        
cttf = tf([1 0], [tau 1]);                         % numer : "s"; denom: "tau * s + 1".
dttf = c2d(cttf, Ts, 'tustin');                    % create the DT lowpass filter
% dtraj = filter(dttf.num{:}, dttf.den{:} , traj); % filter data

dtheta_1 = filter(dttf.num{:}, dttf.den{:} , theta_1);
dtheta_2 = filter(dttf.num{:}, dttf.den{:} , theta_2);

figure(31); clf; hold on;
plot(t, dtheta_1);
plot(t, dtheta_2,'r--');
title('Angular velocity of each joint (using a causal filter)','FontSize',30,'Interpreter','Latex');
xlabel('Time (seconds)','FontSize',20,'Interpreter','Latex');
ylabel('Angular Velocity (rad/s)','FontSize',20,'Interpreter','Latex');
legend({'$\dot{\theta_1}$', '$\dot{\theta_2}$'},'FontSize',20,'Interpreter','Latex')

%% Display throw (the arm is on the right and throwing in the LEFT direction)
% The ball is estimated to leave the arm when the arm is moving at peak
% velocity.
xi = x_2(100);
vi = y_2(100);

tp = 0:1e-3:.5;
plot(xi,yi,'r+');
plot(xi-vxi*tp,yi+vyi*tp-.5*9.81*tp.^2,'g');
A = axis;
axis([A(1) 0.3 -.05 A(4)])

%% PD-controller
% See PDcontroller.slx
% ref, Kp and Kd have to be given/tuned to use the controller