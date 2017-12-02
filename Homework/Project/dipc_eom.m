clear all; format compact  % compact produces single-spaced output

% Define symbolic variables in matlab:
syms x h_0 b_0 l_0 m_0 I_0 tau;
syms theta_1 l_1 m_1 I_1;
syms theta_2 l_2 m_2 I_2;
syms g;

% 1a. GC's (generalized coordinates), and their derivatives:
GC = [{x},{theta_1},{theta_2}]; % Using ABSOLUTE angles here?
dx = fulldiff(x,GC); % time derivative. GC are variables (over time)
dtheta_1 = fulldiff(theta_1,GC);
dtheta_2 = fulldiff(theta_2,GC);

% 1b. Geometry of the masses/inertias, given GC's are freely changing...
r_0 = [x;
       0];

r_1 = [x + (1/2)*l_1*sin(theta_1);
       h_0 + (1/2)*l_1*cos(theta_1)];

r_2 = [x + l_1*sin(theta_1) + (1/2)*l_2*sin(theta_2);
       h_0 + l_1*cos(theta_1) + (1/2)*l_2*cos(theta_2)];

% 1c. Define any required velocity terms (for masses):
dr_0 = fulldiff(r_0,GC);
dr_1 = fulldiff(r_1,GC);
dr_2 = fulldiff(r_2,GC);

