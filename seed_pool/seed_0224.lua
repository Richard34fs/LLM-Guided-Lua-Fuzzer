local t = {}
t.__index = function(self) return self end
t.__newindex = function(self, k, v) rawset(self, k, v) end
t.__add = function(self, other) return setmetatable({}, getmetatable(self)) end
t.__call = function(self, ...) return self end
local mt = {}
mt.__index = t
setmetatable(t, mt)