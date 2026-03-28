local t = {}
t.__index = function(t, k)
return t[k] or "default"
end
t.__newindex = function(t, k, v)
rawset(t, k, v)
end
t.__add = function(a, b)
return a .. b
end
t.__call = function(t, ...)
local args = {...}
return t[args[1]] or "default"
end
setmetatable(t, t)