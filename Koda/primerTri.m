Bx  = [1 NaN NaN NaN NaN NaN NaN;
    2 1 NaN NaN NaN NaN NaN;
    3 NaN 1 NaN NaN NaN NaN;
    4 NaN NaN 1 NaN NaN NaN;
    5 NaN NaN NaN 1 NaN NaN;
    6 NaN NaN NaN NaN 1 NaN;
    7 1 2 3 4 5 1];

By = [1 NaN NaN NaN NaN NaN NaN;
    2 4 NaN NaN NaN NaN NaN;
    3.2 NaN 3 NaN NaN NaN NaN;
    4.5 NaN NaN 5 NaN NaN NaN;
    5.4 NaN NaN NaN 7 NaN NaN;
    6.7 NaN NaN NaN NaN 10 NaN;
    7.3 11 2 3 8 5 1];


Bz = [1 NaN NaN NaN NaN NaN NaN;
    3 3 NaN NaN NaN NaN NaN;
    2 NaN 7 NaN NaN NaN NaN;
    6 NaN NaN 9 NaN NaN NaN;
    2 NaN NaN NaN 3 NaN NaN;
    5 NaN NaN NaN NaN 5 NaN;
    1 3 2 5 7 6 2];


a=0;
BX = filltriangle(Bx, a);
BY = filltriangle(By, a);
BZ = filltriangle(Bz, a);

[TRI, U] = trimeshgrid(100);
b = bezier3(BX,BY,BZ,U);

figure(1)

%Izris trikotne Bezierjeve krpe:

trisurf(TRI,b(:,1),b(:,2),b(:,3));

% nov alfa

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