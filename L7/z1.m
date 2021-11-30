clear all;
close all;

a = 2;
h = 0.01;
t = 0:h:4;
xn = zeros(1,length(t));
xa = zeros(1,length(t));
xn(1) = 1;

for i = 1:length(t)
    xa(i) = exp(a*t(i));
end

subplot(211);
plot(t,xa);
hold on;

for j = 2:length(t)
    xn(j) = xn(j-1) + h * a * xn(j-1);
end

plot(t,xn);

subplot(212)
err = xn-xa;
plot(t,err);
