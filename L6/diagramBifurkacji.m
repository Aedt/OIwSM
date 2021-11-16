clearvars;
close all;



N = 1000;


for a = 0:0.01:4
    fun = @(x) a*x*(1-x);
    x0 = 0.2;
    
    for i = 1:N
        x(i) = x0;
        x0 = fun(x0);
    end
    %     x1 = x(20:end);
    aa = a*ones(N-29,1);
    plot(aa,x(30:end),'.k','MarkerSize',3);
    hold on
    %     hold on;
    %     plot(a,max(x1),'.k','MarkerSize',3);
end



% plot(x);
% axis([0 N 0 1]);
% grid on;
