
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