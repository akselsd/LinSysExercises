clc; clear all;

A = [0 1; -2 -2];
B = [0 0; 0 1];
C = [4 0]';
D = [0 0]';
T = pi/2;
syms x;
S = solve(det(A-eye(size(A))*x) == 0, x);
lam2 = S(1);
lam1 = S(2);
[V, E] = eig(A);
Q = [1 1; lam1 lam2];

A_ = inv(Q)*A*Q;
e_a_t = [exp(lam1*T) 0; 0 exp(lam2*T)];
e_at = Q*e_a_t*inv(Q);
simplify(e_at, 'Steps', 10)