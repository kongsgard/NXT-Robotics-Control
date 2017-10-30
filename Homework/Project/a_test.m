figure;

q1 = pi/4;
q2 = pi/4;
q3 = pi/4;

q = [q1; q2; q3];

% Lengths of each joint
L_1 = 0:0.1:1; % (meter)
L_2 = 0:0.1:1; % (meter)
L_3 = 0:0.1:1; % (meter)

%%
L_1_x = L_1 * cos(q(1));
L_1_y = L_1 * sin(q(1));
L_2_x = L_1_x + L_2 * cos(q(1) + q(2));
L_2_y = L_1_y + L_2 * sin(q(1) + q(2));
L_3_x = L_2_x + L_3 * cos(q(1) + q(2) + q(3));
L_3_y = L_2_y + L_3 * sin(q(1) + q(2) + q(3));

%%
L_1_x = L_1 * cos(q(1));
L_1_y = L_1 * sin(q(1));
L_2_x = L_1_x(end) + L_2 * cos(q(1) + q(2));
L_2_y = L_1_y(end) + L_2 * sin(q(1) + q(2));
L_3_x = L_2_x(end) + L_3 * cos(q(1) + q(2) + q(3));
L_3_y = L_2_y(end) + L_3 * sin(q(1) + q(2) + q(3));

L_1_x_l = 0.1 * cos(pi/4);
L_1_y_l = - 0.1 * sin(pi/4);
L_1_x_parallel = L_1_x + L_1_x_l; L_1_x_parallel = fliplr(L_1_x_parallel);
L_1_y_parallel = L_1_y + L_1_y_l; L_1_y_parallel = fliplr(L_1_y_parallel);

% rectangle('Position', [-0.05 0 L_1_x L_1_y], 'Curvature', 1);

patch([L_1_x L_1_x_parallel], [L_1_y L_1_y_parallel], 'green')
patch(L_2_x, L_2_y, 'green')
patch(L_3_x, L_3_y, 'green')

% rectangle('Position', [-0.05 0 0.1 1], 'Curvature', 1);

axis equal;
% axis([-1 1.5 0 3]);
% set(gca,'XTickLabel',[],'YTickLabel',[]);