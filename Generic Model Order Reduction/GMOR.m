
clc;
clear;
close all;

%% Problem Definiton
% Define the non-reduced model (High Order Model)
problem.sys1 = tf([18 514 5982 36380 122664 222088 185760 40320],[1 36 546 4536 22449 67284 118124 109584 40320]);
problem.CostFunction = @(x,sys1) MSE(x,sys1);  % Cost Function - Mean Sqaure Error in Step Response
problem.nVar = 4;       % Number of Unknown (Decision) Variables
problem.VarMin =  -10;  % Lower Bound of Decision Variables
problem.VarMax =  10;   % Upper Bound of Decision Variables


%% Parameters of PSO

params.MaxIt = 50;        % Maximum Number of Iterations
params.nPop = 20;           % Population Size (Swarm Size)
params.w = 1;               % Intertia Coefficient
params.wdamp = 0.99;       % Damping Ratio of Inertia Coefficient
params.c1 = 1;              % Personal Acceleration Coefficient
params.c2 = 3;              % Social Acceleration Coefficient
params.ShowIterInfo = false; % Flag for Showing Iteration Information

%% Calling PSO

out = PSO(problem, params);

BestSol = out.BestSol;
BestCosts = out.BestCosts;

%% Results
ro=out.BestSol.Position;                     % Best Particle for Reduced Model
num=[ro(1) ro(2)];              
den=[1 ro(3) ro(4)];              
sys2=tf(num,den);                            % Reduced Model 

grid on;
subplot(3,1,1);
step(problem.sys1,sys2);
subplot(3,1,2);
impulse(problem.sys1,sys2);
subplot(3,1,3);
bode(problem.sys1,sys2);
disp('High Order Model :');
s1=problem.sys1
disp('Reduced Order Model :');
s2=sys2
disp(['Mean Square Error = ' num2str(out.BestSol.Cost)]);
