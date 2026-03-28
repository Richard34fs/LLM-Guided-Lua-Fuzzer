local t = {}
t.__index = t
t.__newindex = function(t, k, v)
rawset(t, k, v)
end
t.__add = function(a, b)
return a
end
t.__call = function(...)
return ...
end
setmetatable(t, t)