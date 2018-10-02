clc; clear all;
A = [-4 0; 3 -1];
B = [2 0];
C = [0 1];
D = -2;
Ob = obsv(A, C);
disp(rank(A) == rank(Ob))
