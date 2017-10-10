function [n] = down(f,a,b)
    g=round((a+b)/2);
    mDown=f(g);
    if mDown==0
        n=g;
    elseif a==b
        n=a;
    elseif mDown>0
        [n]=down(f,a,g);
    elseif mDown<0
        [n]=down(f,g,b);
    end
end