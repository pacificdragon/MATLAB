clc;
clear all;
close all;
%% Problem
Capacity=5;
Items=10;
Price=[1 2 3 4 5 6 7 8 9 10];
%Weight=[1 1 1 1 1 1 1 1 1 1];
%% Initialization

N=5;    % No. of Particles

MaxIt=1; % Maximum Iterations

VarSize = [1 Items];

% Charge Particle Template
CP.Position=[];      
CP.Velocity=[];      
CP.Charge=[];
CP.Distance=[];
CP.Probability=[];
CP.Force=[];
% Best Charge Particle Template
BCP.Position=[];
BCP.Velocity=[];
BCP.Charge=[];
BCP.Distance=[];
BCP.Probability=[];
BCP.Force=[];
% Create array of charged particles
CPS = repmat(CP, N+1, 1);

% Initialize Charged Particles
for i=1:N+1
    
    % Generate Random Solution
    CPS(i).Position = randi([0 1], 1,Items);
    
    % Initialize Velocity
    CPS(i).Velocity = zeros(VarSize);
end

% Initializing fitbest , fitworst , BCP
fitbest=fit(CPS(i).Position);  % Assume first is best
fitworst=fit(CPS(i).Position); % Assume first is worst
for i=1:N             
    x=fit(CPS(i).Position);
    if x > fitbest
        fitbest=x;
        BCP=CPS(i);
    elseif x < fitworst
        fitworst=x;
    end
end

%Initialize Force Matrix
Force=zeros(N,1);
%% Main Loop of CSS


for it=1:MaxIt
    
    for i=1:N
        % Calculating Charge On Particles
        CPS(i).Charge = (fit(CPS(i).Position)-fitworst)/(fitbest-fitworst);
    
        % Calculating Distance Between Particles
        CPS(i).Distance= (HD(CPS(i).Position,CPS(i+1).Position))/(HD((CPS(i).Position)&(CPS(i+1).Position),BCP.Position)+rand(1,1));
        
        % Calculating Probability Of Moving
        if fit(CPS(i).Position) > fit(CPS(i+1).Position)
        CPS(i).Probability=1;
        else
        CPS(i).Probability=0;
        end
        
        % Calculating Resultant Force
        r=(0.1)*max(1-0);
        
        if CPS(i).Distance < r
                    c1=1;
                    c2=0;
        else
                    c1=0;
                    c2=1;
        end
        
       % tempforce=0;
       % for k=1:N
            % Some error 
            %  Distance= (HD(CPS(i).Position,CPS(k).Position)+rand(1,1))/(HD((CPS(i).Position)&(CPS(k).Position),BCP.Position)+rand(1,1));
            % disp(['Distance = ' num2str(Distance)]);
            % force=((CPS(i).Charge)*c1)/(r*r*r)+(((CPS(i).Charge)*c2)/(Distance*Distance));
            % tempforce=tempforce+force;
            % disp(['Temp Force = ' num2str(tempforce)]);
       % end
        
               

    end
    
end

