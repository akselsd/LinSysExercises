% a and b
A = [-2 4; -1 3];
B = [8 2]';
C = [1 -1];
D = 2;
T = [0 -2; 1 -1];
C_ = C*inv(T);
A_ = T*A*inv(T);
B_ = T*B;
D_ = D;
syms s

%c
H = C*inv(s*eye(size(A))-A)*B+D;
simplify(H,'Steps', 10)
H_ = 3*inv(s - (-1))*2+2e
