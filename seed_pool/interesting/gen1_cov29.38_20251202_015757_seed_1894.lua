function variadic(...)
    print(...)
    local arg = {...}
    if #arg > 1 then
        variadic(table.unpack(arg, 2))
    end
end
local table = {
    insert = function (list, ...)
        -- Your local version of table.insert
    end,
    unpack = function (list, i, j)
        -- Your local version of table.unpack
    end
}
variadic("a", "b", "c", "d")