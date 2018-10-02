function dx = sys2(t, x)
    K = evalin('base', 'K');
    p = evalin('base', 'p');
    A = evalin('base', 'A');
    B = evalin('base', 'B');
    r = evalin('base', 'r');
    u = -K*x + p*r;
    dx = A*x + B*u;
end