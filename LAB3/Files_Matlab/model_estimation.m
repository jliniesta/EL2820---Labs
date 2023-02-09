% [ue, ye, uv, yv] = load_data("..\lab3_data\binary_signal_2.mat", "u", "y", 0, 1.);
[ue, ye, uv, yv] = load_data("..\lab3_data\white_noise_2.mat", "u2", "y2", 0.25, 1);
% [ue, ye, uv, yv] = load_data("..\lab3_data\white_noise_3.mat", "u", "y", 0.2, 1);

Ts = 0.001;

function [u_est, y_est, u_val, y_val] = load_data(path, name_u, name_y, t_min, t_max)
file = load(path, name_u, name_y);

u = file.(name_u);
y = file.(name_y)';

u = reshape(u.',[], 1);
y = reshape(y.',[], 1);

start_idx = floor(length(u) * t_min) + 1
end_idx = floor(length(u) * t_max)
u = u(start_idx:end_idx);
y = y(start_idx:end_idx);

% Remove later !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11
% delay = 8;
% y = y((1+delay):end);
% u = u(1:end-delay);
% Remove later !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11

u_no_mean = u - mean(u);
y_no_mean = y - mean(y);

% figure();
% plot(y_no_mean);
% title(path);
end_idx = floor(length(u) /2);
u_est = u_no_mean(1:end_idx, 1);
u_val = u_no_mean((end_idx+1):end, 1);
y_est = y_no_mean(1:end_idx, 1);
y_val = y_no_mean((end_idx+1):end, 1);
end

% u_w4_val
% y_w4_val
% w4_val
% 
% u_w4_est
% y_w4_est
% w4_est


%[ue, ye, uv, yv] = load_data("lab3_data\binary_signal_1.mat", "ub", "yb", 0, 1.);

% [ue, ye, uv, yv] = load_data("lab3_data\binary_signal_3.mat", "u", "y", 0, 1.);
% [ue, ye, uv, yv] = load_data("lab3_data\binary_signal_4.mat", "u", "y", 0, 1.);
% [ue, ye, uv, yv] = load_data("lab3_data\binary_signal_5.mat", "u", "y", 0, 1.);
% [ue, ye, uv, yv] = load_data("lab3_data\binary_signal_6.mat", "u", "y", 0, 1.);
% [ue, ye, uv, yv] = load_data("lab3_data\binary_signal_7.mat", "u", "y", 0, 1.);
% [ue, ye, uv, yv] = load_data("lab3_data\binary_signal_8.mat", "u", "y", 0, 1.);

%[ue, ye, uv, yv] = load_data("lab3_data\white_noise_1.mat", "u1", "y1", 0.25, 1);
%[ue, ye, uv, yv] = load_data("lab3_data\white_noise_4.mat", "u", "y", 0.05, 1);