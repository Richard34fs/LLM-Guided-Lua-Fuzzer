local t = {}
t.__index = function(t, k)
    return t[k]
end
t.__newindex = function(t, k, v)
    rawset(t, k, v)
end
t.__add = function(a, b)
    return a + b
end
t.__call = function(self, ...)
    return self(...)
end
setmetatable(t, {__index = t})