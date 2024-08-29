%% Generalized Sustainability Socio-Ecological Model (GSSEM)
% taken from Tovar-Ortíz & Rodríguez-González (2022)

clear all
close all
clc
rng(0)
display('Working...');
tic

%% Input
time = 100;       % time in years for sustainability analisys 
t=0:time;         % integration steps

plots = 1;        % 1 = plots On; 0 = plots Off


%%  Base Case
load('ResultsStable')
xc=x;   yc=y;   %EcIndc=EcInd;

%load('ResultsStable')
%xw=x;   yw=y;   

clear x y EcInd

%% Running Model
% [y, x] = GWHEModel(time,Ito,Case,pais)
% y    => differential variables
% x    => algebraic variables
% time => integration time in years

[y,x]=GSSEM(time);

%xw=x;   yw=y;   

%% Plots
if plots == 1
    CompartmentsPlots
end

%% End
toc
display('...Done');
