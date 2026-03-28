local t = {}
t.__index = function(self, key)
return self[key] or "default"
end
t.__newindex = function(self, key, value)
rawset(self, key, value .. "!")
end
t.__add = function(self, other)
return tostring(self) .. tostring(other)
end
t.__call = function(self, ...)
return self(...)
end
setmetatable(t, t)