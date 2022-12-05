[Bx,By,Bz] = deal(zeros(9,7));
phi = linspace(0,pi,7);
psi = linspace(0,pi,9);
Bx(1,:) = 1+sin(phi);
By(1,:) = -cos(phi);
Bx(9,:) = -1-sin(phi);
By(9,:) = -cos(phi);
Bx(:,1) = cos(psi);
By(:,1) = -1;
Bz(:,1) = sin(psi);
Bx(:,7) = cos(psi);
By(:,7) = 1;
Bz(:,7) = sin(psi);


B4 = [1 1 1 1;
    1 0 0 1;
    1 0 0 1;
    1 1 1 1];
B3 = [1 1 1;
    1 0 1;
    1 1 1];
BB = fillsqare(B3, 1, 1);
