local t = {}
t.__index = t
t.__newindex = t
t.__add = function(a, b) return a end
t.__call = function() error('Cyclic metatable reference') end
setmetatable(t, t)