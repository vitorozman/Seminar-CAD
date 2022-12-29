function b = bezier(B,t)
% Opis:
% bezier vrne točke na Bezierjevi krivulji pri danih parametrih
%
% Definicija:
% b = bezier(B,t)
%
% Vhodna podatka:
% B matrika velikosti n+1 x d, ki predstavlja kontrolne točke
% Bezierjeve krivulje stopnje n v d-dimenzionalnem prostoru,
% t seznam parametrov dolžine k, pri katerih računamo vrednost
% Bezierjeve krivulje
%
% Izhodni podatek:
% b matrika velikosti k x d, kjer i-ta vrstica predstavlja točko
% na Bezierjevi krivulji pri parametru iz t na i-tem mestu

d = length(B(1,:));
k = length(t);

b = NaN(k,d);
%za vsako dimenzijo d
for j = 1:d
    %za vsako točko za dan t
    for i = 1:k
        D = decasteljau(B(:,j), t(i));
        b(i,j) = D(1,end);
    end
end

end