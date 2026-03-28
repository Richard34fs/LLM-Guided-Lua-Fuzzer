local a = {}
local b = {}
a.__index = function(t, k) return b[k] end
b.__index = function(t, k) return a[k] end
a.__newindex = function(t, k, v) b[k] = v end
b.__newindex = function(t, k, v) a[k] = v end
a.__add = function(t, other) return setmetatable({}, getmetatable(t)) end
a.__call = function(t, ...) return t.__add(t, ...) end