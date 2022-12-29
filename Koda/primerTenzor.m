
% generiramo ogrodje
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


% Napolnimo območe
a = 0.00001;
b = 1/4 - a;
Bx = fillsqare(Bx, a, b);
By = fillsqare(By, a, b);
Bz = fillsqare(Bz, a, b);

%Tocke na ploskvi:
u = linspace(0,1,100);
v = linspace(0,1,100);
[bx, by, bz] = bezier2(Bx,By,Bz,u,v);

%graf
surf(bx, by, bz); 
hold on
mesh(Bx, By, Bz, 'FaceColor', 'None');  %prozorne pravokotnike naredi v pravi obliki
hold on


