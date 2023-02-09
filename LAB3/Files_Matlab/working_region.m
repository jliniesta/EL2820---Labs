% Selection of the working region

close all
clear
warning("off")
clc


load("..\lab3_data\working_region.mat");
Nwr = 21;
tail = 75;
y_average = getStationaryAverages(y, Nwr, tail);
u_average = getStationaryAverages(u, Nwr, 10);
u_min = 1.5;
u_max = 4;
u_star = (u_max + u_min)/2;


% Figure Working Region
f = figure('Name','Working region','NumberTitle','off');
hold on
rectangle('Position',[u_min,1,u_max-u_min,10],'FaceColor',[0.9 0.9 0.9],'EdgeColor',[0.7 0.7 0.7],'LineWidth',2);
f1 = plot(u_average, y_average, '-s','MarkerSize',5,'MarkerEdgeColor','black','MarkerFaceColor',[0.29 0.29 0.29], 'linewidth', .5, 'color', [0.52 0.52 0.52],'DisplayName','cos(3x)');
f1 = xline(u_star, '--','LineWidth',1);
hold off
xlim([1 10]);
xaxisproperties= get(gca, 'XAxis');
xaxisproperties.TickLabelInterpreter = 'latex'; % latex for x-axis
xticks([0 1 1.5 2 2.75 3 4 5 6 7 8 9 10])
xticklabels({'0','1','$$u_{min}=1.5$$','2','$$u^*=2.75$$','3','$$u_{max}=4$$','5','6','7','8','9','10'})
ylim([7.5 10]);
xlabel('$$\mathbf{Input \; signal \; amplitud \; (A)}$$','Interpreter','latex','FontSize',12);
ylabel('$$\mathbf{Averaged \; output \; signal}$$','Interpreter','latex','FontSize',12);
title('$$\mathbf{Working \; region}$$','Interpreter','latex','FontSize',14);
legend('Data point', 'location', 'southeast', 'FontSize',10);
width=800;
height=330;
set(gcf,'position',[80,180,width,height]);
saveas(f1,'img/fig_working_region','svg');
 
% plot(u_average, y_average);
% working region: u=1.5, 4