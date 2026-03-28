local metatable = {}
metatable.__index = metatable
metatable.__newindex = metatable
metatable.__add = function(a, b) return a end
metatable.__call = function() error("Stack overflow!") end
setmetatable({}, metatable)

do
    local metatable = {}
    metatable.__index = metatable
    metatable.__newindex = metatable
    metatable.__add = function(a, b) return a end
    metatable.__call = function() error("Stack overflow!") end
    setmetatable({}, metatable)
end