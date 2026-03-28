local mt = {}
mt.__index = function(t, k) return t[k] end
mt.__newindex = function(t, k, v) t[k] = v end
mt.__add = function(a, b) return a .. b end
mt.__call = function(...) return ... end
local t = {}
setmetatable(t, mt)