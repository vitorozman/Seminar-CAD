B = [1 NaN NaN NaN NaN NaN NaN;
    2 1 NaN NaN NaN NaN NaN;
    3 NaN 1 NaN NaN NaN NaN;
    4 NaN NaN 1 NaN NaN NaN;
    5 NaN NaN NaN 1 NaN NaN;
    6 NaN NaN NaN NaN 1 NaN;
    7 1 2 3 4 5 1];



Bpol = [1 NaN NaN NaN;
        0 0 NaN NaN; 
        5 3 -4 NaN; 
        2 1 -1 0];
    

Bx = [0.4 NaN NaN NaN;
      3 4 NaN NaN; 
      5 NaN -4 NaN; 
      4 1 1 0];
By = [1 NaN NaN NaN;
      3 0 NaN NaN; 
      5 NaN -4 NaN; 
      2 6 -1 2];
Bz = [7 NaN NaN NaN;
      0.9 3 NaN NaN; 
      5 NaN -1 NaN; 
      3 2 -1 1];

a=-1;
BT = filltriangle(B, a);

BX = filltriangle(Bx, a);
BY = filltriangle(By, a);
BZ = filltriangle(Bz, a);

[~,U] = trimeshgrid(3);
bezier3(BX,BY,BZ,U);

figure(1)
plotbezier3(BX,BY,BZ,50)








Bx = [
    4 NaN NaN NaN;
    5 2 NaN NaN; 
    7 NaN 1 NaN; 
    8 6 2 0]; 
    
By = [
    5 NaN NaN NaN;
    3 4 NaN NaN;
    3 NaN 2 NaN;
    -1 0 1 0];
Bz = [
    3 NaN NaN NaN;
    5 0 NaN NaN;
    3 NaN 4 NaN;
    0 -2 1 -2];

BX = filltriangle(Bx, a);
BY = filltriangle(By, a);
BZ = filltriangle(Bz, a);

[~,U] = trimeshgrid(3);
bezier3(BX,BY,BZ,U);
figure(2)
b = plotbezier3(BX,BY,BZ,50)



