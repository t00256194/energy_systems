clear;clc
load('formal_lab2_workspace.mat')


%% 16.5 mm ID Smooth Tube (D1,Q1,P1,V1,Re1,Le1,f1a,f1b,T1)
D1=0.0165; Q1=raw(:,5).*(0.001/3600); P1=raw(:,4).*(10^5);    %%(m) (m^3/s) (Pa)
h = raw(:,3).*(10^-3); delta_p = 9.81.*rho.*h;                %%(mm) (Pa)

V1=(4/pi/D1^2).*Q1; Re1=(4*rho/mu/pi/D1).*Q1; 

    if Re1 <= 10e7
        Le1=(D1*4.4).*Re1.^(1/6);
    else
        disp('Re is too high')
    end

f1a=(delta_p./1)./(0.5.*rho.*(V1.^2)./D1);                    %%friction factor (measured)
f1b=0.316./(Re1.^0.25);                                       %%friction factor (calculated)

T1=table(V1,Re1,f1a,f1b,Le1);                                 %%table 1
disp(T1)



%% 23 mm ID Smooth Tube (D1,Q1,P1,V1,Re1,Le1,f1a,f1b,T1)
D2=0.023; Q2=raw(:,11).*(0.001/3600);                         %%(m) (m^3/s) (Pa)
h2 = raw(:,10).*(10^-3); delta_p2 = 9.81.*rho.*h2;            %%(mm) (Pa)

V2=(4/pi/D2^2).*Q2; Re2=(4*rho/mu/pi/D2).*Q2; 

    if Re2 <= 10e7
        Le2=(D2*4.4).*Re2.^(1/6);
    else
        disp('Re is too high')
    end
    
f1a2=(delta_p2./1)./(0.5.*rho.*(V2.^2)./D2);                  %%friction factor (measured) 
roughness = 3.7*(ep - 6.9./Re2).^(1/1.11);
avg = mean(roughness);

f1b2 =(1./(1.8*log10((6.9./Re2)+(avg/3.7)^1.11))).^2;         %%friction factor (calculated)

T2=table(V2,Re2,f1a2,f1b2,roughness,Le2);                     %%table 2
disp(T2)


%% Additional 
avg_roughness = mean(roughness)                            



%% Plots
scatter(Re1,f1a,'rs','filled');   hold on;   
plot(Re1,f1b,'k-'); 
scatter(Re2,f1a2,'g^','filled');
plot(Re2,f1b2,'b-');
set(gca,'xscale','log'); 
xlim([1.2e4 10e4])
grid on
box on
xlabel('Reynold''s number (Re_D )')
ylabel('friction factor (f)')
legend('f_{meas}, 16mm', 'f_{calc}, 16mm','f_{meas}, 23mm', 'f_{calc}, 23 mm','location','east')
legend.fontize = 4;

