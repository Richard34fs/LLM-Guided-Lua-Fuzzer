local function metaFactory()
    local metatable = {}
    metatable.__index = metatable
    metatable.__newindex = metatable
    setmetatable(metatable, {
        __add = function(a, b)
            return metaFactory()
        end,
        __call = function(a, ...)
            return a.__index(...)
        end
    })
    return metatable
end
local m = metaFactory()