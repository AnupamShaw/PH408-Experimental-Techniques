%% Thermoelectric Properties of Materials

%% Reading data (T = 300K)
eng_ry = dlmread('300.csv', ',', 'A2:A702');
temp3 = dlmread('300.csv', ',', 'B2:B702');
seebk3 = dlmread('300.csv', ',', 'E2:E702');
sigma3 = dlmread('300.csv', ',', 'F2:F702');
kappa3 = dlmread('300.csv', ',', 'H2:H702');

%% Reading data (T = 600K)
temp6 = dlmread('600.csv', ',', 'B2:B702');
seebk6 = dlmread('600.csv', ',', 'E2:E702');
sigma6 = dlmread('600.csv', ',', 'F2:F702');
kappa6 = dlmread('600.csv', ',', 'H2:H702');

%% Reading data (T = 900K)
temp9 = dlmread('900.csv', ',', 'B2:B702');
seebk9 = dlmread('900.csv', ',', 'E2:E702');
sigma9 = dlmread('900.csv', ',', 'F2:F702');
kappa9 = dlmread('900.csv', ',', 'H2:H702');

%% Reading data (T = 1200K)
temp12 = dlmread('1200.csv', ',', 'B2:B702');
seebk12 = dlmread('1200.csv', ',', 'E2:E702');
sigma12 = dlmread('1200.csv', ',', 'F2:F702');
kappa12 = dlmread('1200.csv', ',', 'H2:H702');

%% Convert energies from Ry to eV
eng_ev = eng_ry.*13.6;

%% Calculation (T = 300K)
zt3 = (seebk3.^2).*sigma3.*temp3./kappa3;
pf3 = (seebk3.^2).*sigma3;

%% Calculation (T = 600K)
zt6 = (seebk6.^2).*sigma6.*temp6./kappa6;
pf6 = (seebk6.^2).*sigma6;

%% Calculation (T = 900K)
zt9 = (seebk9.^2).*sigma9.*temp9./kappa9;
pf9 = (seebk9.^2).*sigma9;

%% Calculation (T = 1200K)
zt12 = (seebk12.^2).*sigma12.*temp12./kappa12;
pf12 = (seebk12.^2).*sigma12;

%% Storing the data
thermal_data = [eng_ev, seebk3, seebk6, seebk9, seebk12, sigma3, sigma6, sigma9, sigma12, kappa3, kappa6, kappa9, kappa12, zt3, zt6, zt9, zt12, pf3, pf6, pf9, pf12];
fid = fopen('therm_prop.csv', 'w');
fprintf(fid,'energy (eV), S300, S600, S900, S1200, sigma300, sigma600, sigma900, sigma1200, K300, K600, K900, K1200, ZT300, ZT600, ZT900, ZT1200, PF300, PF600, PF900, PF1200\n')
dlmwrite(fid, thermal_data)
fclose(fid);

