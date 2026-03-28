local function create_cyclic_metatable()
local metatable = {}
metatable.__index = metatable
metatable.__newindex = metatable
metatable.__add = metatable
metatable.__call = metatable
return metatable
end
local cyclic_metatable = create_cyclic_metatable()
setmetatable({}, cyclic_metatable)