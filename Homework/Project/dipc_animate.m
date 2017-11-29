function M = dipc_animate( t_out, y_out )

dt = (1/15);
t = 0:dt:max(t_out);
%M = zeros(1,length(t));

for n=1:length(t)
    %figure('units','normalized','outerposition',[0 0 1 1]);
    figure(10); clf
    
    x = interp1(t_out,y_out(:,1),t(n));
    theta_1 = interp1(t_out,y_out(:,2),t(n));
    theta_2 = interp1(t_out,y_out(:,3),t(n));
    q = [x; theta_1; theta_2];
    
    simulate_frame_for_cart_with_two_link_pendulum(q);
    M(n) = getframe;
end

end

