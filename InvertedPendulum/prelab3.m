%% Segway
% X = [phi_w;
%      theta_b;
%      phi_w_dot;
%      theta_b_dot];

%% System parameters and equations
lego_params;

K_w = 1/2*m_w*R_w^2 + 1/2*J_w + 1/2*m_b*R_w^2;
K_b = 1/2*m_b*L^2 + 1/2*J_b;
K_c = m_b*R_w*L;

%% System matrices
% M * X_dot = A_m * X + B_m * u
% y = C * x + D * u
M   = [1        0       0       0;
       0        1       0       0;
       0        0       2*K_w   K_c;
       0        0       K_c     2*K_b];

A_m = [0        0       1       0;
       0        0       0       1;
       0        0       -b      b;
       0        m_b*g*L b       -b];

B_m = [0;
       0;
       K_m;
       -K_m];

A = inv(M) * A_m;
B = inv(M) * B_m;

C = eye(4);
D = 0;

X_0 = [0 5*pi/180 0 0]';

X_dot_ol = ss(A, B, C, D);
eig_ol = eig(A); % Has a pole on RHP -> Unstable

%% R = 1
Q = diag([1 0 0 0]);
R = [1];
K = lqr(A, B, Q, R);

X_dot_cl = ss(A-B*K,[], C, D);
eig_cl_R1 = eig(A-B*K);

% Plot 1
dt = 0.001;
t = 0:dt:5;
[~, t, x] = initial(X_dot_cl, X_0, t);

u = zeros(1, length(x(:,1)));

for i = 1:length(x(:,1))
    u(i) = -K*x(i,:)';
end
%%%%%%%%%%%%%%%%%% PLOT %%%%%%%%%%%%%%%%%
figure(1); clf; hold on;

subplot(5,1,1);
plot(t,u)
ylabel('u','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,2);
plot(t,x(:,1));
ylabel('$\phi_{w}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,3);
plot(t,x(:,2));
ylabel('$\theta_{b}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,4);
plot(t,x(:,3));
ylabel('$\dot{\phi_w}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,5);
plot(t,x(:,4));
ylabel('$\dot{\theta_b}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

%% R = 0.1
Q = diag([1 0 0 0]);
R = [0.1];
K = lqr(A, B, Q, R);

X_dot_cl = ss(A-B*K,[], C, D);
eig_cl_R01 = eig(A-B*K);

% Plot 2
dt = 0.001;
t = 0:dt:5;
[~, t, x] = initial(X_dot_cl, X_0, t);

u = zeros(1, length(x(:,1)));

for i = 1:length(x(:,1))
    u(i) = -K*x(i,:)';
end
%%%%%%%%%%%%%%%%%% PLOT %%%%%%%%%%%%%%%%%
figure(2); clf; hold on;

subplot(5,1,1);
plot(t,u)
ylabel('u','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,2);
plot(t,x(:,1));
ylabel('$\phi_{w}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,3);
plot(t,x(:,2));
ylabel('$\theta_{b}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,4);
plot(t,x(:,3));
ylabel('$\dot{\phi_w}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,5);
plot(t,x(:,4));
ylabel('$\dot{\theta_b}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

%% R = 10
Q = diag([1 0 0 0]);
R = [10];
K = lqr(A, B, Q, R);

X_dot_cl = ss(A-B*K,[], C, D);
eig_cl_R10 = eig(A-B*K);

% Plot 3
dt = 0.001;
t = 0:dt:20;
[~, t, x] = initial(X_dot_cl, X_0, t);

u = zeros(1, length(x(:,1)));

for i = 1:length(x(:,1))
    u(i) = -K*x(i,:)';
end
%%%%%%%%%%%%%%%%%% PLOT %%%%%%%%%%%%%%%%%
figure(3); clf; hold on;

subplot(5,1,1);
plot(t,u)
ylabel('u','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,2);
plot(t,x(:,1));
ylabel('$\phi_{w}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,3);
plot(t,x(:,2));
ylabel('$\theta_{b}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,4);
plot(t,x(:,3));
ylabel('$\dot{\phi_w}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(5,1,5);
plot(t,x(:,4));
ylabel('$\dot{\theta_b}$','interpreter','latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

%% Eigenvalues

fprintf('EIGENVALUES:\n');
fprintf('Open loop:\n');
disp(eig_ol);
fprintf('Closed loop, R=1:\n');
disp(eig_cl_R1);
fprintf('Closed loop, R=0.1:\n');
disp(eig_cl_R01);
fprintf('Closed loop, R=10:\n');
disp(eig_cl_R10);

%% Effect of changing R
% R determines how much we penalize the controller for setting a high
% control input. Hence, a high R will limit the input set by the
% controller.

% States over time:
% With a lower R, the states will more quickly go to steady state. 

% Magnitude of the control input, u:
% Lower R allows for a higher control input, since this will then be less
% penalized. It is important to remember that R shouldn't be so low that it
% will require a to high input from the motors (higher than what is
% possible). A saturation of input can also be added, if a low R is to be
% used.
