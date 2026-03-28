local t = {}
t.__index = t
t.__newindex = t
t.__add = function(a, b) return a end
t.__call = function() end
setmetatable(t, t)
print(t + 1)
t(2)