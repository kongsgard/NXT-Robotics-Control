function simulate_frame_for_cart_with_two_link_pendulum( q )
%SIMULATE_FRAME_FOR_CART_WITH_TWO_LINK_PENDULUM
% Relative angles
x = q(1);
theta1 = q(2);
theta2 = q(2) + q(3);

%% System parameters
cart_width = 2;
cart_height = 0.8;
L1 = 1.5;          % Length of rod 1
L2 = 1.5;          % Length of rod 2

%% Set up figure
figure('units','normalized','outerposition',[0 0 1 1]);
clf;

%% Calculations
% Ground line
plot([-5 5],-1+[0 0],'k-','LineWidth',2); hold on

% Cart
atemp = pi*[0:.02:1];
rt = .2;
xcart = [rt*cos(atemp), -cart_width/2 -cart_width/2 cart_width/2 cart_width/2 rt*cos(atemp(1))];
ycart = [rt*sin(atemp), 0 -cart_height -cart_height 0 rt*sin(atemp(1))];
plot(x+xcart,ycart,'b','LineWidth',2); hold on
axis image
rw = .2;
aw = -x/rw;
av = 2*pi*[0:.01:1];
patch(x-.7+rw*cos(av),-.8+rw*sin(av),.1+0*av,'w','EdgeColor','b',...
    'LineWidth',2)
patch(x+.7+rw*cos(av),-.8+rw*sin(av),.1+0*av,'w','EdgeColor','b',...
    'LineWidth',2)

% Rod 1
ra = .1;
x1 = [ra*cos(atemp), ra*cos(atemp+pi), ra*cos(atemp(1))];
y1 = [L1+ra*sin(atemp), ra*sin(atemp+pi), L1+ra*sin(atemp(1))];
a1 = atan2(y1,x1);
r1 = (x1.^2 + y1.^2).^.5;
plot(x+r1.*cos(a1+theta1),r1.*sin(a1+theta1),'g',...
    'Color','green','LineWidth',2);

% Rod 2
xm = x-L2*sin(theta1);
ym = L2*cos(theta1);
plot(xm+r1.*cos(a1+theta2),ym+r1.*sin(a1+theta2),'r',...
    'LineWidth',2);

%% Add descriptive text
pos = get(gcf, 'Position');
text(3, 5, '$q = \begin{array}{|c|} x \\ \theta_1 \\ \theta_2 \end{array}$', 'Interpreter', 'Latex', 'FontSize', 20);

%% Change axis
axis([-5 5 -1.2 6])

end

