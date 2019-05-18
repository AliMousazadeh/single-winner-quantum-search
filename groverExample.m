close all; clear; clc;
addpath('./lib');
%%%%%%%%%%

numStates = 128;
%%%%%%%%%%

numIterations = floor(pi/4*sqrt(numStates));

qubit = zeros(numStates, 1);
qubit = hadamard(qubit);

V = diffusionMatrix(qubit);

tic;
for i = 1:numIterations
   qubit = oracle(qubit);
   qubit = V * qubit;
end
toc;

qubit = measure(qubit);