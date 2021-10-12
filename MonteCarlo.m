clearvars;
close all;

N = 10000;
Nk = rand(2,N)*2-1;
subplot(121);
plot(Nk(1,:),Nk(2,:), '.');
hold on;
tc = 0:pi/180:2*pi;
h = plot(cos(tc), sin(tc));
pbaspect([1 1 1]);
hold off;
Nc = 0;
Ppi_l = 1:N;

for i = 1:N
    Nc = 0;
    for j = 1:i
        if (Nk(1,j)^2 + Nk(2,j)^2) <= 1
            Nc = Nc + 1;
%             plot(Nk(1,j),Nk(2,j), 'r.');
        else
%             plot(Nk(1,j),Nk(2,j), 'b.');
        end
    end
    Ppi_l(i) = Nc*4/i;
end
subplot(122);
plot(Ppi_l);
disp("Œrednia wartoœc pi: ");
sr = sum(Ppi_l)/N;
disp(sr);
% sum(x.^2+y.^2 <=1)