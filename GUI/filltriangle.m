function BT = filltriangle(B, a)

b = (1-3*a)/6;
[n, ~] = size(B);

m = nchoosek(n+1,2);
vt = zeros(m,1);

BB = zeros(m);

s=1;
for i = 1:n
    for j = 1:i
        if not(isnan(B(i,j)))
            vt(s) = B(i,j); 
            BB(s,s) = 1;
        else
            BB(s,s) = -1;
            BB(s,s+1) = b;
            BB(s,s-1) = b;
            BB(s,s-2*(i-3)-4) = a;
            BB(s,s-(i-3)-2) = b;
            BB(s,s-(i-3)-3) = b;
            BB(s,s+(i-3)+2) = a;
            BB(s,s+(i-3)+3) = b;
            BB(s,s+(i-3)+4) = b;
            BB(s,s+(i-3)+5) = a;
        end        
        s = s+1;
    end
end

BV = BB\vt;

BT = NaN(n,n);
s=m;
for i = 1:n
    for j = n-i+1:-1:1
        BT(i,j) = BV(s);
        s = s-1;
    end
end




end



