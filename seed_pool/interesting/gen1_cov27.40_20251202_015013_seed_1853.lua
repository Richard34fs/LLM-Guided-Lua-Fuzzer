function recursive_vararg(...)
    print(...)

    local function inner_func(...)
        print(...)
    end

    if select('#', ...) < 10 then
        recursive_vararg(..., ..., ...)
    else
        inner_func(...)
    end
end

local function outer_func()
    recursive_vararg(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
end

outer_func()