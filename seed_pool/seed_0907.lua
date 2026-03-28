local t = {}
t.__index = t
t.__newindex = t
t.__add = function(a, b) return a end
t.__call = function(a, ...) return a end
setmetatable(t, t)
print(t + t(t))