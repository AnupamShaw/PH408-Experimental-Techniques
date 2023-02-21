%% Thermoelectric properties as a function of energy

data_file = 'therm_prop.csv';

%% Reading data (T = 300K)
eng = dlmread(data_file, ',', 'A2:A702');
sbk3 = dlmread(data_file, ',', 'B2:B702');
sig3 = dlmread(data_file, ',', 'F2:F702');
k3 = dlmread(data_file, ',', 'J2:J702');
zt3 = dlmread(data_file, ',', 'N2:N702');
pf3 = dlmread(data_file, ',', 'R2:R702');

%% Reading data (T = 600K)
sbk6 = dlmread(data_file, ',', 'C2:C702');
sig6 = dlmread(data_file, ',', 'G2:G702');
k6 = dlmread(data_file, ',', 'K2:K702');
zt6 = dlmread(data_file, ',', 'O2:O702');
pf6 = dlmread(data_file, ',', 'S2:S702');

%% Reading data (T = 900K)
sbk9 = dlmread(data_file, ',', 'D2:D702');
sig9 = dlmread(data_file, ',', 'H2:H702');
k9 = dlmread(data_file, ',', 'L2:L702');
zt9 = dlmread(data_file, ',', 'P2:P702');
pf9 = dlmread(data_file, ',', 'T2:T702');

%% Reading data (T = 1200K)
sbk12 = dlmread(data_file, ',', 'E2:E702');
sig12 = dlmread(data_file, ',', 'I2:I702');
k12 = dlmread(data_file, ',', 'M2:M702');
zt12 = dlmread(data_file, ',', 'Q2:Q702');
pf12 = dlmread(data_file, ',', 'U2:U702');

%% Plotting Seebeck vs energy
figure(1)
plot(eng,sbk3,'r-',eng,sbk6,'g-',eng,sbk9,'b-',eng,sbk12,'m-')
legend('300 K','600 K','900 K','1200 K')
title('Seebeck coefficent vs Energy')
xlabel('Energy (eV)')
ylabel('S')
print('seebeck.jpg','-djpg','-r600')

%% Plotting sigma vs energy
figure(2)
plot(eng,sig3,'r-',eng,sig6,'g-',eng,sig9,'b-',eng,sig12,'m-')
legend('300 K','600 K','900 K','1200 K','Location','northwest')
title('Electrical conductivity vs Energy')
xlabel('Energy (eV)')
ylabel('\sigma')
print('sigma.jpg','-djpg','-r600')

%% Plotting kappa vs energy
figure(3)
plot(eng,k3,'r-',eng,k6,'g-',eng,k9,'b-',eng,k12,'m-')
legend('300 K','600 K','900 K','1200 K','Location','northwest')
title('Thermal conductivity vs Energy')
xlabel('Energy (eV)')
ylabel('\kappa')
print('kappa.jpg','-djpg','-r600')

%% Plotting ZT vs energy
figure(4)
plot(eng,zt3,'r-',eng,zt6,'g-',eng,zt9,'b-',eng,zt12,'m-')
legend('300 K','600 K','900 K','1200 K','Location','northwest')
title('Figure of merit (ZT) vs Energy')
xlabel('Energy (eV)')
ylabel('ZT')
print('ZT.jpg','-djpg','-r600')

%% Plotting PF vs energy
figure(5)
plot(eng,pf3,'r-',eng,pf6,'g-',eng,pf9,'b-',eng,pf12,'m-')
legend('300 K','600 K','900 K','1200 K','Location','northwest')
title('Power factor vs Energy')
xlabel('Energy (eV)')
ylabel('PF')
print('PF.jpg','-djpg','-r600')

