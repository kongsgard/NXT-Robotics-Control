%% Problem 3f)
    
Jw      = 1.6e-05;          % (kg*m^2) Wheel inertia
Rw      = 0.0310;           % (meters) Radius of wheel
L       = 0.0950;           % (meters) Length from wheel to body mass.
mb      = 0.5910;           % (kg) body mass
mw      = 0.034;            % (kg) combined mass of BOTH wheels
Jb      = 0.0019;           % (kg*m^2) Body inertia
B       = 0.062;            % damping factor (approximate!);
g       = 9.81;             % (m/s^2) gravity
Nmotors = 2;                % number of motors used
Klego   = 2;                % A scaling parameter for motor output (approx)
Km      = Nmotors*B/Klego ; % Motor effort constant; Km = 0.062 (approx)

M_11 = Jw + Rw^2*(mb+mw);
M_12 = Rw*L*mb;
M_21 = Rw*L*mb;
M_22 = Jb + L^2*mb;

a = (Km*(M_11+M_12))/(M_12^2-M_11*M_22);
b = (-B*(M_11+2*M_12+M_22))/(M_12^2-M_11*M_22);
c = (mb*g*L*M_11)/(M_12^2-M_11*M_22);
d = (mb*g*L*B)/(M_12^2-M_11*M_22);
e = -(Km*(M_12+M_22))/(M_12^2-M_11*M_22);
f = (Km*mb*g*L)/(M_12^2-M_11*M_22);

syms K1 K2 K3 K4

s = [-2, -10, -20, -100]';
eq = 0 == s.^4 + (b+a*K4+e*K3).*s.^3 + (c+a*K2+e*K1).*s.^2 + (d+f*K3).*s + f*K1;
K = solve(eq, [K1 K2 K3 K4]);

fprintf("K1: %2.2f\n", K.K1);
fprintf("K2: %2.2f\n", K.K2);
fprintf("K3: %2.2f\n", K.K3);
fprintf("K4: %2.2f\n", K.K4);

%%
s1 = -2;
s2 = -10;
s3 = -20;
s4 = -100;

eq1 = 0 == s1^4 + (b+a*K4+e*K3)*s1^3 + (c+a*K2+e*K1)*s1^2 + (d+f*K3)*s1 + f*K1;
eq2 = 0 == s2^4 + (b+a*K4+e*K3)*s2^3 + (c+a*K2+e*K1)*s2^2 + (d+f*K3)*s2 + f*K1;
eq3 = 0 == s3^4 + (b+a*K4+e*K3)*s3^3 + (c+a*K2+e*K1)*s3^2 + (d+f*K3)*s3 + f*K1;
eq4 = 0 == s4^4 + (b+a*K4+e*K3)*s4^3 + (c+a*K2+e*K1)*s4^2 + (d+f*K3)*s4 + f*K1;

K = solve([eq1 eq2 eq3 eq4], [K1 K2 K3 K4]);

fprintf("K1: %2.2f\n", K.K1);
fprintf("K2: %2.2f\n", K.K2);
fprintf("K3: %2.2f\n", K.K3);
fprintf("K4: %2.2f\n", K.K4);