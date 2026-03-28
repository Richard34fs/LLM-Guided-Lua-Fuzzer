local mt = {}
mt.__index = function(t, k) error("ERROR_INJECTION") return t[k] end
mt.__newindex = function(t, k, v) error("ERROR_INJECTION") t[k] = v end
mt.__add = function(a, b) error("ERROR_INJECTION") return a .. b end
mt.__call = function(...) error("ERROR_INJECTION") return ... end
local t = {}
setmetatable(t, mt)