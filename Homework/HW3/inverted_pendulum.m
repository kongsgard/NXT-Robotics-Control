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

%% a) Pole placement
K = place(A, B, [-2, -10, -20, -100]);
poles = eig(A-B*K);
disp(poles);

%% b) LQR
Q = diag([0.01 1 0 0]);
R = 0.001;

K = lqr(A,B,Q,R);
poles = eig(A-B*K);
disp('Closed loop poles: '); disp(poles);