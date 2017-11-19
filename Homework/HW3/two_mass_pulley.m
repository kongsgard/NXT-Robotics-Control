clear all; format compact  % compact produces single-spaced output

%% EOMs
% Define symbolic variables
syms x_1 x_2 m_1 m_2 J k b R_2 R_1 g F_1

% 1a. GC's (generalized coordinates), and their derivatives:
GC      = [{x_1},{x_2}]; % Using ABSOLUTE angles here
dx_1    = fulldiff(x_1,GC); % time derivative. GC are variables (over time)
dx_2    = fulldiff(x_2,GC);

% 1b. Geometry of the masses/inertias, given GC's are freely changing...

% 1c. Define any required velocity terms (for masses):
dx_1 = fulldiff(x_1,GC);
dx_2 = fulldiff(x_2,GC);

% 2. Kinetic Energy:
T = (1/2)*m_1*dx_1^2 + (1/2)*m_2*dx_2^2 + (1/2)*J*(dx_2/R_2)^2;

% 3. Potential Energy:
V = -m_2*g*x_2 + (1/2)*k*x_1^2;

% 4. Lagrangian:
La = T-V;

% 5. EOMs:
eq1 = fulldiff(diff(La,dx_1),GC) - diff(La,x_1);
eq2 = fulldiff(diff(La,dx_2),GC) - diff(La,x_2);
eq2 = simplify(eq2);

% 6. Xi: non-conservative terms
Xi1 = F_1;      
Xi2 = -b*x_2^2*(dx_2/R_2);

%% Insert numeric values
m_1=2; m_2=1; J=0.16; k=400; b=10; R_2=0.4; R_1=0.6;  % SI units
syms d2x_1 d2x_2

eq1 = d2x_1*m_1 + k*x_1;
eq2 = d2x_2*(m_2 + J/R_2^2) - g*m_2;

%% State space
% x = [x_1 x_2 dx_1 dx_2]

A = [0      0       1       0;
     0      0       0       1;
     -k/m_1   0       0       0;
     0      0       0       -b/(m_2+(J/R_2^2))];

B = [0;
     0;
     F_1;
     0];

%% Eigenvalues
eig(A)