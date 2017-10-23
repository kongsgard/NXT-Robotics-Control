% ME/ECE 179d - Lab 2 - Trajectory Smoothing

% Below is code you might MODIFY to create a needed function
% to "slow down" trajectories, so they can be followed more 
% accurately by the Lego motors.
%
% In practice, you would probably need to DIVIDE a trajectory 
% with any sharp corners in body position (such as the square
% trajectory), because such shapes otherwise involve suddenly
% jumps in velocity.
%
% Here, we just consider "y(t)", where y might represent a joint
% angle, or it might really be the y coordinate of the omnibot.
% (That's up to you... Either seems like a reasonable plan to me!)
%
% Katie Byl, UCSB, Oct. 16, 2017

% Design a simple trajectory. Here, y(t) goes at constant velocity:
t = 0:.01:2;
v = 2; % velocity of output (a constant)
y = v*t;

% Now, "slow down" the initial part, by "relabeling" time points
amax = 10 % max acceleration possible
tend = v/amax % how long is needed to get to max vel
yend = (1/2)*amax*(tend^2)

% Find initial points, which need new "time stamps"
fi_scale = find(y<=yend);
t_last = t(fi_scale(end))
t_scale = tend*sqrt(t(fi_scale)./t_last)

% Then find the rest of the points, which will need a time shift:
fi_shift = find(y>yend);
t_shift = t(fi_shift) + (tend - t_last)

% The new time points include both sets, defined above
tnew = [t_scale, t_shift];  % Just redefine the time points

% (Notice the y points did not change at all, but time was redefined.)

figure(1); clf
plot(t,y,'b--','LineWidth',2); hold on
plot(tnew,y,'r-','LineWidth',2)

legend('Initial Points','After Slow-Down (at start)')

% We can also "slow down" points at the end:
fi_scale = find(y>=(y(end)-yend));
dt_last = tnew(end) - tnew(fi_scale(1)); % current time spent going this dy distance
% Below, define new "dt" values, with respect to time when slow-down
% starts:
dt_scale = tend - tend*sqrt((tnew(end)-tnew(fi_scale))./dt_last);
tnew2 = tnew;
tnew2(fi_scale) = tnew(fi_scale(1)) + dt_scale;

% Plot using the "tnew2" time stamps, which are also redefined to
% include a "slow down" period at the end:
plot(tnew2,y,'k-.','LineWidth',2)

legend('Initial Points','After Slow-Down (at start)',...
    'Also with Slow-Down at end','Location','SouthEast')
grid on