% 2. Kinetic Energy:
% T_i = (1/2)*m_i*v_i^(\top)*v_i + (1/2)*I_i*w_i^(\top)*w_i
T_0 = (1/2)*m_0*(dr_0'*dr_0);
T_1 = (1/2)*m_1*(dr_1'*dr_1) + (1/2)*I_1*dtheta_1^2;
T_2 = (1/2)*m_2*(dr_2'*dr_2) + (1/2)*I_2*dtheta_2^2;
T = T_0 + T_1 + T_2;

% 3. Potential Energy:
V_0 = m_0*(h_0 - (1/2)*b_0);
V_1 = m_1*(h_0 + (1/2)*l_1*cos(theta_1));
V_2 = m_2*(h_0 + l_1*cos(theta_1) + (1/2)*cos(theta_2));
V = V_0 + V_1 + V_2;

% 4. Lagrangian:
L = T-V;

% 5. EOMs:
eq1 = fulldiff(diff(L,dx),GC) - diff(L,x);
eq1 = simplify(eq1);
eq2 = fulldiff(diff(L,dtheta_1),GC) - diff(L,theta_1);
eq2 = simplify(eq2);
eq3 = fulldiff(diff(L,dtheta_2),GC) - diff(L,theta_2);
eq3 = simplify(eq3);

% 6. Xi: non-conservative terms
Xi1 = tau; % Motor force tau on cart
Xi2 = 0;
Xi3 = 0;

% Solve for GCs
eqn1 = eq1 == Xi1;
eqn2 = eq2 == Xi2;
eqn3 = eq3 == Xi3;
syms d2x d2theta_1 d2theta_2;
sol = solve([eqn1 eqn2 eqn3], [d2x d2theta_1 d2theta_2]);

%diary('dipc_solutions');
d2x = sol.d2x;
d2theta_1 = sol.d2theta_1;
d2theta_2 = sol.d2theta_2;
%diary off;

%% Linearization
syms d2x d2theta_1 d2theta_2;
q = [x theta_1 theta_2 dx dtheta_1 dtheta_2]';
lin_point = [0 0 0 0 0 0]';

M_11 = m_0 + m_1 + m_2;
M_12 = ((cos(theta_1)*l_1^2 + cos(conj(theta_1))*abs(l_1)^2)*(m_1 + 2*m_2))/(4*l_1);
M_13 = (m_2*(cos(theta_2)*l_2^2 + cos(conj(theta_2))*abs(l_2)^2))/(4*l_2);
M_21 = (l_1*m_1*cos(theta_1))/4 + (l_1*m_2*cos(theta_1))/2 + (m_1*cos(conj(theta_1))*conj(l_1))/4 + (m_2*cos(conj(theta_1))*conj(l_1))/2;
M_22 = I_1 + (m_1*cos(theta_1 - conj(theta_1))*abs(l_1)^2)/4 + m_2*cos(theta_1 - conj(theta_1))*abs(l_1)^2;
M_23 = (l_1*m_2*cos(theta_1 - conj(theta_2))*conj(l_2))/4 + (l_2*m_2*cos(theta_2 - conj(theta_1))*conj(l_1))/4;
M_31 = (l_2*m_2*cos(theta_2))/4 + (m_2*cos(conj(theta_2))*conj(l_2))/4;
M_32 = (l_1*m_2*cos(theta_1 - conj(theta_2))*conj(l_2))/4 + (l_2*m_2*cos(theta_2 - conj(theta_1))*conj(l_1))/4;
M_33 = I_2 + (m_2*cos(theta_2 - conj(theta_2))*abs(l_2)^2)/4;

%% EOMs (calculated by hand):
eq1 = (m_0+m_1+m_2)*d2x + (1/2)*l_1*(m_1+2*m_2*l_1)*(d2theta_1*cos(theta_1)-dtheta_1^2*sin(theta_1)) + m_2*l_2*(d2theta_2*cos(theta_2)-dtheta_2^2*sin(theta_2));

% System Matrices
% M*d2X = RHS
M_11 = m_0+m_1+m_2;
M_12 = (1/2)*(l_1*(m_1+2*m_2*l_1)*cos(theta_1));
M_13 = m_2*l_2*cos(theta_2);
M_21 = (1/2)*(l_1*(m_1+2*m_2)*cos(theta_1));
M_22 = (1/2)*m_1*l_1^2 + m_2*l_1^2 + I_1;
M_23 = m_2*l_1*l_2*cos(theta_1-theta_2);
M_31 = (1/2)*m_2*l_2*cos(theta_2);
M_32 = (1/2)*m_2*l_1*l_2*cos(theta_1-theta_2);
M_33 = (1/2)*m_2*l_2^2 + I_2;

% Linearized (around working point q=0):
% ( By setting cos(theta)=1 )
M_11 = m_0 + m_1 + m_2;
M_12 = (1/2)*l_1*(m_1+2*m_2*l_1);
M_13 = m_2*l_2;
M_21 = (1/2)*l_1*(m_1+2*m_2);
M_22 = (1/2)*m_1*l_1^2 + m_2*l_1^2 + I_1;
M_23 = m_2*l_1*l_2;
M_31 = (1/2)*m_2*l_2;
M_32 = (1/2)*m_2*l_1*l_2;
M_33 = (1/2)*m_2*l_2^2 + I_2;

M_temp = [
     M_11 M_12 M_13;
     M_21 M_22 M_33;
     M_31 M_32 M_33];
 
M = [eye(3),zeros(3);zeros(3),M_temp];

d2X = [d2x; d2theta_1; d2theta_2];

RHS_1 = tau + (1/2)*(l_1*(m_1+2*m_2*l_1)*dtheta_1^2*sin(theta_1) - m_2*l_2*dtheta_2^2*sin(theta_2));
RHS_2 = (1/2)*(-m_2*l_1*l_2*dtheta_2^2*sin(theta_1-theta_2) + (m_1+2*m_2)*g*l_1*sin(theta_1));
RHS_3 = (1/2)*(m_2*l_1*l_2*dtheta_1^2*sin(theta_1-theta_2) + m_2*g*l_2*sin(theta_2));

%Linearized:
RHS_1 = tau;
RHS_2 = (1/2)*((m_1+2*m_2)*g*l_1*theta_1);
RHS_3 = (1/2)*(m_2*g*l_2*theta_2);

RHS = [RHS_1;
       RHS_2;
       RHS_3];
   
A_m = [0 0 0 1 0 0;
       0 0 0 0 1 0;
       0 0 0 0 0 1;
       0 0 0 0 0 0;
       0 (1/2)*(m_1+2*m_2)*g*l_1 0 0 0 0;
       0 0 (1/2)*m_2*g*l_2 0 0 0];
    
B_m = [0;
       0;
       0;
       1;
       0;
       0];

A = inv(M) * A_m;
B = inv(M) * B_m;

C = eye(6);
D = 0;

poles_ol = eig(A);
% With the parameters as defined in dipc_function we get the following
% poles:
% 0
% 0
% 3.7312
% 2.1467
% -2.1467
% -3.7312
% -> Poles in RHS -> Unstable

%% Controller
load('ABCD.mat'); %State space matrices for the system (with numeric values)

% Initial condition response
X_0 = [0 0 0.1 0 0 0]';

Q = diag([1 1 1 1 1 1]);
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

subplot(7,1,1);
plot(t,u)
ylabel('u','Interpreter','Latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(7,1,2);
plot(t,x(:,1));
ylabel('$x$','Interpreter','Latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(7,1,3);
plot(t,x(:,2));
ylabel('$\theta_{1}$','Interpreter','Latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(7,1,4);
plot(t,x(:,3));
ylabel('$\theta_{1}$','Interpreter','Latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(7,1,5);
plot(t,x(:,4));
ylabel('$\dot{x}$','Interpreter','Latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(7,1,6);
plot(t,x(:,5));
ylabel('$\dot{\theta}_1$','Interpreter','Latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;

subplot(7,1,7);
plot(t,x(:,6));
ylabel('$\dot{\theta}_2$','Interpreter','Latex');
set(get(gca,'ylabel'),'rotation',0)
grid on;
