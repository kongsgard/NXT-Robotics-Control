function M = p1_animate(tout,yout)

beta = 40*pi/180;
L = 0.5;

dt = (1/15);
t = 0:dt:max(tout);

xb = ([0 1 1 0 0]-.5)*.1;
yb = ([0 0 1 1 0]-.5)*.15;
rb = (xb.^2 + yb.^2).^.5;
ab = atan2(yb,xb);
dr = yb(1);

for n=1:length(t)
    
    figure(2); clf
    rc = interp1(tout,yout(:,1),t(n));
    theta = interp1(tout,yout(:,2),t(n));
    
    patch(rc*sin(theta)+rb.*cos(ab+theta),...
        -rc*cos(theta)+rb.*sin(ab+theta),'r',...
        'LineWidth',2)
    hold on
    plot([0 (rc+dr)]*sin(theta),[0 -(rc+dr)]*cos(theta),'k-',...
        'LineWidth',2)
    
    plot([0 L]*sin(theta+beta),[0 -L]*cos(theta+beta),'k-',...
        'LineWidth',2)
    plot(L*sin(theta+beta),-L*cos(theta+beta),'ko','MarkerFaceColor','b',...
        'MarkerSize',20,'LineWidth',2);
    axis image
    axis(1.2*[-1 1 -1 1])
    str_val = ['t = ', num2str(t(n),'%.2f')];
    title(str_val)
    M(n) = getframe;
end
  