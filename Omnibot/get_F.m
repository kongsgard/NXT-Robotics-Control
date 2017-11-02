function F = get_F(th_b)
rw = 0.032;
L = 0.146;
a = (2*pi/3)*[-1 0 1]; % alpha angles, of wheels, wrt body frame
F = [sin(a(1,1))/rw -cos(a(1,1))/rw -L/rw; sin(a(1,2))/rw -cos(a(1,2))/rw -L/rw; ...
    sin(a(1,3))/rw -cos(a(1,3))/rw -L/rw];
R = [ cos(th_b) sin(th_b) 0; -sin(th_b) cos(th_b) 0; 0 0 1];
F = F*R;