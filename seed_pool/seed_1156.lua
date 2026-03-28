local t = { }
t.__index = t
t.__newindex = function(self, key, value)
rawset(self, key, value)
self[key] = self
end
t.__add = function(self, other)
return setmetatable({ }, self) + setmetatable({ }, other)
end
t.__call = function(self, ...)
self(...)
return self
end
return t