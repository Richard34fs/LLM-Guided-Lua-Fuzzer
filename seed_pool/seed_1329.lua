local function create_metatable()
local metatable = {}
metatable.__index = metatable
metatable.__newindex = metatable
metatable.__add = function(a, b) return a end
metatable.__call = function(t, ...) t(...) end
return metatable
end
local metatable = create_metatable()
setmetatable({}, metatable)