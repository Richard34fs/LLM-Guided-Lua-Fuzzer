local t = {}
t.__index = t
t.__newindex = function() end
setmetatable(t, t)
t.__add = function(a, b) return a end
t.__call = function(self, ...) self(...) end