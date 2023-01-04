Bx  =  [1 NaN NaN NaN NaN NaN NaN;
        2 1.2 NaN NaN NaN NaN NaN;
        2.3 NaN 1.3 NaN NaN NaN NaN;
        1.5 NaN NaN 1.4 NaN NaN NaN;
        1.7 NaN NaN NaN 1.5 NaN NaN;
        1.8 NaN NaN NaN NaN 1.6 NaN;
        2.2 3 2.3 3.1 2.5 1.9 2.2];

By =   [4 NaN NaN NaN NaN NaN NaN;
        2.2 4.1 NaN NaN NaN NaN NaN;
        3.2 NaN 3.4 NaN NaN NaN NaN;
        2.5 NaN NaN 2.1 NaN NaN NaN;
        1.4 NaN NaN NaN 1.7 NaN NaN;
        2.7 NaN NaN NaN NaN 1.5 NaN;
        3.3 1.41 2.4 3.2 3.7 4.0 2];


Bz =   [2 NaN NaN NaN NaN NaN NaN;
        3.2 3.4 NaN NaN NaN NaN NaN;
        2.7 NaN 3.5 NaN NaN NaN NaN;
        3.6 NaN NaN 4.5 NaN NaN NaN;
        2.8 NaN NaN NaN 2.2 NaN NaN;
        3.5 NaN NaN NaN NaN 2.2 NaN;
        1.9 3.1 2 4.2 3.7 2.6 4.2];


a=0;
BX = filltriangle(Bx, a);
BY = filltriangle(By, a);
BZ = filltriangle(Bz, a);

[TRI, U] = trimeshgrid(100);
b = bezier3(BX,BY,BZ,U);

figure(1)

%Izris trikotne Bezierjeve krpe:

trisurf(TRI,b(:,1),b(:,2),b(:,3));

% Quadratic precision alfa

a=-1/6;
BX = filltriangle(Bx, a);
BY = filltriangle(By, a);
BZ = filltriangle(Bz, a);

[TRI, U] = trimeshgrid(100);
b = bezier3(BX,BY,BZ,U);

figure(2)

%Izris trikotne Bezierjeve krpe:

trisurf(TRI,b(:,1),b(:,2),b(:,3));

% min twist alfa

a=-1/9;
BX = filltriangle(Bx, a);
BY = filltriangle(By, a);
BZ = filltriangle(Bz, a);

[TRI, U] = trimeshgrid(100);
b = bezier3(BX,BY,BZ,U);

figure(3)

%Izris trikotne Bezierjeve krpe:

trisurf(TRI,b(:,1),b(:,2),b(:,3));