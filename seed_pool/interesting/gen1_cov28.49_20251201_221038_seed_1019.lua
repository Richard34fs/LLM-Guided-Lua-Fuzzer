function recursive_variadic(...)
    print(...)
    if select('#', ...) < 10 then
        recursive_variadic(..., ...)
    end
end
local chunk = "recursive_variadic(1, 2, 3)"
load(chunk)()