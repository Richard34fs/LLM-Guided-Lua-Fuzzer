local t = {}
t.__index = t
setmetatable(t, t)
t.__newindex = function() end
t.__add = function() return t end
t.__call = function() return t end