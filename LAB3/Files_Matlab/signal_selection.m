% close all
clear
warning("off")
clc

load("..\lab3_data\white_noise_2.mat")

Ts = 0.001;

y = y2;
N = length(y);
fs = 1/Ts;
df = fs / N;
f = 0:df:(fs/2-df);
Y = abs(fft(y - mean(y)));

% Figure Signal selection
f1 = figure('Name','Signal selection','NumberTitle','off');
hold on;
plot(2*pi*f, Y(1:N/2)/max(Y(1:N/2)), '-o', LineWidth=1.4, Color=[0.45 0.06 0.06]);
xlim([0 3.12]);
xaxisproperties= get(gca, 'XAxis');
xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
ylim([-0.03 1.03]);
yaxisproperties= get(gca, 'YAxis');
yaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
% alpha = 0.25;

omega = 0:0.01:4;
for alpha = [0, 0.25, 0.5, 0.75]

phi = 4 * alpha * (1 - alpha) ./ abs(1 - (1 - 2*alpha) * exp(1i * omega)).^2;

if alpha == 0
    plot(omega, phi, LineWidth=.7);
else
    plot(omega, phi/max(phi), LineWidth=.7);
end
end

xlabel('$$\mathbf{Frequency \; [rad/s]}$$','Interpreter','latex','FontSize',12);
ylabel('$$\mathbf{Normalized \; magnitude}$$','Interpreter','latex','FontSize',12);
% title('$$\mathbf{Working \; region}$$','Interpreter','latex','FontSize',14);
legend('Data point', 'location', 'north', 'FontSize',10);
width=500;
height=350;
set(gcf,'position',[80,180,width,height]);
saveas(f1,'img/fig_signal_selection','svg');
legend({'Signal'; '\alpha=0, \alpha=1'; '\alpha=0.25'; '\alpha=0.5'; '\alpha=0.75'});