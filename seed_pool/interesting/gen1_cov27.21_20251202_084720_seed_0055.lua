local function recursive_variadic(...)
    local args = {...}
    if #args > 0 then
        print(table.concat(args, ", "))
        recursive_variadic(...)
    end
end

function recursive_variadic(...)
    local args = {...}
    if #args > 0 then
        print(table.concat(args, ", "))
        recursive_variadic(...)
    end
end

local function recursive_variadic(...)
    local args = {...}
    if #args > 0 then
        print(table.concat(args, ", "))
        recursive_variadic(...)
    end
end

function recursive_variadic(...)
    local args = {...}
    if #args > 0 then
        print(table.concat(args, ", "))
        recursive_variadic(...)
    end
end