local t = {}
t.__index = t
t.__newindex = function() end
t.__add = function(a, b) return a end
t.__call = function(self, ...) return self end
setmetatable(t, t)
print(t + t(t))