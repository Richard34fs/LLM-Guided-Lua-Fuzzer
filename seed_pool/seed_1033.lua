local mt = {}
mt.__index = mt
mt.__newindex = mt
mt.__add = function(a, b)
return a + a + b
end
mt.__call = function(t, ...)
return t
end
setmetatable(mt, mt)