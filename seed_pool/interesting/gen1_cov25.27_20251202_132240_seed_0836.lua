function recursive_variadic(...)
    if select('#', ...) < 10 then
        return recursive_variadic(...)
    else
        return ...
    end
end