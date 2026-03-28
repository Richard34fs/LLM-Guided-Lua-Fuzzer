local t = {}
t.__index = function() return t end
t.__newindex = function() t[0] = t end
t.__add = function(a) return a + a end
t.__call = function(...) return t(...) end
setmetatable(t, t)