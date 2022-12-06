function BB = fillsqare(B, alfa, beta)

% vektoriziramo vhodno shemo kotntorlnih tock
[n, m] = size(B);
b = reshape(B.',1,[])';

A = zeros(n*m,n*m);

for i = 1:m
    A(i,i) = 1;
end

for i = 1:n-2
    A(m*i+1,m*i+1) = 1;
    
    for j = 2:m-1
        A(m*i + j, (i-1)*m + j - 1) = alfa;
        A(m*i + j, (i-1)*m + j + 0) = beta;
        A(m*i + j, (i-1)*m + j + 1) = alfa;

        A(m*i + j, (i-1)*m + j - 1 + m) = beta;
        A(m*i + j, (i-1)*m + j + 0 + m) = -1;
        A(m*i + j, (i-1)*m + j + 1 + m) = beta;

        A(m*i + j, (i-1)*m + j - 1 + 2*m) = alfa;
        A(m*i + j, (i-1)*m + j - 0 + 2*m) = beta;
        A(m*i + j, (i-1)*m + j + 1 + 2*m) = alfa;
    end

    A(m*(i+1),m*(i+1)) = 1;
end

for i = 0:m
    A(m*n - i,m*n - i) = 1;
end

BB = A\b;
BB = reshape(BB, m, n)';




end
