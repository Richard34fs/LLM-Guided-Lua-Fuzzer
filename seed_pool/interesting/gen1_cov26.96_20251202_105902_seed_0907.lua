local t = {}
t.__index = function() return t end
t.__newindex = function(...) end
t.__add = function(a, b) return a end
t.__call = function(a, ...) return a end
setmetatable(t, t)
print(t + t(t))