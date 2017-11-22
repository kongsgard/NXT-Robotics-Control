clear all; format compact  % compact produces single-spaced output

% Define symbolic variables in matlab:
syms theta_0 h_0 b_0 l_0 m_0 I_0 tau;
syms theta_1 l_1 m_1 I_1;
syms theta_2 l_2 m_2 I_2;
syms g;

% 1a. GC's (generalized coordinates), and their derivatives:
GC = [{theta_0},{theta_1},{theta_2}]; % Using ABSOLUTE angles here?
dtheta_0 = fulldiff(theta_0,GC); % time derivative. GC are variables (over time)
dtheta_1 = fulldiff(theta_1,GC);
dtheta_2 = fulldiff(theta_2,GC);

% 1b. Geometry of the masses/inertias, given GC's are freely changing...
r_0 = [theta_0; 
       0];
   
r_1 = [theta_0 + (1/2)*l_1*sin(theta_1);
       h_0 + (1/2)*l_1*cos(theta_1)];

r_2 = [theta_0 + l_1*sin(theta_1) + (1/2)*l_2*sin(theta_2);
       h_0 + l_1*cos(theta_1) + (1/2)*l_2*cos(theta_2)];];

% 1c. Define any required velocity terms (for masses):
dxw = fulldiff(xw,GC);
dxb = fulldiff(xb,GC);
dyb = fulldiff(yb,GC);

% 2. Kinetic Energy:
T = (1/2)*(mw*dxw^2 + Jw*dphiw^2 + mb*(dxb^2 + dyb^2) + Jb*dthetab^2)

% 3. Potential Energy:
V = mb*g*yb

% 4. Lagrangian:
L = T-V

% 5. EOMs:
eq1 = fulldiff(diff(L,dphiw),GC) - diff(L,phiw)
eq2 = fulldiff(diff(L,dthetab),GC) - diff(L,thetab);
eq2 = simplify(eq2)

% 6. Xi: non-conservative terms
Xi1 = tau - b*(dphiw-dthetab)  % Motor torque tau, and back emf damping b
Xi2 = -tau + b*(dphiw-dthetab)  % (equal and opposite to above)
