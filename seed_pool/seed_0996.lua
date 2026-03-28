local function make_metatable()
local mt = {}
mt.__index = mt
mt.__newindex = mt
mt.__add = function(a, b)
return a
end
mt.__call = function(t, ...)
return t
end
return mt
end
local cyclic_mt = make_metatable()
setmetatable({}, cyclic_mt)