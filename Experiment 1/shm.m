%% Simple Harmonic Motion

%% Initialisation
t = linspace(0,10,1000)';
A = 10;
ph = pi;
w = 10;
m = 1;

%% Calculations
x = A*sin(w*t - ph);
v = A*w*cos(w*t - ph);
a = -(w^2)*x;
K = 0.5*m*v.^2;
U = 0.5*m*(w^2)*x.^2;
E = K+U;

%% Storing the data
shm_data = [t, x, v, a, K, U, E];
data_file = 'shm_data.csv';
fid = fopen(data_file,'w');
fprintf(fid, 'time, disp, vel, accn, K.E., P.E., total energy\n')
dlmwrite(fid, shm_data)
fclose(fid);

%% Reading the data
time = dlmread(data_file, ',', 'A2:A1001');
pos = dlmread(data_file, ',', 'B2:B1001');
vel = dlmread(data_file, ',', 'C2:C1001');
accn = dlmread(data_file, ',', 'D2:D1001');
k_e = dlmread(data_file, ',', 'E2:E1001');
p_e = dlmread(data_file, ',', 'F2:F1001');
tot_e = dlmread(data_file, ',', 'G2:G1001');

%% Plotting
figure(1);

subplot(3,1,3)
plot(time,pos,'k-')
xlabel('time (t)')
ylabel('Displacement (x)')

subplot(3,1,2)
plot(time,vel,'b-')
ylabel('Velocity (v)')

subplot(3,1,1)
plot(time,accn,'r-')
ylabel('Acceleration (a)')

print('shm1.jpg','-djpg','-r600')

figure(2);

subplot(3,1,3)
plot(time,k_e,'r-')
xlabel('time (t)')
ylabel('Kinetic Energy (K)')

subplot(3,1,2)
plot(time,p_e,'b-')
ylabel('Potential Energy (U)')

subplot(3,1,1)
plot(time,tot_e,'k-')
yticks([4500:250:5500])
ylabel('Total Energy (E)')

print('shm2.jpg','-djpg','-r600')
