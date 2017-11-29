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

diary('dipc_solutions');
d2x = sol.d2x
d2theta_1 = sol.d2theta_1;
d2theta_2 = sol.d2theta_2;
diary off;