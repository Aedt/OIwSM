clearvars;
close all;


a = 1;
h = 0.1;
t = 0:0.01:10;

x = zeros(1,length(t));
% x = [];
xp = x;
x(1) = 0;
xp(1) = 2;

for i = 2:length(t)
    x(i) = x(i-1) + h * xp(i-1);
    xp(i) = xp(i-1) - h * a * x(i);
end
subplot(311)
hold on;
plot(x);
plot(xp,'r');
axis([0 length(t) -3 3]);

xa = [];
xpa = [];
for i = 1:length(t)
    xa(i) = 2*sin(10*t(i));
    xpa(i) = 2*cos(10*t(i));
end
subplot(312)
hold on;
plot(xa);
plot(xpa,'r');
axis([0 length(t) -3 3]);

err1 = [];
err2 = [];

for i = 1:length(t)
   err1(i) = x(i)-xa(i);
   err2(i) = xp(i)-xpa(i);
end

subplot(313)
hold on;
plot(err1);
plot(err2,'r');
arr = [err1, err2];
axis([0 length(t) min(arr) max(arr)]);
figure(2)
subplot(211)
hold on;
plot(x);
plot(xa,'r');
axis([0 length(t) -3 3]);
subplot(212)
hold on;
plot(xp);
plot(xpa,'r');
axis([0 length(t) -3 3]);

