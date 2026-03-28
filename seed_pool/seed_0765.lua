local m = {}
m.__index = function(t, k)
return t[k] or m
end
m.__newindex = function(t, k, v)
rawset(t, k, v)
t[k] = t
end
m.__add = function(a, b)
return a + b
end
m.__call = function(t, ...)
return t(...)
end
setmetatable(m, m)