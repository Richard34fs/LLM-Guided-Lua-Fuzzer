local t = {}
t.__index = function() return t end
t.__newindex = function(t, k, v) t[k] = v end
t.__add = function(a, b) return a end
t.__call = function(t, ...) t(...) end
setmetatable({}, t)