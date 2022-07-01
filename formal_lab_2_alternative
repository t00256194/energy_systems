clear all, close all, clc
colors = [0 94/255 134/255; 150/255 3/255 3/255; 108/255 182/255 255/255; 30/255 147/255 118/255; 166/255 89/255 33/255; 97/255 33/255 166/255; 153/255 153/255 0/255];

%% 16.5 mm pipe
Re_16_5=[22306.8039 33460.2058 44613.6077 55767.0096 66920.4116 71381.7723 62459.0508];
f_meas_16_5=[0.0259 0.0227 0.0218 0.0209 0.0196 0.0191 0.0206];
f_calc_16_5=0.316./((Re_16_5).^(1/4));
figure(1)
loglog(Re_16_5,f_meas_16_5,'s','MarkerFaceColor','k','MarkerEdgeColor','k','MarkerSize',6,'Color','k')
hold on
loglog(Re_16_5,f_calc_16_5,'Color','r','Linewidth',2)
ax = gca;

% ax.YMinorGrid = 'on';
% ax.XMinorGrid = 'on';
% xlim([2*10^4,10^5])
% ylim([0.01 0.03])
% ylim([0.018 0.03])
xlabel('Reynolds Number (Re_D)')
ylabel('Friction factor (f)')



%% 23 mm pipe
Re_23=[16002.71 24004.06 32005.41 40006.77 48008.12 51208.66 44807.58];
f_meas_23=[0.0505 0.0498 0.0515 0.0498 0.0510 0.0508 0.0509];
e_d_average=0.0207489;
f_calc_23= (1./(-1.8*log10( (6.9./Re_23) + (e_d_average/3.7).^1.11 ))).^2;

avg_f_error=mean(abs(f_calc_23-f_meas_23));

hold on
loglog(Re_23,f_meas_23,'s','MarkerFaceColor',colors(4,:),'MarkerEdgeColor',colors(4,:),'MarkerSize',6,'Color',colors(4,:))
hold on
loglog(Re_23,f_calc_23,'Color',colors(3,:),'Linewidth',2)
ax = gca;
ax.YMinorGrid = 'on';
ax.XMinorGrid = 'on';
ax.MinorGridLineStyle='-';
ax.GridColorMode='manual';
ax.MinorGridColor='k';
ax.GridColor='b';
ax.MinorGridAlpha=.5;

xlabel('Reynolds Number (Re_D)')
ylabel('Friction factor (f)')
% xlim([1.2e4 6e4])
% ylim([0.04 0.06])
% ylim([0.048 0.054])
legend('Measured Friction Factor 16.5 mm Pipe','Theoretical Friction Factor using Balsius Equation 23 mm Pipe','Measured Friction Factor','Calculated Theoretical Friction Factor using Balsius Equation Colebrook')



%% Plot togther
ylim([0.018 0.054])
xlim([1.2e4 10^5])

