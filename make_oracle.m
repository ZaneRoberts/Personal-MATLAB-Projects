function f = make_oracle(n)

    if ~isnumeric(n)
        error('make_oracle:make_scalar', 'Need numeric to make an oracle')
    elseif ~all(floor(n) == n)
        error('make_oracle:make_natural', 'Need natural to make an oracle')
    end

    i = 0;

    function y = g(x)
        if strcmp(x, 'i')
            y = i;
            return
        elseif ~isnumeric(x)
            error('make_oracle:guess_scalar', 'Guesses must be numeric')
        elseif ~all(size(x) == size(n))
            error('make_oracle:guess_size', 'Guess has wrong size')
        elseif ~all(floor(x) == x)
            error('make_oracle:guess_natural', 'Only natural guesses allowed')
        end
        i = i + 1;
        y = sign(x - n);
    end

    f = @(x) g(x);
end