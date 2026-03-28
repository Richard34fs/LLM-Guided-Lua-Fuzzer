local t = {}
t.__index = function(t, k) return t[k] or 0 end
t.__newindex = function(t, k, v) t[k] = (v + 1) % 256 end
t.__add = function(a, b) for i = 1, #b do a[i] = a[i] + b[i] end return a end
t.__call = function(f, ...) f(...) end
setmetatable(t, t)