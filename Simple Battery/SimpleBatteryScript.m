
Data = xlsread('Battery_Parameters.xlsx')
%% Name the data
SOC = Data(:,1);
OCV = Data(:,2);
R_Charge= Data(:,3);
R_Discharge = Data(:,4);

%% Plot
plot(SOC,OCV)
figure
plot(SOC,R_Charge)
figure
plot(SOC,R_Discharge)

%%
I = -2.3; %Amps
Cn = 2.3*3600; %Amps*Seconds
sim('SimpleBatterySimulation')