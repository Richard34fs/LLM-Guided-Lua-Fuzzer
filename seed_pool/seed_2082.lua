local function create_metatable()
local mt = {}
mt.__index = mt
mt.__newindex = mt
mt.__add = mt
mt.__call = mt
return mt
end
local t = {}
setmetatable(t, create_metatable())