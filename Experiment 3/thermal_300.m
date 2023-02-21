%% Extracting thermoelectric data at T = 300K

therm_data = csvread('1.csv');

k=1;
for j=2:2805
  if (therm_data(j,2)==300)
    while (k<=701)
      data300(k,:)=therm_data(j,:);
      break
    endwhile
    k=k+1;
  endif
endfor

fid = fopen('data300.csv','w');
fprintf(fid,'Energy, T, N, DOS, S, sigma, RH, kappa, c, chi\n');
dlmwrite(fid, data300)
fclose(fid);

