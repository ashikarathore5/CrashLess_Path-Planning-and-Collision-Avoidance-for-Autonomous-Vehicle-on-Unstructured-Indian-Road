clear;
clc;

%% Simulation
T = 30;              % simulation time
dt = 0.05;           % simulation step

%% Road
roadWidth = 8;       % metres
roadLeft  = -4;
roadRight = 4;

%% Ego vehicle
ego.x0 = 0;
ego.y0 = 0;
ego.v0 = 10;
ego.theta0 = 0;

ego.length = 4.5;
ego.width  = 1.8;

%% Obstacle
obs.x0 = 35;
obs.y0 = 0;
obs.vx = 3;
obs.vy = 0;

obs.length = 4;
obs.width  = 1.8;

%% Prediction
predictionTime = 3.0;

%% Safety
safeDistance = 8;
criticalDistance = 4;

%% Controller
Kp_y = 0.8;
Kd_y = 0.3;

%% Planner
leftOffset  = 2.0;
rightOffset = -2.0;

%% Display
disp('SIH26037 parameters loaded successfully.');