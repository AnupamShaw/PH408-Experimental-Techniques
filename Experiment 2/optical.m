%% Optical properties of MgF2 monolayer

%% Reading data
energy = dlmread('optical.csv', ',', 'A2:A101');
e_imag = dlmread('optical.csv', ',', 'E2:E101');
e_real = dlmread('optical.csv', ',', 'J2:J101');

%% Calculations
% Relative dieletric constant
epsilon_w = sqrt(e_imag.^2 + e_real.^2);
% Refractive index
n_w = sqrt((epsilon_w + e_real)/2);
% Extinction coefficient
K_w = sqrt((epsilon_w - e_real)/2);
% Energy loss spectrum
L_w = e_imag./(epsilon_w.^2);
% Reflectivity
R_w = ((n_w - 1).^2 + (K_w).^2)./((n_w + 1).^2 + (K_w).^2);
% Absorption coefficient
alpha_w = sqrt(2)*sqrt(epsilon_w - e_real);

%% Storing the data
optical_data = [energy, e_imag, e_real, epsilon_w, n_w, K_w, L_w, R_w, alpha_w];
fid = fopen('optical_data.csv', 'w');
fprintf(fid, 'energy, e_imag, e_real, epsilon, n, K, L, R, alpha\n')
dlmwrite(fid, optical_data)
fclose(fid);

