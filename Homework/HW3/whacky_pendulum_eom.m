clear all; format compact  % compact produces single-spaced output

% Define symbolic variables
syms r_c theta F_c k L beta m_c m_p J_c J_p g

% 1a. GC's (generalized coordinates), and their derivatives:
GC      = [{r_c},{theta}]; % Using ABSOLUTE angles here
dr_c    = fulldiff(r_c,GC); % time derivative. GC are variables (over time)
dtheta  = fulldiff(theta,GC);

% 1b. Geometry of the masses/inertias, given GC's are freely changing...
x_c = r_c * sin(theta);
y_c = r_c * cos(theta);
x_p = L * sin(theta + beta);
y_p = L * cos(theta + beta);

% 1c. Define any required velocity terms (for masses):
dx_c = fulldiff(x_c,GC);
dy_c = fulldiff(y_c,GC);
dx_p = fulldiff(x_p,GC);
dy_p = fulldiff(y_p,GC);

% 2. Kinetic Energy:
T = (1/2)*(m_c*dr_c^2 + J_c*dtheta^2) + (1/2)*J_p*dtheta^2;
%T = (1/2)*(m_c*(dx_c^2+dy_c^2) + J_c*dtheta^2 + J_p*dtheta^2);

% 3. Potential Energy:
V = m_c*g*L*(1-r_c*cos(theta)) + m_p*g*L*(1-cos(theta+beta)) + (1/2)*k*(r_c-L)^2; 
% V = m_c*g*(L-y_c) + m_p*g*(L-y_p) + (1/2)*k*(r_c-L)^2;

% 4. Lagrangian:
La = T-V;

% 5. EOMs:
eq1 = fulldiff(diff(La,dr_c),GC) - diff(La,r_c);
eq1 = simplify(eq1);
eq2 = fulldiff(diff(La,dtheta),GC) - diff(La,theta);
eq2 = simplify(eq2);

% 6. Xi: non-conservative terms
Xi1 = F_c;  % 
Xi2 = 0;  %

% 7. Solve for GC's:
eqn1 = eq1 == Xi1;
eqn2 = eq2 == Xi2;
syms d2r_c d2theta;
d2r_c = solve(eqn1, d2r_c)
d2theta = solve(eqn2, d2theta)