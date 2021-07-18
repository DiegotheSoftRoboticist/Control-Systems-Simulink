%% first Simulation
Sim_Time = 7;
Step_Value = 1;
M = 1;
b = 10;
k = 20;
F = 1;

%% Define P Controller Parameters
% Kp = 1000; %200, 500, 800, 1000
% Ki = 0; 
% Kd = 0;
% sim('MassSpringDamper_PID');

%% PID Controller
Kp = 500;
Ki = 400;
Kd = 200;
sim('PIDControllerSuspensionSimulink');

%% Plotting section

figure
plot(ans.tout,ans.IN)
hold all
plot(ans.tout, ans.OUT)

