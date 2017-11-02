function pomni = draw_omni(xi,pomni)

% draws or "resets" drawing objects for the omni-bot.
% xi(1) = x of COM
% xi(2) = y of COM
% xi(3) = angle (in RADIANS)
%
%
if exist('pomni','var') && ~isempty(pomni) % if a non-empty argument was input...
    NEW_OBJ = false; % only reset XData and YData properties...
else
    NEW_OBJ = true; % create a NEW drawing object (and return as output)
    hold on
end
comni = [.5 .5 .5]; % body color
cwheel = [.8 .8 .5]; % wheel color

L = .088; % (m) distance from center to each wheel contact point at ground
r = .032; % (m) radius of wheel
rth = .03; % (m) rth for drawing, only...
dclear = .005; % distance between wheels and frame of robot... (?)
%[L,r,rth] = omni_params; % you may wish to store all dimensions in a
%SINGLE FILE, to be used by functions such as "q2xi" and "xi2q", etc...

x_wh = rth*([0 1 1 0 0]-.5);
y_wh = 2*r*([0 0 1 1 0]-.5);
r_wh = (x_wh.^2 + y_wh.^2).^.5;
a_wh = atan2(y_wh, x_wh);
mth = .04;
mw = .03;
y_m_off = .02;
x_m = mth*[0 1 1 0 0]-.5*mth;
y_m = mw*[0 0 1 1 0]-.5*mw+y_m_off;
r_m = (x_m.^2 + y_m.^2).^.5;
a_m = atan2(y_m,x_m);

x_nxt = .111;  % Dimensions of Lego NXT block
x_nxt_off = .111-.05; % from center to end
y_nxt = .072;
x_nxt_pts = x_nxt*[0 1 1 0 0]-x_nxt_off;
y_nxt_pts = y_nxt*([0 0 1 1 0]-.5);
r_nxt_pts = (x_nxt_pts.^2 + y_nxt_pts.^2).^.5;
a_nxt_pts = atan2(y_nxt_pts,x_nxt_pts);

Ltri = 6*.008; % center triangle; length of one side
Wtri = .008; % width of each piece

Ltri = (L-.5*rth-dclear)*2;
wheel_angs = [-120 0 120]*(pi/180);
x1 = xi(1) + L*cos(wheel_angs+xi(3));
x1i = xi(1) + (L-.5*rth-dclear)*cos(wheel_angs+xi(3));
x1e = xi(1) + Ltri*cos(wheel_angs+xi(3)+pi/3); % point to tips of vehicle body
y1 = xi(2) + L*sin(wheel_angs+xi(3));
y1i = xi(2) + (L-.5*rth-dclear)*sin(wheel_angs+xi(3));
y1e = xi(2) + Ltri*sin(wheel_angs+xi(3)+pi/3);

for n=1:3
    xwh = x1(n) + r_wh.*cos(a_wh+xi(3)+wheel_angs(n));
    ywh = y1(n) + r_wh.*sin(a_wh+xi(3)+wheel_angs(n));
    
    if NEW_OBJ
        pomni(0+n) = plot(xwh, ywh,'k','LineWidth',2,'Color',cwheel);
    else
        set(pomni(0+n),'XData',xwh,'YData',ywh);
    end
end
if NEW_OBJ
    pomni(4) = plot(x1e([1:end,1]), y1e([1:end,1]),'k','LineWidth',2,'Color',comni);
else
    set(pomni(4),'XData',x1e([1:end,1]),'YData',y1e([1:end,1]));
end