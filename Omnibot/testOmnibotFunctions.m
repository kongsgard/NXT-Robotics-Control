
%% Test J = getOmnibotJacobian( phi_b )

phi_b = pi/6;
J_calc = getOmnibotJacobian( phi_b );
J_act = [ -0.0213 0.0107  0.0107
          0.0000  -0.0185 0.0185
          -0.0731 -0.0731 -0.0731 ];
if abs(J_calc-J_act) < 0.01
    disp('getOmnibotJacobian returns the correct Jacobian for phi_b = pi/6');
end

%% Test F = getOmnibotF( phi_b )

phi_b = pi/6;
F_calc = getOmnibotF( phi_b );
F_act = inv(getOmnibotJacobian( phi_b ));

if abs(F_calc - F_act) < 0.01
    disp('getOmnibotF returns the correct F matrix for phi_b = pi/6');
end

%% Test [x, y] = createSquarePattern( sideLength, resolution )
[x, y] = createSquarePattern(2, 1000);
plot(x, y, 'LineWidth', 5); % Should plot a square from (0,0) -> (1,0) -> (1,1) -> (0,1) -> (0,0)

%% Create joint trajectories to move the center of body of the robot in a _square_ pattern
sideLength = 1;     % Square side length (meters)
resolution = 1000;  % Number of points along each side of the square
[x, y] = createSquarePattern( sideLength, resolution );

dt = 0.01; % Time step
[q, q_dot] = calculateJointTrajectories(x, y, dt);
