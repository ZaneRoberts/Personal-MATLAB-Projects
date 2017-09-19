function [d,x,y] = G_050(a,b)
    if b<a
        [d,y,x]=G_050(b,a);
    elseif a==0
        d=b;
        x=0;
        y=1;
    else
        r=mod(b,a);
        q=divmod(b,a);
        [d,m,n]=G_050(r,a);
        y=m;
        x=n-q*y;
    end
end

