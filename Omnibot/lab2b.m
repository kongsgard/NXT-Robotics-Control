%% This script is a template for generating an elliptical trajectory

% Define the sampling time of the trajectory
Ts_traj = 0.3;
t_max = 20;
t = 0:Ts_traj:t_max;
N = length(t);

%Define angle of (half) ellipse 
theta = linspace(0,pi,N); 

%Target location -- this is where the laser "bullseye" is
x0 = .9144;      % 3 feet from start position, in x
y0 = 0;          % aligned with initial axis the laser points

%Generate the ellipse
LongWidth =  4*12*.0254; %This is the desired ending position on the x-axis
y = (LongWidth/2)*sin(theta-pi/2);
x = (LongWidth/2)*cos(theta-pi/2); %The x direction must avoid the "obstacle"
% The goal is to travel the distance "LongWidth" in y. However,
% you may wish to adjust the y trajectory below to "warp" the
% command to end in the desired location.
x=x-x(1);  % ensure we start at "x=0" when t=0
y=y-y(1);

%Calculate phi to orient robot toward target at all times from part 1 of lab
phi = atan((y0-y)./(x0-x));

%% Differentiate x, y, phi to get velocities
v_x = [0, diff(x)/Ts_traj];
v_y = [0, diff(y)/Ts_traj];
v_phi = [0, diff(phi)/Ts_traj];

%% Below are some plots and animation scripts for visualization

figure(501); clf
plot(x,y,'b--','LineWidth',2);
hold on;
plot(x0,y0,'ko','MarkerFaceColor','r')
plot(x(1),y(1),'ks','MarkerFaceColor',[0 .7 0])
plot(x(1),y(1)+LongWidth,'k>','MarkerFaceColor',[.9 .6 0])
plot(x(1)+[0 0 -1 -1 0]*12*.0254,...
    y(1) + [1 3 3 1 1]*12*.0254,'c-','LineWidth',3)
p2 = plot([x(1) x0],[y(1),y0],'r'); 
legend('trajectory','target (3 feet from start)','start (for robot body)',...
    'end (4 feet from start)','No-go zone','laser beam',...
    'Location','EastOutside')
axis image;
grid on
axis([-.5 1.2 -.5 1.7])
set(gca,'XTick',[-10:10]*(12*.0254),'YTick',[-10:10]*(12*.0254));
text(0.05,-.2,'Grid at 1-foot spacing')
title('Lab 5 Contest Schematic')
xlabel('x direction (meters)')
ylabel('y direction (meters)')

p1 = draw_omni_lab5([x(1); y(1); phi(1)]);
drawnow
for n = 1:length(x)
    %pause(0.02);
    p1 = draw_omni_lab5([x(n); y(n); phi(n)],p1);
    set(p2,'XData',[x(n),x0],'YData',[y(n),y0]);
    drawnow
end

%% Plot trajectories
figure(502); clf
subplot(3,1,1);
plot(t,x);
ylabel('X_b (m)'); xlabel('Time (normalized)'); grid on

subplot(3,1,2);
plot(t,y);
ylabel('Y_b (m)'); xlabel('Time (normalized)'); grid on

subplot(3,1,3);
plot(t, unwrap(phi)*180/pi);
ylabel('\phi_b (deg)'); xlabel('Time (normalized)'); grid on

%% Plot velocities
figure(502); clf
subplot(3,1,1);
plot(t,v_x);
ylabel('v_x_b (m/s)'); xlabel('Time (normalized)'); grid on

subplot(3,1,2);
plot(t,v_y);
ylabel('v_y_b (m/s)'); xlabel('Time (normalized)'); grid on

subplot(3,1,3);
plot(t, unwrap(v_phi)*180/pi);
ylabel('v_\phi_b (rad/s)'); xlabel('Time (normalized)'); grid on

%% Next use your code from lab 2A to generate joint angle trajectories, 
%noting that the jacobian is NOT constant in this case..
[t, q, q_dot] = calculateJointTrajectoriesImproved(x, y, Ts_traj);
