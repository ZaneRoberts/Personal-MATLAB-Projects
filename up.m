function [a,b] = up(f)
    [a,b]=up0(f,1);
end

function [a,b] = up0(f,c)
    mUp=f(c);
    if mUp==0
        a=c;
        b=c;
    elseif mUp>0
        if c==1
            a=0;
            b=0;
        else
            a=c/2+1;
            b=c-1;
        end
    elseif mUp<0
        [a,b]=up0(f,2*c);
    end
end