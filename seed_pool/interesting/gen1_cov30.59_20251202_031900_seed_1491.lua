local _G = _G  -- capture the global environment

-- create a new table to hold the local versions of the built-in functions
local local_env = {}

-- replace the built-in functions with local versions in the new table
local_env.coroutine = {
    create = function(f)
        return setmetatable({ f = f }, {
            __call = function(co, ...)
                return co.f(...)
            end
        })
    end,
    resume = function(co, ...)
        return co(...)
    end,
    yield = function(...)
        return ...
    end
}
local_env.table = {
    insert = function(t, pos, value)
        t[pos] = value
    end,
    remove = function(t, pos)
        table.remove(t, pos)
    end,
    concat = function(t, sep)
        return table.concat(t, sep)
    end
}
local_env.ipairs = function(t)
    local i = 0
    return function()
        i = i + 1
        return i, t[i]
    end
end
local_env.print = function(...)
    local args = {...}
    for i = 1, #args do
        io.write(tostring(args[i]))
        if i < #args then
            io.write("\t")
        end
    end
    io.write("\n")
end

-- replace the global versions of the built-in functions with the local versions in the new table
setmetatable(_G, { __index = function(t, k) return local_env[k] end })