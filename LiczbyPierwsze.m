clearvars;
close all;

N = input("Podaj zakres: ");
Cp = 1:N;
Cp(:) = 0;

for k = 1:N
    tic
    for i = 1:k
        z = 0;
        for j = 1:i
            if mod(i,j) == 0
                z = z + 1;
            end
        end

        if z == 2
            Cp(i) = 1;
        end

    end
    a = toc;

    Cp_N(k) = nnz(Cp);
    Cp_t(k) = a;
end
disp("Liczby pierwsze w podanym zakresie: ")
disp(nnz(Cp));

subplot(211);
plot(Cp_N);
xlabel("Zakres N");
ylabel("Ilość liczb pierwszych");

subplot(212);
plot(Cp_t);
xlabel("Zakres N");
ylabel("Czas wykonania obliczeń dla N");
