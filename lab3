clear; clc


load('Temps.mat');
x1 = Temp1(:,1); 
y1 = Temp1(:,2);
x2 = Temp2(:,1); 
y2 = Temp2(:,2);
x3 = Temp3(:,1);
y3 = Temp3(:,2);


plot(x1,y1,'r^')
hold on
plot(x2,y2,'g^')
plot(x3,y3,'b^')


title('Temperature vs. Location')
xlabel('Location, X (mm)'); ylabel('Temperature, T (^o C)');
xticks([0 15 30 45 60 75 90 105])
xticklabels({'0' '15' '30' '45' '60' '75' '90' '105'})
grid on
