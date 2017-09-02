%% MATLAB 5.0 MAT-file, Platform: GLNXA64, Created on: Sun Aug 27 15:36:11 2017                                                 IM

clear all

options.gamma    = 0.95;        %割引率
options.centers  = gaussian;    %ガウス関数の中心行列
options.var      = 0.5 * pi;    %ガウス関数の幅
options.epsilon  = 0.1;         %ε-greedyの変数ε

Sim =  ResetSimulation;
L = 100; % 反復
M = 100;  % エピソード
T = 50;  % ステップ
theta = LeastSquaresPolicyIterations(Sim.car,L, M, T,options)

% while and(car.x < goal.x, t < T)
%     i = randi([1 3],1,1);
%     car.a = car.Actions(i);
%     Action
%end