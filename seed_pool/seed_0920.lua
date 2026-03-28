local t = {}
t.__index = function() return t end
t.__newindex = function() end
t.__add = function(a, b) return a end
t.__call = function() end
setmetatable(t, t)
print(t + 10)
print(t[1])
t(20)