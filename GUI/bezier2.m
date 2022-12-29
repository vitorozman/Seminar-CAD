function [bx ,by ,bz] = bezier2 (Bx ,By ,Bz ,u,v)
% Opis :
% bezier2 vrne tocke na Bezierjevi ploskvi iz tenzorskega
% produkta
%
% Definicija :
% [bx ,by ,bz] = bezier2 (Bx ,By ,Bz ,u,v)
%
% Vhodni podatki :
% Bx , By , Bz matrike velikosti n+1 x m+1, ki dolocajo
% koordinate kontrolnih tock ,
% u, v vrstici dol�ine M in N, ki predstavljata
% parametre v smereh u in v.
%
% Izhodni podatki :
% bx , by , bz matrike velikosti N x M, ki predstavljajo
% tocke na Bezierjevi ploskvi :
% [bx(J,I) by(J,I) bz(J,I)] je tocka pri
% parametrih u(I) in v(J).


M = length(u);
N = length(v);
[~, m] = size(Bx);

B = NaN(m, 3);

bx = NaN(N, M);
by = NaN(N, M);
bz = NaN(N, M);
for k = 1:M
    for l = 1:N 
        for i = 1:m 
            B(i,:) = bezier([Bx(:,i) By(:,i) Bz(:,i)], v(l));
        end
        Bu = bezier(B, u(k));
        bx(l,k) = Bu(1,1);
        by(l,k) = Bu(1,2);
        bz(l,k) = Bu(1,3);
    end
end

end