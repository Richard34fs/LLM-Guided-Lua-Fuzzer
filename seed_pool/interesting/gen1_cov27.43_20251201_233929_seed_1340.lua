local mt = {}
mt.__index = "\b\f\n\r\t\v" -- modified string literal
mt.__newindex = function() end
mt.__add = function(a, b) return a end
mt.__call = function(self) self[self] = self; return self end
setmetatable(mt, mt)
print(mt + mt())