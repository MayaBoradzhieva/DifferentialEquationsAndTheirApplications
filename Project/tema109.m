function Project

[x,y] = dsolve('Dx = y', ...
                 'Dy = -2*y+5*x', ...
                 'x(0) = 1', ...
                 'y(0) = -2');
t = 0 : 0.01 : 8;

plot(t, eval(x), 'g', t, eval(y), 'r');

grid on
hold on

[M, tM] = max(eval(x));

plot(t(tM), M, 'r*');

legend ('Solution', 'First Derivative', 'Maximum' );
end

