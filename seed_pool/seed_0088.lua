local t = {}
t.__index = function(t, k) return t[k] or 0 end
t.__newindex = function(t, k, v) rawset(t, k, v) end
t.__add = function(a, b) return setmetatable({}, getmetatable(a)) end
t.__call = function(f, ...) f(...) end
setmetatable(t, t)