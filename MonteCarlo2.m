clearvars;
close all;

N = 10000;
r = 1;
p = 2;
d = 3;
rd = zeros(1,d);
% Px = zeros(1,N);
% Py = zeros(1,N);
No = 1;

for i = 1:N
    rd = rand(1,d)*2-1;
    s = 0;
    for j = 1:d
       s = s + (abs(rd(1,j)^p)^(1/p));
    end
    if s <= r
        Px(:, No) = rd;
        No = No + 1;
    end
    
end



% plot3(Px(1,:), Px(2,:), Px(3,:), '.');
% pbaspect([1 1 1]);


% A = rand(100,15)*2-1;
% B = A.^2;
% c = (sum(B,2))^(0.5)