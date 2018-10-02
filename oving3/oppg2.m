clc; clear all;
A = [0 1; -2 -1];

B = [0 2]';
C = [1 0];
Q = [50 0; 0 5];
R = 4;
S = [0, 0]';
E = eye(2);
[P, L, G] = care(A, B, Q, R, S, E);
K = (B' * P) / 4;
p = 1 + K(1, 1);
r = 2;
tspan = 0:0.01:10;
initialConditions = [0; 0];
[t, y] = ode45(@sys2, tspan, initialConditions);
plot(t, C*y')