clear; clc

%% Part_1
load('Temperature.mat')
input1 = Temperature(:,1);
output1 = Temperature(:,2);

f1 = figure;                   
scatter(input1,output1,100)
title('Temperature vs. D')
xlabel('Location, X (mm)')
ylabel('Output Volt. e_o (C)')
grid on


%% Part_2
load('Temperature.mat')
input2 = Temperature(:,1);
output2 = Temperature(:,2);
 
f2 = figure;
scatter(input2,output2,50)
title('Voltage vs. Temperature')
xlabel('Temperature (^o F)')
ylabel('Voltage  e_o (mV)')
grid on 


%% Part_3
load('Velocity.mat');
rho_air = 0.075; rho_h2o =62.4; g = 32.2; h = Velocity(:,2);
pv = rho_h2o*g*h; v = sqrt((2*pv*3600)/(12*rho_air));
v
