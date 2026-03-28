function recursive_varargs(...)
    if select('#', ...) > 0 then
        local x = select(1, ...)
        print(x)
        recursive_varargs(select(2, ...))
    end
end
recursive_varargs(1, 2, 3, 4, 5)