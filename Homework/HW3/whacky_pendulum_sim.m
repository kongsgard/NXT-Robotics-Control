%% Whacky Pendulum Simulation (F_c = 0)
X_0 = [0; 0.4; 0; 0];
[t_out,y_out] = ode45(@whacky_pendulum_function,[0 20],X_0');

figure(11); clf;
plot(t_out, y_out);
title('Whacky Pendulum ($F_c = 0$)','FontSize',30,'Interpreter','Latex');
xlabel('Time (seconds)','FontSize',20,'Interpreter','Latex');
ylabel('Angle (rad)','FontSize',20,'Interpreter','Latex');
legend({'$r_c$','$\theta$','$\dot{r_c}$','$\dot{\theta}$'},'Location','NorthWest','FontSize',20,'Interpreter','Latex')

M = p1_animate(t_out, y_out);

%% Whacky Pendulum Simulation (F_c = -2*dr_c)
% (Change F_c in 'whacky_pendulum_function)
X_0 = [0; 0.4; 0; 0];
[t_out,y_out] = ode45(@whacky_pendulum_function,[0 100],X_0');

figure(11); clf;
plot(t_out, y_out);
title('Whacky Pendulum ($F_c = -2*\dot{r_c}$)','FontSize',30,'Interpreter','Latex');
xlabel('Time (seconds)','FontSize',20,'Interpreter','Latex');
ylabel('Angle (rad)','FontSize',20,'Interpreter','Latex');
legend({'$r_c$','$\theta$','$\dot{r_c}$','$\dot{\theta}$'},'Location','NorthWest','FontSize',20,'Interpreter','Latex')

M = p1_animate(t_out, y_out);