local function recursive_variadic_func(...)
    local args = {...}
    if #args > 0 then
        print(args[1])
        local function closure()
            return recursive_variadic_func(unpack(args, 2))
        end
        closure()
    end
end

local function func_with_local_var()
    local x = 5
    return x
end

local function func_with_shadowed_var()
    local x = 5
    local function closure()
        local x = 10
        return x
    end
    return closure()
end