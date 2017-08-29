n = 1;
while n<=100
    x=n;
    z=0;
    while x>1
        if mod(x,2)==1
            x = 3 * x + 1;
            x = x / 2;
            z = z + 2;
        else
            x = x / 2;
            z = z + 1;
        end
    end
    str=[num2str(n),' in ',num2str(z),' steps.'];
    disp(str)
    n = n + 1;
end