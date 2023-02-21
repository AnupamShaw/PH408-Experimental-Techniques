%% Optical properties as a function of energy

data_file = 'optical_data.csv';

%% Reading data
energy = dlmread(data_file, ',', 'A2:A101');
e_imag = dlmread(data_file, ',', 'B2:B101');
e_real = dlmread(data_file, ',', 'C2:C101');
epsilon = dlmread(data_file, ',', 'D2:D101');
n = dlmread(data_file, ',', 'E2:E101');
K = dlmread(data_file, ',', 'F2:F101');
L = dlmread(data_file, ',', 'G2:G101');
R = dlmread(data_file, ',', 'H2:H101');
alpha = dlmread(data_file, ',', 'I2:I101');

%% Plotting
figure(1);

subplot(3,1,3)
plot(energy,epsilon,'r-')
title('Dielectric constant vs Energy')
xlabel('Energy (eV)')
ylabel('\epsilon(\omega)')

subplot(3,1,2)
plot(energy,n,'g-')
title('Refractive index vs Energy')
ylabel('n(\omega)')

subplot(3,1,1)
plot(energy,K,'b-')
title('Extinction coefficient vs Energy')
yticks(0:1:2)
ylabel('K(\omega)')

print('optical1.jpg','-djpg','-r1200')

figure(2);

subplot(3,1,3)
plot(energy,R,'g-')
title('Reflectivity vs Energy')
yticks(0:0.2:0.8)
xlabel('Energy (eV)')
ylabel('R(\omega)')

subplot(3,1,2)
plot(energy,L,'r-')
title('Energy loss spectrum vs Energy')
ylabel('L(\omega)')

subplot(3,1,1)
plot(energy,alpha,'b-')
title('Absorption coefficient vs energy')
ylabel('\alpha(\omega)')

print('optical2.jpg','-djpg','-r1200')

