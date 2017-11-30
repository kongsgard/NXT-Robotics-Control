%% Load the desired data file, called run6.mat, if input n is 6, etc.
eval(['load run',num2str(19)])

%% Below, estimate arm link lengths (L1, L2) and also
% the actual angles of the joints when the system starts.
% (Remember, the encoders always start at 0, so offsets
% are almost certainly needed, to get correct estimates
% of true angles.)
a1 = 177.5; % initial angles, in degrees, as offsets.
a2 = 11.5;
L1 = 0.143; % length is in meters, so gravity, etc., fit to SI units later
L2 = 0.079;

%% Make sure SIGN and UNITS of theta values are correct!
% units should to radians. counterclockwise is positive, for
% standard cos and sin functions later to get x and y coordinates of ball
theta1 = (pi/180)*(a1-pa.signals.values);
theta2 = (pi/180)*(a2-pb.signals.values);

%% (x1,y1) is the elbow. (x2,y2) is the center of the ball.
% units are meters for length; seconds for time.
% BE SURE TO USE ABSOLUTE ANGLES for cos and sin functions!
% (i.e., theta1+theta2, to get absolute angle of second link.)
x1 = L1*cos((theta1));
y1 = L1*sin((theta1));
t1 = pa.time;
t2 = pb.time;
x2 = L2*cos((theta1+theta2)) + x1;
y2 = L2*sin((theta1+theta2)) + y1;

%% Estimate velocity across a subsection of the data,
% using polynominal fits to neighboring points (at each
% time of interest)
dt = 5e-4;
t2u = 1:dt:3.5;
x2u = 0*t2u;
y2u = 0*t2u;
for n=1:length(t2u);
    fi = find(t2<t2u(n));
    fi = fi(end);
    ui = [-3:4];
    % Use a quadratic (2nd-order) "polyfit" across several points,
    % and then use "polyder" to get a polynomial for its derivative:
    ppu = polyfit(t2(fi+ui),x2(fi+ui),2);
    x2u(n) = polyval(polyder(ppu),t2u(n));
    ppu = polyfit(t2(fi+ui),y2(fi+ui),2);
    y2u(n) = polyval(polyder(ppu),t2u(n));
end

%% Let user select "time of release" from a velocity plot:
figure(11); clf
plot(t2u,x2u,'b'); hold on
plot(t2u,y2u,'r');
legend('x velocity of ball','y velocity of ball')
title('Click to estimate TIME of release...')
fprintf('Click at estimated velocity peak, when ball was likely released.\n')
ti = ginput(1);
ti = ti(1); % only care about TIME of mouse click...

%% Calculate and display the ball trajectory after "release".
% Note that the arm still moves very close to the ball...
figure(12); clf
plot(x2,y2); hold on
plot(x1,y1,'r'); hold on
axis image
xi = interp1(t2,x2,ti(1));
yi = interp1(t2,y2,ti(1));
vxi = interp1(t2u,x2u,ti(1));
vyi = interp1(t2u,y2u,ti(1));
tp = 0:1e-3:.5;
plot(xi,yi,'r+');
plot(xi+vxi*tp,yi+vyi*tp-.5*9.81*tp.^2,'g');
title('Ball trajectory - ESTIMATE')
A = axis;
plot([-1 1],[0 0],'k-')
axis([A(1) 0.3 -.05 A(4)])
if exist('dthrow','var')
    plot(1e-2*dthrow*[1 1],[-.035 .15],'k--')
    plot(1e-2*dthrow+[-2.9 2.9 3.9 -3.9 -2.9]*(.5*.0254),[0 0 4.9 4.9 0]*.0254-.035,'r-')
else
    text(0,0.1,'No "actual distance" data for cup was given...');
    text(0,0.08,'Red dashed line shows top of cup (approx).');
    plot([0 .3],4.9*.0254-.035+[0 0],'r--')
end
% plot arm, for a few frames:
dt_show = .02;
tshow = ti(1)+[-8:2]*dt_show;
for n=1:length(tshow)
    x1s = interp1(t1,x1,tshow(n));
    y1s = interp1(t1,y1,tshow(n));
    x2s = interp1(t1,x2,tshow(n));
    y2s = interp1(t1,y2,tshow(n));
    pp=plot([0 x1s x2s],[0 y1s y2s],'k-','LineWidth',2,'Color',[.6 .6 .6]);
    if tshow(n)==ti(1)
        set(pp,'Color','r')
    end
end

%% Now, use a weighted filter to estimate acceleration, based on
% the velocity estimate. This is equivalent to a weighted average of
% "quadratic fits" based on 3 evenly spaced points, across a range of
% points -- as in the Homework 1, Problem 6 problem.
Nu = 5;
t2a = t2u(Nu+1:end-(Nu+1));
x2a = 0*t2a;
y2a = 0*t2a;
N = -Nu:Nu;
%keyboard
wt = N.^2;
wt = (1/sum(wt))*wt;
wt = wt.*(1./(2*N*dt));
wt(Nu+1) = 0;
ui = [-Nu:Nu];
for n=1:length(t2a)
    x2a(n) = sum(wt.*x2u(ui+Nu+n));
    y2a(n) = sum(wt.*y2u(ui+Nu+n));
end

%% Some additional "raw data" plots, for potential debugging
% purposes:
figure(3); clf
plot(x1,y1,'r+-');
hold on
plot(x2,y2,'b+-');
axis image
grid on

%% Plot encoder readings and motor output, for "Motor A"
figure(1); clf
subplot(211)
plot(refa.time,refa.signals.values,'.-')
hold on
plot(pa.time,pa.signals.values,'r.-')
legend('Reference q_1','Actual q_1');
grid on
xlabel('Time (s)')
ylabel('Angle (deg)')
subplot(212)
plot(ma.time,squeeze(ma.signals.values),'k.-')
grid on
xlabel('Time (s)')
ylabel('Lego Motor A Command')

%% Plot data for "Motor B"
figure(2); clf
subplot(211)
% plot reference too, if available.
% (In saved data, "refb" just stores TIME,
% so DO NOT USE THIS as a "reference".)
%plot(refb.time,refb.signals.values,'.-')
hold on
plot(pb.time,pb.signals.values,'r.-')
legend('Actual q_2');
grid on
xlabel('Time (s)')
ylabel('Angle (deg)')
subplot(212)
plot(mb.time,squeeze(mb.signals.values),'k.-')
grid on
xlabel('Time (s)')
ylabel('Lego Motor B Command')