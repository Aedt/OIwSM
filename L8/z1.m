clearvars;
close all;

h = 0.1;
g = 9.81;
l = 50;

theta=7*pi/180;
t = 0:0.1:200;

a = zeros(1,length(t));
x1 = zeros(1,length(t));
x2 = x1;
x1(1) = 0;
x2(1) = theta;

for i = 1:length(t)
   a(i) = theta*cos(sqrt(g/l)*t(i)); 
end

for i = 2:length(t)
    x1(i) = x1(i-1) + h * x2(i-1);
    x2(i) = x2(i-1) - h * (g/l) * sin(x1(i));
end
hold on;
plot(t,a);
plot(t,x2,'LineWidth',1.5);
