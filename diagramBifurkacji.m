clearvars;
close all;

N = 500;
a = 0;
x0 = 0.1;
fun = @(x) a*x*(1-x);

for j = 0:0.01:4
    a = j;
    for i = 1:N
        x(i) = x0;
        x0 = fun(x0);
        
    end
    plot(a*ones(N,1),x,'.');
end

% plot(x);
% axis([0 N 0 1]);
% grid on;
