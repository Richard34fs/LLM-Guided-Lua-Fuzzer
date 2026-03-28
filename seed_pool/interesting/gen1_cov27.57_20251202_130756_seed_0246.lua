local t = {}
t.__index = t
t.__newindex = t
t.__add = function(a, b)
    return a + b
end
t.__call = function()
    return "Meta tables are fun!"
end
setmetatable(t, t)

local function f()
    do
        if true then
            local x = 10
            print(x)
        end
    end

    local closure = function()
        return 20
    end

    local result = closure()
    print(result)
end

f()