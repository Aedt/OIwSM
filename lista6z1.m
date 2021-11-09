clearvars;
close all;


N = 500;
a = 3.8;
x0 = 0.1;
fun = @(x) a*x*(1-x);

for i = 1:N
    x(i) = x0;
    x0 = fun(x0);
end
plot(x);
axis([0 N 0 1]);
grid on;
