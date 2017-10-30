%%
dt = 5e-3;             % seconds
t = -0.2:dt:2.2;       % time
y = 15 * sin(6*t);     % true angle
y_enc = round(y);      % measurement from encoder

%% 6a
v = 90 * cos(6*t);

%% 6b
v_est = zeros(1, length(t));
for i = 2:length(t)-1
     v_est(i) = (y_enc(i+1) - y_enc(i-1)) / (2*dt);
end

figure(1); clf; hold on;
plot(t, v);
plot(t, v_est, 'r-');
xlim([0 2]);
title('True velocity and estimate', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (s)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Velocity (rad/s)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$y$', '$v_{\mathrm{est}}$'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'southwest');

%% 6c 
N = 20;
v_est = zeros(1, length(t));

for i=21:length(t)-20
    v_est(i) = (y_enc(i+N*1) - y_enc(i-N*1)) / (N*2*dt);
end

figure(2); clf; hold on;
plot(t, v);
plot(t, v_est, 'r-');
xlim([0 2]);
title('True velocity and estimate', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (s)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Velocity (rad/s)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$y$', '$v_{\mathrm{est}}$'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'southwest');

%% 6d
N_subsets = 20;

k = 0.00034843;
weight = 0;
for n=1:N_subsets
    weight = weight + k*n^2;
end

v_est = zeros(1, length(t));
for i = 1:N_subsets
    N = i;
    for j = 1:length(t)
        if ((j-N > 0) && (j+N*1 < length(t + 1))) 
            v_est(j,N) = k * N^2 * ((y_enc(j+N) - y_enc(j-N)) / (N*2*dt));
        end
    end
end

v_est_final = zeros(length(v_est(:,1)), 1);
for n = 1:length(v_est(:,1))
    for i = 1:N_subsets
        v_est_final(n) = v_est_final(n) + v_est(n,i);
    end
end

figure(3); clf; hold on;
plot(t, v)
plot(t, [0; 0; v_est_final]);
xlim([0 2]);
title('True velocity and estimate', 'FontSize', 30, 'Interpreter', 'Latex');
xlabel('Time (s)', 'FontSize', 20, 'Interpreter', 'Latex');
ylabel('Velocity (rad/s)', 'FontSize', 20, 'Interpreter', 'Latex');
legend({'$y$', '$v_{\mathrm{est}}$'}, 'FontSize', 20, 'Interpreter', 'Latex', 'Location', 'southwest');