clc
clear all 
load('formal_lab1_workspace.mat')


%% Graph 1
figure
scatter(Temps(:,10),q_hot,30,'r','filled')
hold on
scatter(Temps(:,10),q_cold,30,'b','filled')
hold off
grid on
box on
title('Heat Transfer Rates vs. Case')
xlabel('Case')
ylabel('Heat Transfer Rate, q (W)')
legend('q_{hot}','q_{cold}','location','northwest')


%% Graphs 2
figure
scatter(C_r,NTU,'r^','filled')
xlim([0.3 1.1])
ylim([0.18 0.36])
grid on
box on
title('Number of Transfer Units vs. Capacity Rate Ratio')      
xlabel('Capacity Rate Ratio, C_r')                               
ylabel('Number of Transfer Units, NTU')                           


%% Gragh 3
figure
scatter(C_r,e1,'gs','filled')
hold on
scatter(C_r,e2,50,'mh','filled')
hold off
xlim([0.3 1.1])
ylim([0.15 0.4])
grid on
box on
title('Effectiveness vs. Capacity Rate Ratio')               
xlabel('Capacity Rate Ratio, C_r')
ylabel('Effctiveness, \epsilon')
legend('\epsilon _1', '\epsilon _2','location','northeast')

